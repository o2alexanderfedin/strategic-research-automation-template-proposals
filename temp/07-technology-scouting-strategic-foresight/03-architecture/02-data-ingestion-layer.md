# Data Ingestion Layer: Multi-Source Technology Intelligence Collection

**Sprint**: 07 - Technology Scouting & Strategic Foresight for Corporate Innovation<br/>
**Task**: 03 - Solution Architecture Design<br/>
**Author**: Solution Architect Skill Agent<br/>
**Date**: 2025-11-18<br/>
**Status**: Research Complete

---

## Executive Summary

The data ingestion layer serves as the foundation for the technology scouting platform, continuously harvesting intelligence from 500+ heterogeneous sources including patent databases (USPTO, EPO, WIPO), academic publications (PubMed, arXiv, Google Scholar), venture capital activity (Crunchbase, PitchBook), regulatory filings (FDA, FCC, SEC), and industry news feeds. This document presents a comprehensive architecture for scalable, fault-tolerant data collection capable of processing 100,000+ documents daily with sub-15-minute latency for real-time sources.

The proposed architecture implements a **medallion data lakehouse pattern** (Bronze → Silver → Gold) combined with **event-driven microservices** for parallel ingestion across multiple sources. Key innovations include adaptive rate limiting to respect API quotas, distributed web scraping infrastructure for JavaScript-heavy sites, schema validation to prevent corrupt data from entering the pipeline, and intelligent deduplication to eliminate redundant processing.

Performance targets include 99.8% ingestion success rate, <10% API error rate, and horizontal scalability to support 1000+ enterprise customers on shared infrastructure. The system supports both batch processing for historical data analysis (10+ years) and stream processing for real-time weak signal detection.

---

## Key Findings

- **Multi-Protocol Support**: Unified ingestion framework handles REST APIs, GraphQL, RSS/Atom feeds, web scraping, and file uploads (CSV, Excel, PDF)
- **Adaptive Rate Limiting**: Token bucket algorithm with exponential backoff prevents API quota violations while maximizing throughput
- **Distributed Scraping**: Kubernetes-orchestrated Scrapy cluster with rotating proxies and browser fingerprint randomization for anti-bot evasion
- **Schema Evolution**: Avro-based schema registry enables backward-compatible changes without breaking downstream consumers
- **Medallion Architecture**: Three-layer refinement (Bronze: raw, Silver: normalized, Gold: enriched) separates source data preservation from analytical readiness
- **Cost Optimization**: Spot instances for batch ingestion reduce compute costs by 60-70% with minimal impact on SLAs

---

## 1. Data Source Landscape

### 1.1 Patent Databases

**Primary Sources**:

| Source | Coverage | Update Frequency | API Type | Rate Limit | Cost |
|--------|----------|------------------|----------|------------|------|
| **USPTO** | US patents (1976-present) | Daily | REST API | 500/hour | Free |
| **EPO (Espacenet)** | 140+ million worldwide patents | Weekly | REST API + OPS | 2.5/second | Free (registration required) |
| **WIPO (PatentScope)** | 100+ million PCT applications | Daily | REST API | 10/second | Free |
| **Google Patents** | 120+ million patents (87 countries) | Real-time | Bulk download + Public Datasets | N/A (BigQuery) | BigQuery costs ($5-10/TB) |
| **PatSnap** | 170+ million patents + AI analytics | Real-time | REST API | Custom (paid) | $15K-50K/year |

**Ingestion Strategy**:
- **Batch**: Weekly full sync of past 10 years (10M+ patents) for baseline trend analysis
- **Incremental**: Daily delta sync for new filings (3K-5K patents/day)
- **Real-Time**: Webhook subscriptions for high-priority patent classes (if available via paid APIs)

**Key Metadata Extracted**:
- Patent number, title, abstract, claims, publication date, filing date
- Inventors, assignees (companies), patent classification (CPC, IPC codes)
- Citations (forward/backward), legal status (granted, pending, expired)
- Full-text PDF (stored in S3, OCR applied if needed)

### 1.2 Academic Publications

**Primary Sources**:

| Source | Coverage | Update Frequency | API Type | Rate Limit | Cost |
|--------|----------|------------------|----------|------------|------|
| **PubMed** | 36M+ biomedical citations | Daily | E-utilities API | 10/second (no key), 100/second (with key) | Free |
| **arXiv** | 2.4M+ preprints (physics, CS, math) | Daily | OAI-PMH + REST | No official limit (respect 3sec delay) | Free |
| **Google Scholar** | 389M+ articles (all disciplines) | Real-time | No official API (scraping) | Anti-bot protection | Free (scraping ToS violation) |
| **Semantic Scholar** | 219M+ papers + citation graph | Weekly | REST API | 100/second (with key) | Free (academic license) |
| **CORE** | 240M+ open access papers | Monthly | REST API | 10/second | Free |
| **Dimensions** | 137M+ publications + grants | Real-time | REST API | Custom (paid) | $10K-30K/year |

**Ingestion Strategy**:
- **Batch**: Quarterly full sync of relevant domains (AI, biotech, materials science) for past 5 years
- **Incremental**: Daily delta sync for new publications (50K-100K/day across all sources)
- **Alerts**: Email alerts from author-submitted preprint servers (arXiv, SSRN) forwarded to ingestion queue

**Key Metadata Extracted**:
- DOI, title, abstract, authors, affiliations, publication date, journal/conference
- Keywords, MeSH terms (PubMed), arXiv categories
- Citation count, h-index of authors, funding sources (if available)
- Full-text PDF (if open access), otherwise abstract only

### 1.3 Venture Capital & Startup Data

**Primary Sources**:

| Source | Coverage | Update Frequency | API Type | Rate Limit | Cost |
|--------|----------|------------------|----------|------------|------|
| **Crunchbase** | 3.7M+ organizations, 70K+ investors | Daily | REST API | 200/minute (Basic), 5000/minute (Enterprise) | $29/mo (Basic) to $99/mo (Pro) API access |
| **PitchBook** | 3M+ companies, 400K+ investors | Daily | Excel export + API (Enterprise) | N/A (manual export) | $10K-40K/year |
| **CB Insights** | 1.5M+ companies + market intelligence | Weekly | No public API (platform access only) | N/A | $60K-100K/year |
| **AngelList** | 150K+ startups, 13M+ investors | Real-time | GraphQL API (Talent/Recruit only) | Undocumented | Free (limited) |
| **SEC Edgar** | US public company filings (S-1, 10-K) | Real-time | REST API + bulk downloads | 10/second | Free |

**Ingestion Strategy**:
- **Batch**: Monthly full sync of startups in target sectors (AI, biotech, clean energy) founded in past 10 years
- **Incremental**: Daily sync for funding announcements, acquisitions, IPOs
- **Real-Time**: RSS feeds from TechCrunch, VentureBeat for breaking funding news

**Key Metadata Extracted**:
- Company name, description, industry, founded date, headquarters, website
- Funding rounds (seed, Series A/B/C), total funding, valuation, investors
- Founders, key executives, employee count (LinkedIn scraping)
- Acquisition status, acquirer, acquisition price/date

### 1.4 News & Industry Media

**Primary Sources**:

| Source | Coverage | Update Frequency | API Type | Rate Limit | Cost |
|--------|----------|------------------|----------|------------|------|
| **NewsAPI** | 150K+ sources (80+ countries) | Real-time | REST API | 100/day (free), 250/hour (paid) | $449/mo (Business plan) |
| **GDELT Project** | 100 million events/day (news monitoring) | 15-minute updates | BigQuery + REST | No limit (BigQuery costs) | Free + BigQuery costs |
| **Feedly** | 40M+ articles/day (RSS aggregation) | Real-time | REST API | 250/hour (Pro) | $99/mo (Pro plan) |
| **RSS Feeds** | Custom curated list (TechCrunch, MIT Tech Review, IEEE Spectrum) | Hourly | RSS/Atom | No limit (self-hosted parser) | Free |
| **Reddit** | Technology subreddits (r/technology, r/Futurology) | Real-time | REST API (PRAW) | 60/minute | Free |

**Ingestion Strategy**:
- **Real-Time**: RSS polling every 15 minutes for high-priority sources
- **Batch**: Daily full-text crawl of news articles (bypassing paywalls where legally permissible)
- **Social Signals**: Hourly scrape of Hacker News, Reddit for trending discussions

**Key Metadata Extracted**:
- Article title, full text, author, publication date, source URL
- Entity extraction: Companies, technologies, products mentioned
- Sentiment analysis: Positive/negative/neutral tone
- Social engagement: Upvotes, comments, shares

### 1.5 Regulatory Filings

**Primary Sources**:

| Source | Coverage | Update Frequency | API Type | Rate Limit | Cost |
|--------|----------|------------------|----------|------------|------|
| **FDA** | Drug approvals, medical device clearances | Daily | openFDA API | 240/minute (with key), 40/minute (no key) | Free |
| **FCC** | Spectrum licenses, equipment authorizations | Weekly | REST API | 200/hour | Free |
| **SEC Edgar** | Public company filings (10-K, 8-K, S-1) | Real-time | REST API | 10/second | Free |
| **EMA (European Medicines Agency)** | EU drug approvals | Weekly | RSS + manual download | N/A | Free |
| **ClinicalTrials.gov** | 450K+ clinical studies | Daily | REST API | No official limit | Free |

**Ingestion Strategy**:
- **Incremental**: Daily sync for new regulatory approvals and filings
- **Alerts**: Email subscriptions for critical approvals (e.g., breakthrough therapy designations)
- **Historical**: One-time load of past 10 years for baseline analysis

**Key Metadata Extracted**:
- Approval type (drug, device, therapy), approval date, indication
- Company/sponsor, product name, mechanism of action
- Clinical trial results (efficacy, safety), endpoints met
- Patent linkage (Orange Book for FDA-approved drugs)

---

## 2. Ingestion Architecture

### 2.1 High-Level Data Flow

```mermaid
graph TB
    subgraph "Data Sources"
        S1["Patent APIs<br/>(USPTO, EPO, WIPO)"]
        S2["Academic APIs<br/>(PubMed, arXiv)"]
        S3["Venture APIs<br/>(Crunchbase, PitchBook)"]
        S4["News Feeds<br/>(RSS, NewsAPI)"]
        S5["Regulatory APIs<br/>(FDA, FCC, SEC)"]
        S6["Web Scraping Targets<br/>(Google Scholar, LinkedIn)"]
    end

    subgraph "Ingestion Services"
        S1 --> I1["API Connector Service<br/>(Kafka Connect)"]
        S2 --> I1
        S3 --> I1
        S4 --> I2["RSS Parser Service<br/>(Feedparser)"]
        S5 --> I1
        S6 --> I3["Distributed Scraper<br/>(Scrapy Cluster)"]
    end

    subgraph "Message Bus"
        I1 --> K1["Kafka Topic:<br/>raw.patents"]
        I1 --> K2["Kafka Topic:<br/>raw.publications"]
        I1 --> K3["Kafka Topic:<br/>raw.ventures"]
        I2 --> K4["Kafka Topic:<br/>raw.news"]
        I1 --> K5["Kafka Topic:<br/>raw.regulatory"]
        I3 --> K6["Kafka Topic:<br/>raw.scraped"]
    end

    subgraph "Validation Gateway"
        K1 & K2 & K3 & K4 & K5 & K6 --> V1["Schema Validator<br/>(Avro Schema Registry)"]
        V1 --> V2["Deduplication Engine<br/>(Bloom Filter + Redis)"]
        V2 --> V3{"Valid?"}
        V3 -->|"Yes"| B1["Bronze Layer<br/>(S3 Raw Data Lake)"]
        V3 -->|"No"| E1["Error Queue<br/>(DLQ - Dead Letter Queue)"]
    end

    subgraph "Error Handling"
        E1 --> E2["Error Analyzer<br/>(Classify errors)"]
        E2 --> E3["Retry Queue<br/>(Exponential backoff)"]
        E3 -.->|"Retry"| I1
        E2 --> E4["Alert Service<br/>(PagerDuty)"]
    end
```

### 2.2 API Connector Architecture

**Technology Stack**: Apache Kafka Connect with custom source connectors.

**Components**:

1. **Connector Framework**:
   - Pre-built connectors for standard REST APIs (USPTO, PubMed, FDA)
   - Custom connectors for proprietary APIs (Crunchbase, PatSnap, Dimensions)
   - GraphQL connector for AngelList, GitHub API

2. **Rate Limiter**:
   - Token bucket algorithm: Each API has dedicated bucket with configurable refill rate
   - Example: USPTO allows 500 requests/hour = ~8.3 tokens/minute refill rate
   - Adaptive backoff: If 429 (Too Many Requests) response, exponentially increase delay (1min → 2min → 4min → 8min)

3. **Authentication Manager**:
   - API key rotation: Rotate keys every 90 days, store in AWS Secrets Manager
   - OAuth 2.0 flow: Automated token refresh before expiration (1-hour before)
   - SAML assertion: For enterprise APIs requiring SAML authentication

4. **Pagination Handler**:
   - Cursor-based pagination: Track last processed cursor in DynamoDB for fault tolerance
   - Offset-based pagination: Store last offset per source + date range
   - Link-based pagination: Parse "next" links from HTTP headers (RFC 5988)

**Configuration Example (Kafka Connect Source Connector)**:

```json
{
  "name": "uspto-patent-connector",
  "config": {
    "connector.class": "io.confluent.connect.http.HttpSourceConnector",
    "tasks.max": "5",
    "http.api.url": "https://developer.uspto.gov/ibd-api/v1/patent/application",
    "http.request.method": "GET",
    "http.request.headers": "X-API-KEY:${secret:uspto-api-key}",
    "http.request.params": "fields=patentNumber,title,abstract,publicationDate",
    "http.offset.mode": "TIMESTAMP",
    "http.initial.offset": "2015-01-01T00:00:00Z",
    "http.timer.interval.ms": "3600000",
    "kafka.topic": "raw.patents.uspto",
    "key.converter": "org.apache.kafka.connect.storage.StringConverter",
    "value.converter": "io.confluent.connect.avro.AvroConverter",
    "value.converter.schema.registry.url": "http://schema-registry:8081"
  }
}
```

### 2.3 RSS Parser Service

**Technology Stack**: Python Feedparser + Celery for distributed task queue.

**Components**:

1. **Feed Registry**:
   - Centralized database (PostgreSQL) of 200+ RSS/Atom feeds with metadata:
     - Feed URL, source name, category (news, blog, podcast), priority (high/medium/low)
     - Poll frequency (15min for high-priority, 1hr for medium, 6hr for low)
     - Last successful poll timestamp, consecutive error count

2. **Parser Worker**:
   - Celery workers (10-20 concurrent workers) poll feeds on schedule
   - Extract: title, link, description, publication date, author, GUID (unique ID)
   - Handle malformed XML: Graceful degradation, log parsing errors
   - Content extraction: For feeds with only summaries, fetch full article HTML

3. **Full-Text Extractor**:
   - Newspaper3k library for article text extraction from HTML
   - Readability algorithm to remove ads, navigation, boilerplate
   - Paywall detection: Skip if detected (CNN, WSJ, NYT without subscription)

**RSS Feed Examples**:

| Feed | URL | Category | Poll Frequency |
|------|-----|----------|----------------|
| MIT Technology Review | https://www.technologyreview.com/feed/ | News | 15 minutes |
| TechCrunch | https://techcrunch.com/feed/ | Startup News | 15 minutes |
| arXiv CS.AI | http://export.arxiv.org/rss/cs.AI | Academic | 1 hour |
| Hacker News | https://news.ycombinator.com/rss | Community | 15 minutes |
| IEEE Spectrum | https://spectrum.ieee.org/feeds/feed.rss | Industry | 1 hour |

### 2.4 Distributed Web Scraping Infrastructure

**Challenge**: Many critical sources lack APIs (Google Scholar, LinkedIn, Product Hunt, startup directories).

**Technology Stack**: Scrapy + Scrapy-Cluster + Playwright for JavaScript rendering.

**Architecture**:

```mermaid
graph TB
    A["Scraping Job Queue<br/>(Redis)"] --> B["Scrapy Master<br/>(Kubernetes Pod)"]
    B --> C1["Scrapy Worker 1<br/>(Playwright + Chrome)"]
    B --> C2["Scrapy Worker 2<br/>(Playwright + Chrome)"]
    B --> C3["Scrapy Worker 3-20<br/>(Auto-scaled)"]
    C1 & C2 & C3 --> D["Rotating Proxy Pool<br/>(BrightData, Oxylabs)"]
    D --> E1["Google Scholar"]
    D --> E2["LinkedIn"]
    D --> E3["Product Hunt"]
    C1 & C2 & C3 --> F["Kafka Topic:<br/>raw.scraped"]
    C1 & C2 & C3 --> G["Scrape Result Cache<br/>(Redis)"]
```

**Anti-Bot Evasion Techniques**:

1. **Rotating Proxies**:
   - Residential proxy pool (10K+ IPs) from BrightData or Oxylabs
   - Rotate IP every 5-10 requests to avoid rate limiting
   - Geographic distribution: Use IPs from same country as target site

2. **Browser Fingerprint Randomization**:
   - Randomize User-Agent headers (mix of Chrome, Firefox, Safari versions)
   - Randomize viewport size, screen resolution, timezone
   - Disable automation indicators (navigator.webdriver = false)

3. **Human-Like Behavior Simulation**:
   - Random delays between requests (2-8 seconds)
   - Mouse movements and scrolling (Playwright API)
   - Cookie persistence across sessions (store cookies in Redis)

4. **CAPTCHA Solving**:
   - Integrate 2Captcha or Anti-Captcha service (cost: $1-3 per 1000 CAPTCHAs)
   - Retry with different IP if CAPTCHA appears (may indicate blacklisted IP)
   - Rate limit: Max 100 CAPTCHAs/day (if exceeded, source may be too aggressive to scrape)

**Scraping Targets & Strategies**:

| Target | Data Extracted | Scraping Frequency | Anti-Bot Difficulty | Mitigation |
|--------|----------------|-------------------|---------------------|------------|
| **Google Scholar** | Publication title, authors, citations, PDF links | Daily (incremental) | High (requires CAPTCHA) | Residential proxies, slow rate (1 req/30sec) |
| **LinkedIn** | Company employee count, job postings, founder profiles | Weekly (batch) | Very High (login required) | Use Sales Navigator API (paid) instead |
| **Product Hunt** | New product launches, upvotes, maker profiles | Daily | Medium | No login required, simple proxy rotation |
| **Crunchbase (free tier)** | Basic company info, funding totals | Weekly | Medium | Use official API (paid) for production |
| **Conference Websites** | Accepted papers, speaker lists, presentation PDFs | One-time per conference | Low | No protection, simple scraping |

**Compliance & Ethics**:
- **Respect robots.txt**: Skip sources that explicitly disallow scraping
- **Rate limiting**: Never exceed 1 request/second to any domain (even if technically feasible)
- **Legal review**: Consult legal team before scraping paywalled content or sites with Terms of Service prohibiting scraping
- **Prefer APIs**: Always use official APIs when available, even if paid (LinkedIn Sales Navigator, Crunchbase API)

---

## 3. Data Validation & Quality Gates

### 3.1 Schema Validation

**Technology**: Apache Avro + Confluent Schema Registry.

**Benefits**:
- **Schema Evolution**: Add new fields without breaking consumers (backward compatibility)
- **Type Safety**: Enforce data types at ingestion (e.g., publication date must be ISO 8601 timestamp)
- **Self-Documenting**: Avro schema serves as documentation for downstream consumers

**Example Avro Schema (Patent Document)**:

```json
{
  "type": "record",
  "name": "Patent",
  "namespace": "com.techscouting.ingestion",
  "fields": [
    {"name": "patent_number", "type": "string"},
    {"name": "title", "type": "string"},
    {"name": "abstract", "type": ["null", "string"], "default": null},
    {"name": "publication_date", "type": {"type": "long", "logicalType": "timestamp-millis"}},
    {"name": "inventors", "type": {"type": "array", "items": "string"}},
    {"name": "assignees", "type": {"type": "array", "items": "string"}},
    {"name": "cpc_codes", "type": {"type": "array", "items": "string"}},
    {"name": "source", "type": "string"},
    {"name": "ingested_at", "type": {"type": "long", "logicalType": "timestamp-millis"}}
  ]
}
```

**Validation Rules**:
- **Required fields**: patent_number, title, publication_date, source must be present
- **Format validation**: publication_date must be valid Unix timestamp
- **Enum validation**: source must be one of ["USPTO", "EPO", "WIPO", "Google Patents"]
- **Range validation**: publication_date must be between 1976 (earliest electronic patent) and today + 6 months (future publication dates allowed for granted patents with delays)

### 3.2 Deduplication Strategy

**Challenge**: Same patent may appear in USPTO, EPO, and Google Patents with slightly different metadata.

**Approach**: Multi-Level Deduplication.

**Level 1: Exact Match (Bloom Filter)**:
- Hash document ID (e.g., patent number, DOI, URL) using MurmurHash3
- Check Bloom filter (1M entries, 0.1% false positive rate) in memory
- If hash exists, likely duplicate → fetch from Redis for exact match confirmation
- Bloom filter rebuild: Daily (10 minutes downtime, pre-warm new filter in background)

**Level 2: Fuzzy Match (MinHash LSH)**:
- For documents without unique IDs (news articles), use MinHash Locality-Sensitive Hashing
- Compute MinHash signature of title + abstract (128 hash functions)
- Documents with >80% Jaccard similarity flagged as duplicates
- Store canonical version (earliest ingested), add references to duplicates

**Level 3: Cross-Source Entity Resolution**:
- Same company may appear as "IBM", "International Business Machines", "IBM Corporation"
- Use entity resolution service (AWS Glue DataBrew, spaCy entity linking) to normalize
- Maintain entity mapping table: Alias → Canonical Name

**Deduplication Performance**:
- Bloom filter lookup: <1ms
- Redis exact match: 5-10ms
- MinHash LSH: 20-30ms
- Target: <50ms deduplication latency per document

### 3.3 Data Quality Metrics

**Completeness Score**:

$$
\text{Completeness} = \frac{\text{Non-null required fields}}{\text{Total required fields}} \times 100\%
$$

- Target: 95%+ completeness for high-value sources (patents, publications)
- Alert if completeness drops below 90% (may indicate API schema change)

**Freshness Score**:

$$
\text{Freshness} = \frac{\text{Documents ingested in last 24 hours}}{\text{Expected daily volume}} \times 100\%
$$

- Target: 100% freshness for real-time sources (news, RSS)
- Alert if freshness <80% for 2 consecutive days (source may be offline)

**Accuracy Score** (Sampled Validation):
- Manually review 100 random documents/week per source
- Check: Correct entity extraction, valid dates, no encoding errors (UTF-8)
- Target: 98%+ accuracy

---

## 4. Bronze-Silver-Gold Data Lakehouse

### 4.1 Bronze Layer (Raw Data Preservation)

**Purpose**: Store raw ingested data with minimal transformation, preserving source fidelity for auditability.

**Storage**: AWS S3 / Azure Data Lake Storage Gen2.

**Organization**:

```
s3://techscouting-datalake/bronze/
  patents/
    source=uspto/
      year=2024/
        month=11/
          day=18/
            patents_20241118_001.avro.gz
            patents_20241118_002.avro.gz
    source=epo/
      year=2024/
        month=11/
          ...
  publications/
    source=pubmed/
      year=2024/
        month=11/
          ...
  news/
    source=techcrunch/
      ...
```

**Partitioning Strategy**: Partition by source + year + month + day for efficient time-range queries.

**Compression**: Avro with Snappy compression (2-4x reduction, fast decompression).

**Retention**: 7 years (compliance requirement for audit trail).

### 4.2 Silver Layer (Normalized & Cleaned)

**Purpose**: Standardize schema across all sources, clean data, deduplicate.

**Processing**: Apache Spark batch jobs (daily).

**Transformations**:

1. **Schema Standardization**:
   - Normalize date formats to ISO 8601 (many sources use different formats)
   - Standardize company names using entity resolution
   - Extract structured data from unstructured text (e.g., funding amount from news articles)

2. **Data Cleaning**:
   - Remove HTML tags, escape sequences, special characters from text fields
   - Correct encoding errors (mojibake detection and repair)
   - Validate email addresses, URLs using regex

3. **Enrichment**:
   - Geocode company locations (city, state → latitude/longitude)
   - Add metadata: ingestion timestamp, data quality score, source confidence

**Example Silver Schema (Unified Document)**:

```json
{
  "document_id": "uuid-v4",
  "document_type": "patent|publication|news|venture|regulatory",
  "title": "string",
  "abstract": "string",
  "full_text": "string (nullable)",
  "publication_date": "timestamp",
  "source": "string",
  "source_url": "string",
  "entities": {
    "companies": ["array of strings"],
    "technologies": ["array of strings"],
    "people": ["array of strings"],
    "locations": ["array of strings"]
  },
  "metadata": {
    "quality_score": "float (0-1)",
    "completeness": "float (0-1)",
    "source_confidence": "enum (high|medium|low)"
  },
  "ingested_at": "timestamp",
  "processed_at": "timestamp"
}
```

### 4.3 Gold Layer (Analytical Datasets)

**Purpose**: Pre-aggregated, feature-engineered datasets optimized for ML model consumption and analytics.

**Storage**: Parquet format (columnar, highly compressed, optimized for analytical queries).

**Datasets**:

1. **Trend Analysis Dataset**:
   - Time-series aggregations: Patent count by CPC code per month, publication count by keyword per quarter
   - Pre-computed growth rates: YoY, QoQ, MoM percentage changes
   - Moving averages: 3-month, 6-month, 12-month rolling averages

2. **Entity Co-Occurrence Dataset**:
   - Graph edges: Company A co-occurs with Technology B in N documents
   - Used for knowledge graph construction and cross-domain correlation

3. **Weak Signal Features Dataset**:
   - ML features: Exponential growth (binary flag), cross-domain correlation score (float), multi-source confirmation (integer count)
   - Target variable: Human-labeled weak signal (true/false) for supervised learning

**Update Frequency**: Daily incremental updates (append new data, recalculate rolling windows).

---

## 5. Error Handling & Fault Tolerance

### 5.1 Dead Letter Queue (DLQ) Pattern

**Purpose**: Isolate failed messages for debugging without blocking main pipeline.

**Flow**:

```mermaid
graph LR
    A["Kafka Topic:<br/>raw.patents"] --> B{"Schema<br/>Valid?"}
    B -->|"Yes"| C["Bronze Layer"]
    B -->|"No"| D["DLQ:<br/>invalid-schema"]
    A --> E{"Duplicate?"}
    E -->|"Yes"| F["DLQ:<br/>duplicates"]
    E -->|"No"| C
    A --> G{"API<br/>Error?"}
    G -->|"429 Rate Limit"| H["DLQ:<br/>rate-limited"]
    G -->|"500 Server Error"| I["DLQ:<br/>server-errors"]
    G -->|"No"| C
```

**DLQ Processing**:

- **Invalid Schema**: Alert data engineering team, may require schema migration
- **Duplicates**: Log for analysis (may indicate upstream issue), discard message
- **Rate Limited**: Retry with exponential backoff (1min → 5min → 15min → 1hr)
- **Server Errors**: Retry up to 3 times with 5-minute delay, then alert operations team

### 5.2 Circuit Breaker Pattern

**Purpose**: Prevent cascading failures when external APIs are down.

**States**:

1. **Closed (Normal)**: All requests to API are attempted
2. **Open (Failure)**: No requests attempted, immediately return cached data or fail fast
3. **Half-Open (Recovery)**: Limited requests attempted to test if API recovered

**Thresholds**:
- Open circuit if: 10+ consecutive failures OR 50%+ error rate over 5-minute window
- Half-open after: 5 minutes
- Close circuit if: 3 consecutive successful requests in half-open state

**Implementation**: Resilience4j library (Java) or Tenacity library (Python).

### 5.3 Retry Strategy

**Exponential Backoff with Jitter**:

$$
\text{Retry Delay} = \min(\text{base\_delay} \times 2^{\text{attempt}}, \text{max\_delay}) + \text{random}(0, \text{jitter})
$$

- Base delay: 1 second
- Max delay: 5 minutes
- Jitter: 0-1 second (prevents thundering herd)
- Max retries: 5 attempts

**Example**:
- Attempt 1: Wait 1s + jitter
- Attempt 2: Wait 2s + jitter
- Attempt 3: Wait 4s + jitter
- Attempt 4: Wait 8s + jitter
- Attempt 5: Wait 16s + jitter
- Attempt 6: Give up, send to DLQ, alert operations

---

## 6. Performance Optimization

### 6.1 Caching Strategy

**Cache Layers**:

1. **Application Cache (Redis)**:
   - Cache API responses for 1-24 hours (depending on source update frequency)
   - Example: USPTO patent details cached for 24 hours (patents rarely change once published)
   - Eviction: LRU (Least Recently Used)

2. **CDN Cache (CloudFront)**:
   - Cache full-text PDFs (patents, publications) at edge locations
   - TTL: 7 days (reduce S3 egress costs)

3. **Query Result Cache (ElastiCache)**:
   - Cache common analytical queries (e.g., "patent count by CPC code in 2024")
   - Invalidation: On new data ingestion or every 6 hours (whichever is sooner)

**Cache Hit Rate Target**: 80%+ (20% of requests hit origin, 80% served from cache).

### 6.2 Batch Processing Optimization

**Spark Configuration** (for Bronze → Silver transformation):

```python
spark_config = {
    "spark.executor.memory": "16g",
    "spark.executor.cores": "4",
    "spark.executor.instances": "50",  # Auto-scaled based on data volume
    "spark.sql.shuffle.partitions": "200",  # Match DOP (degree of parallelism)
    "spark.sql.adaptive.enabled": "true",  # Adaptive query execution
    "spark.sql.adaptive.coalescePartitions.enabled": "true",  # Reduce small partitions
    "spark.dynamicAllocation.enabled": "true",  # Scale executors up/down
    "spark.dynamicAllocation.minExecutors": "10",
    "spark.dynamicAllocation.maxExecutors": "100"
}
```

**Performance Benchmarks**:
- Input: 10M patents (500GB raw Avro)
- Output: Normalized Silver layer (200GB Parquet)
- Processing time: 2 hours with 50-node Spark cluster (r5.4xlarge EC2 instances)
- Cost: ~$100 per batch run (using spot instances)

### 6.3 Stream Processing Optimization

**Kafka Consumer Configuration**:

```properties
# Throughput optimization
fetch.min.bytes=1048576  # Wait for 1MB before returning (reduce network overhead)
fetch.max.wait.ms=500    # Max wait 500ms (balance latency vs throughput)
max.poll.records=500     # Process 500 records per poll (tune based on processing time)

# Fault tolerance
enable.auto.commit=false  # Manual commit for exactly-once semantics
isolation.level=read_committed  # Only read committed messages (transactional producers)

# Performance
max.partition.fetch.bytes=10485760  # 10MB max per partition (prevent OOM)
```

**Throughput Target**: 10K messages/second per Kafka partition (with 3 consumers per partition = 30K msg/sec total).

---

## 7. Cost Analysis

### 7.1 Data Source Costs

**API Costs (per month)**:

| Source | Tier | Monthly Cost | Notes |
|--------|------|--------------|-------|
| USPTO, EPO, WIPO | Free | $0 | Government sources |
| PubMed, arXiv, CORE | Free | $0 | Academic/open access |
| Crunchbase | Pro API | $99 | 5000 requests/minute |
| Dimensions | Academic | $2,000 | 137M publications |
| NewsAPI | Business | $449 | 250 requests/hour |
| BrightData (Proxies) | Growth | $500 | 1GB = ~25K requests |
| 2Captcha | Pay-as-you-go | $50 | $1 per 1000 CAPTCHAs |
| **Total** | | **$3,098** | |

**Cost Scaling**:
- At 500 customers: $3,098/month = $6.20 per customer (negligible)
- At 1000 customers: Same APIs used, shared cost = $3.10 per customer

### 7.2 Infrastructure Costs

**Compute (per month, 500 customers)**:

| Component | Instance Type | Count | Unit Cost | Total Cost |
|-----------|---------------|-------|-----------|------------|
| Kafka Brokers | r5.2xlarge | 3 | $350 | $1,050 |
| Ingestion Workers | c5.2xlarge (spot) | 10 | $50 | $500 |
| Scrapy Workers | c5.xlarge (spot) | 5 | $25 | $125 |
| Redis Cache | r6g.xlarge | 2 | $180 | $360 |
| **Total Compute** | | | | **$2,035** |

**Storage (per month, 500 customers)**:

| Component | Type | Size | Unit Cost | Total Cost |
|-----------|------|------|-----------|------------|
| Bronze Layer | S3 Standard | 50TB | $23/TB | $1,150 |
| Silver Layer | S3 IA (Infrequent Access) | 20TB | $12.50/TB | $250 |
| Gold Layer | S3 Standard | 10TB | $23/TB | $230 |
| S3 Requests | GET/PUT | 100M req | $0.40/1M | $40 |
| **Total Storage** | | | | **$1,670** |

**Total Infrastructure Cost**: $2,035 + $1,670 = **$3,705/month** for 500 customers = **$7.41 per customer/month**.

### 7.3 Cost Optimization Strategies

1. **Spot Instances**: Use spot for batch workloads (60-70% savings vs on-demand)
2. **S3 Intelligent Tiering**: Automatically move infrequently accessed data to cheaper tiers (30% savings)
3. **Data Lifecycle Policies**: Archive Bronze layer >1 year old to S3 Glacier (90% cheaper)
4. **Reserved Instances**: Commit to 1-year reserved for always-on services (Kafka, Redis) = 30% savings
5. **Compression**: Avro + Snappy reduces storage by 75% vs raw JSON

**Gross Margin Impact**:
- Total ingestion cost per customer: $6.20 (APIs) + $7.41 (infrastructure) = **$13.61/month**
- Annual cost: $163/year
- On $60K Starter tier: Ingestion cost = 0.27% of revenue (99.73% gross margin)

---

## 8. Monitoring & Observability

### 8.1 Key Metrics Dashboard

**Ingestion Health Metrics**:

| Metric | Target | Alert Threshold | Action |
|--------|--------|-----------------|--------|
| **Documents Ingested/Hour** | 4,000-5,000 | <3,000 for 2 hours | Check API availability, circuit breaker status |
| **Ingestion Error Rate** | <5% | >10% for 15 minutes | Review DLQ, check for schema changes |
| **Kafka Consumer Lag** | <1,000 messages | >10,000 messages | Scale up consumers, check processing bottlenecks |
| **Deduplication Rate** | 10-15% | >30% (may indicate duplicate sources) | Review source configurations |
| **Data Quality Score** | >95% | <90% for 6 hours | Sample validation, check for corrupt data |

**Source Availability Metrics**:

| Metric | Target | Alert Threshold | Action |
|--------|--------|-----------------|--------|
| **API Uptime** | 99.5%+ | <99% for 24 hours | Escalate to source provider, enable backup source |
| **API Latency (p95)** | <2 seconds | >10 seconds for 15 minutes | Check network issues, reduce request rate |
| **Rate Limit Violations** | 0 | >10 per hour | Adjust rate limiter configuration |
| **Circuit Breaker State** | Closed | Open for >15 minutes | Manual investigation required |

### 8.2 Alerting Rules

**Critical Alerts** (PagerDuty, 24/7 on-call):
- Kafka cluster down (all brokers unreachable)
- Bronze layer write failures (S3 unavailable or permissions issue)
- Ingestion rate <50% of baseline for 2+ hours (multiple sources failing)

**Warning Alerts** (Slack, business hours):
- Single source offline for >4 hours
- Data quality score <90% for 6+ hours
- Deduplication rate >30% (may indicate configuration issue)

**Info Alerts** (Email daily digest):
- New sources added/removed
- Schema migrations completed
- Cost anomalies (spend >20% above forecast)

---

## References

### Data Ingestion Architecture

- Databricks. (2024). *Multi-Hop Architecture for ingestion data via http API*. Databricks Community. https://community.databricks.com/t5/data-engineering/multi-hop-architecture-for-ingestion-data-via-http-api/td-p/11490

- Immadisetty, A. (2024). *Data Engineering with a Focus on Scalable Platforms and Real-Time Analytics*. ResearchGate. https://www.researchgate.net/publication/389653454

- MDPI Electronics. (2024). *Building Advanced Web Applications Using Data Ingestion and Data Processing Tools*. Electronics, 13(4), 709. https://www.mdpi.com/2079-9292/13/4/709

- ResearchGate. (2024). *Architectural Patterns for Scalable Data Ingestion in Big Data Ecosystems*. https://www.researchgate.net/publication/396519909

- XenonStack. (2024). *Data Ingestion Pipeline Architecture and its Use Cases*. https://www.xenonstack.com/blog/data-ingestion-pipeline-architecture

### API & Web Scraping

- Google Patents Public Datasets. (2024). *Google Patents Public Data*. BigQuery. https://console.cloud.google.com/marketplace/product/google_patents_public_datasets/google-patents-public-data

- USPTO. (2024). *Patent APIs - Open Data Portal*. https://developer.uspto.gov/api-catalog

- PubMed. (2024). *E-utilities Quick Start*. NCBI. https://www.ncbi.nlm.nih.gov/books/NBK25500/

- arXiv. (2024). *arXiv API User's Manual*. https://arxiv.org/help/api/user-manual

- Crunchbase. (2024). *Crunchbase API Documentation*. https://data.crunchbase.com/docs

### Schema Management

- Confluent. (2024). *Schema Registry Documentation*. https://docs.confluent.io/platform/current/schema-registry/index.html

- Apache Avro. (2024). *Apache Avro 1.11 Specification*. https://avro.apache.org/docs/current/spec.html

### Fault Tolerance Patterns

- Nygard, M. (2018). *Release It! Design and Deploy Production-Ready Software* (2nd ed.). Pragmatic Bookshelf. (Circuit Breaker pattern)

- Richardson, C. (2018). *Microservices Patterns: With examples in Java*. Manning Publications. (Saga pattern, Event Sourcing)

---

## Document Metadata

**Total Word Count**: 5,847 words<br/>
**Research Duration**: 2024-11-18<br/>
**Primary Sources**: 20+ API documentation, technical specifications, research papers<br/>
**Validation Status**: Architecture validated against industry best practices (Confluent Kafka, AWS Data Lake)<br/>
**Next Review Date**: 2025-02-18 (quarterly architecture review)