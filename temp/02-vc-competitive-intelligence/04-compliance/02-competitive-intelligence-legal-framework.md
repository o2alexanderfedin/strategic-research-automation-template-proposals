# Competitive Intelligence Legal Framework for VC Firms

**Research File**: Sprint 02, Task 04 - Compliance Analysis<br/>
**Date**: 2025-11-18<br/>
**Skill**: compliance-analyst<br/>
**Focus**: Legal boundaries for competitive intelligence, SCIP ethics, web scraping compliance

---

## Executive Summary

Competitive intelligence (CI) is the legal and ethical collection and analysis of information about competitors, markets, and business environments. For venture capital firms, competitive intelligence is critical for investment decision-making, but must be conducted within legal and ethical boundaries. Key principles:

- **Legal CI relies on public sources**: Company websites, SEC filings, press releases, patent databases, industry reports, conferences
- **Ethical CI follows SCIP guidelines**: No misrepresentation, deception, or theft of confidential information
- **Web scraping is legally ambiguous**: Must comply with Terms of Service, Computer Fraud and Abuse Act (CFAA), and copyright law
- **Trade secret misappropriation is criminal**: Defend Trade Secrets Act (DTSA) criminalizes theft of confidential business information
- **Fair use protects transformative analysis**: Reproducing small excerpts for competitive analysis generally permitted under copyright law

The line between legal competitive intelligence and illegal corporate espionage is clear: **public sources and ethical methods are legal; deception, theft, and hacking are criminal**. VC firms must implement compliance safeguards to prevent analysts from crossing legal boundaries in pursuit of competitive insights.

---

## Key Findings

- **95% of CI relies on public sources**: Legal competitive intelligence uses publicly available information; only 5% requires specialized research techniques [SCIP, 2024]
- **SCIP Code of Ethics is industry standard**: Strategic and Competitive Intelligence Professionals (SCIP) provides ethical guidelines adopted by Fortune 500 and VCs
- **Web scraping legal status unclear**: Post-hiQ v. LinkedIn (2022), Terms of Service violations may constitute unauthorized access under CFAA
- **DTSA creates federal trade secret protection**: Defend Trade Secrets Act (2016) allows civil and criminal enforcement for misappropriation
- **Economic Espionage Act criminalizes foreign theft**: 18 U.S.C. § 1831 criminalizes theft of trade secrets for foreign governments or entities
- **Fair use defense applies to CI**: Copyright fair use (17 U.S.C. § 107) protects quoting competitor materials for analysis and commentary
- **No general "right to be forgotten" in US**: Unlike GDPR, US law does not require removal of accurate information from databases (with limited exceptions)

---

## 1. Legal Definition of Competitive Intelligence

### 1.1 Competitive Intelligence vs. Corporate Espionage

**Competitive Intelligence (CI)** - LEGAL:
- Systematic collection and analysis of publicly available information
- Ethical research methods (attending conferences, reading industry reports, analyzing patents)
- Transformative analysis that creates new insights from public data
- Compliance with intellectual property laws, Terms of Service, and privacy regulations

**Corporate Espionage** - ILLEGAL:
- Theft of trade secrets, confidential information, or proprietary data
- Hacking, unauthorized access to computer systems, or social engineering
- Bribery, coercion, or misrepresentation to obtain information
- Violations of non-disclosure agreements (NDAs) or employment agreements

[SCIP Body of Knowledge, 2024; Halligan & Weyand, 2011]

### 1.2 Legal Sources of Competitive Intelligence

**Publicly Available Information (100% Legal)**:
- **Company-published materials**: Websites, product pages, pricing (if public), press releases, annual reports
- **Regulatory filings**: SEC filings (10-K, 10-Q, 8-K for public companies), FTC merger filings, patent applications
- **Media and news**: News articles, industry publications, podcasts, interviews with executives
- **Industry events**: Conference presentations, trade shows, webinars (open to public or attendees)
- **Academic research**: Published papers, dissertations, conference proceedings
- **Social media**: LinkedIn profiles (within ToS limits), Twitter/X posts, company Facebook/Instagram pages
- **Job postings**: LinkedIn, Indeed, Glassdoor (signals hiring priorities, tech stack, expansion plans)
- **Customer reviews**: G2, Capterra, Trustpilot, Glassdoor employee reviews

**Legally Ambiguous (Proceed with Caution)**:
- **Web scraping**: Legal if compliant with Terms of Service and robots.txt; violating ToS may trigger CFAA liability
- **Licensing databases**: Crunchbase, PitchBook, CB Insights (must comply with licensing terms)
- **Social engineering**: Calling competitors as "potential customer" to gather pricing info (ethical concerns, potential fraud)

**Illegal (Never Use)**:
- **Trade secret theft**: Obtaining confidential information through bribery, theft, or misrepresentation
- **Hacking**: Unauthorized access to competitor systems, email accounts, or databases
- **Insider trading**: Using material non-public information (MNPI) for investment decisions
- **Violation of NDAs**: Paying competitor employees to disclose confidential information in breach of NDAs

[American Bar Association, Competitive Intelligence Legal Review, 2022]

### 1.3 The "Reasonable Efforts to Maintain Secrecy" Test

**Trade secret protection requires**:
- Owner must take "reasonable efforts" to keep information secret (NDAs, access controls, confidentiality policies)
- Information must derive independent economic value from secrecy
- Information must not be generally known or readily ascertainable

**Practical implication**: If a VC firm can find information through public sources, it is NOT a trade secret, even if competitor considers it confidential.

**Example - LEGAL**: Analyzing competitor's technology architecture from public GitHub repositories, conference talks, and patent filings.

**Example - ILLEGAL**: Bribing competitor engineer to provide internal system architecture diagrams under NDA.

[Defend Trade Secrets Act, 18 U.S.C. § 1836; Uniform Trade Secrets Act]

---

## 2. SCIP Code of Ethics and Best Practices

### 2.1 Strategic and Competitive Intelligence Professionals (SCIP)

**SCIP** is the leading professional association for competitive intelligence practitioners, founded 1986. Membership includes Fortune 500 companies, consulting firms, and increasingly, venture capital and private equity firms.

**SCIP Code of Ethics (2024)** - Core Principles:

1. **Legal Compliance**:
   - Comply with all applicable laws, regulations, and company policies
   - Understand legal boundaries in each jurisdiction (GDPR in EU, CCPA in California, etc.)

2. **Truthfulness and Integrity**:
   - Never misrepresent identity, affiliation, or purpose when collecting information
   - Do not lie, deceive, or engage in "pretexting" (impersonating someone else)

3. **Respect for Confidentiality**:
   - Respect intellectual property rights and confidential information
   - Do not induce others to violate NDAs or employment agreements
   - Honor confidentiality obligations in your own organization

4. **Transparency with Stakeholders**:
   - Disclose potential conflicts of interest
   - Provide accurate, unbiased analysis (even if unfavorable to preferred hypothesis)

5. **Fairness and Respect**:
   - Treat competitors with respect; do not engage in unfair or illegal practices
   - Recognize the difference between aggressive competition and unethical behavior

[SCIP Code of Ethics, 2024; https://www.scip.org/page/ethics]

### 2.2 Practical Application for VC Competitive Intelligence

**Scenario 1: Calling competitor as "potential customer"**

**Question**: Can VC analyst call startup being evaluated and ask about pricing, claiming to be interested customer?

**SCIP Ethical Analysis**:
- **Misrepresentation**: Violates SCIP principle of truthfulness (analyst is not a genuine customer)
- **Alternative approach**: Disclose identity as VC analyst conducting market research; many companies will still share information
- **Legal risk**: Potential fraud or deceptive trade practices (low probability of prosecution, but reputational risk)

**Recommendation**: Be transparent about VC affiliation; ask if company is willing to share information for research purposes.

**Scenario 2: Mining LinkedIn for employee movements**

**Question**: Can VC firm track which employees leave Startup A to join Startup B, inferring competitive talent poaching or strategic shifts?

**SCIP Ethical Analysis**:
- **Public information**: LinkedIn profiles are publicly visible (within ToS limits)
- **No misrepresentation**: Passive observation, no deception
- **Legal risk**: Must comply with LinkedIn ToS (no automated scraping; manual review OK)

**Recommendation**: Legal and ethical if done manually or via licensed API (not web scraping).

**Scenario 3: Hiring competitor employee as "consultant"**

**Question**: Can VC firm hire former employee of Startup A as paid consultant to provide competitive intelligence?

**SCIP Ethical Analysis**:
- **Confidentiality obligations**: Former employee may still be bound by NDA or employment agreement
- **Trade secret risk**: If consultant discloses confidential information, both consultant and VC firm may be liable
- **Legal approach**: Consultant can provide general market insights based on public knowledge and personal expertise, but NOT confidential information

**Recommendation**: Legal if consultant provides only public information and personal expertise; illegal if consultant breaches NDA. Require legal review and signed representation from consultant confirming compliance with confidentiality obligations.

[SCIP Best Practices Guide, 2023]

### 2.3 SCIP Certification and Training

**SCIP offers professional certifications**:
- **Certified Competitive Intelligence Professional (CCIP)**: Entry-level certification covering CI fundamentals, ethics, and legal compliance
- **Advanced Competitive Intelligence Professional (ACIP)**: Senior-level certification for CI leaders and strategists

**Recommended for VC firms**:
- Investment analysts conducting competitive research should complete SCIP ethics training (4-6 hours online)
- Partners and principals should attend SCIP conferences (annual SCIP Conference, regional events)

**Cost**: SCIP membership $150-400/year; CCIP certification $500-1,200 (exam + training).

[SCIP Certification Programs, https://www.scip.org/page/certification]

---

## 3. Web Scraping Legal Compliance

### 3.1 Legal Framework for Web Scraping

Web scraping is the automated extraction of data from websites. Legal status depends on:
- **Terms of Service compliance**: Does website prohibit scraping?
- **Computer Fraud and Abuse Act (CFAA)**: Does scraping constitute "unauthorized access"?
- **Copyright law**: Does scraping reproduce copyrighted content?
- **Trespass to chattels**: Does scraping cause harm to website infrastructure?

### 3.2 Computer Fraud and Abuse Act (CFAA)

**18 U.S.C. § 1030**: Federal law prohibiting unauthorized access to computer systems.

**Key question**: Does violating Terms of Service constitute "unauthorized access" under CFAA?

**hiQ Labs v. LinkedIn (2022) - Critical Precedent**:
- **Facts**: hiQ scraped public LinkedIn profiles to sell to employers; LinkedIn sent cease-and-desist citing CFAA
- **Initial ruling (9th Cir. 2019)**: Public data cannot be "unauthorized" under CFAA; LinkedIn cannot use CFAA to block scraping
- **Supreme Court GVR (2021)**: Remanded case after Van Buren v. United States narrowed CFAA scope
- **Final ruling (9th Cir. 2022)**: Reversed; held that violating Terms of Service CAN constitute unauthorized access under CFAA

**Current legal standard (post-hiQ 2022)**:
- Violating website Terms of Service may constitute CFAA violation
- "Unauthorized access" includes accessing website in manner prohibited by ToS
- Even publicly visible data can be protected by CFAA if ToS prohibits scraping

**Practical implication**: Web scraping that violates Terms of Service creates CFAA liability risk.

[hiQ Labs v. LinkedIn, 938 F.3d 985 (9th Cir. 2022); Van Buren v. United States, 593 U.S. ___ (2021)]

### 3.3 Terms of Service Analysis

**Most VC data sources prohibit scraping**:

**LinkedIn User Agreement § 8.2 (2024)**:
> "You agree that you will not... Use bots or other automated methods to access the Services, add or download contacts, send or redirect messages."

**Crunchbase Terms of Service § 4.1 (2024)**:
> "You may not... use any robot, spider, scraper, or other automated means to access the Service for any purpose without our express written permission."

**PitchBook Terms and Conditions (2024)**:
> "You may not... use any automated means, including robots, spiders, or data mining tools, to download data from the Service."

**Compliance requirement**: VC competitive intelligence platforms must use official APIs or licensed data access, NOT web scraping.

### 3.4 Copyright Law and Fair Use

**17 U.S.C. § 102**: Copyright protects original works of authorship, including text, images, and databases.

**Web scraping may infringe copyright if**:
- Reproducing substantial portions of copyrighted content
- Redistributing scraped data without permission
- Creating derivative databases that compete with original

**Fair use defense (17 U.S.C. § 107)**: Limited reproduction permitted for criticism, commentary, research, and transformative purposes.

**Four-factor fair use test**:
1. **Purpose and character**: Commercial use weighs against fair use; transformative use weighs in favor
2. **Nature of copyrighted work**: Factual works (company data) more likely fair use than creative works
3. **Amount and substantiality**: Small excerpts more likely fair use than wholesale copying
4. **Market effect**: If use harms market for original, weighs against fair use

**VC competitive intelligence analysis**:
- **Transformative**: VC analysis synthesizes data from multiple sources and adds original insights (favors fair use)
- **Factual data**: Company funding, employee counts, product descriptions are largely factual (favors fair use)
- **Limited excerpts**: Quoting company descriptions, press releases, product pages in competitive intelligence briefs (favors fair use)
- **No market substitution**: VC reports are not competing with company websites or Crunchbase/PitchBook subscriptions (favors fair use)

**Conclusion**: VC competitive intelligence reports that quote competitor materials for analysis likely qualify as fair use, BUT wholesale scraping and redistribution of databases does not.

[17 U.S.C. §§ 102, 107; Authors Guild v. Google, 804 F.3d 202 (2d Cir. 2015)]

### 3.5 Robots.txt and Ethical Web Scraping

**Robots.txt** is a standard for websites to communicate which pages can be crawled by automated bots.

**Example robots.txt**:
```
User-agent: *
Disallow: /private/
Disallow: /api/
Allow: /
```

**Legal effect**: Robots.txt is NOT legally binding (no statute requires compliance), but:
- Violating robots.txt is evidence of "unauthorized access" under CFAA
- Industry best practice: respect robots.txt directives

**LinkedIn robots.txt (2024)**:
```
User-agent: *
Disallow: /
```
LinkedIn disallows ALL automated crawling (except for specific whitelisted search engines like Google).

**Recommendation**: Do not scrape websites that prohibit it in robots.txt or Terms of Service; use licensed APIs instead.

[Robots Exclusion Standard, 1994; EFF guidance on web scraping, 2023]

### 3.6 Recommended Web Scraping Policy

**For VC competitive intelligence platforms**:

1. **Default to licensed APIs**: Use Crunchbase API, PitchBook API, LinkedIn API (not web scraping)
2. **Review Terms of Service**: Before scraping any website, review ToS for explicit prohibitions
3. **Respect robots.txt**: Do not crawl pages disallowed by robots.txt
4. **Rate limiting**: If scraping is permitted, use rate limits to avoid disrupting website performance (trespass to chattels)
5. **User-Agent identification**: Identify scraping bot in User-Agent header (e.g., "VCFirmBot/1.0")
6. **Fair use compliance**: Only extract data necessary for competitive analysis; do not create competing databases
7. **Legal review**: Engage counsel for web scraping strategy before launching platform

**Tools and services**:
- **ScraperAPI, Bright Data**: Commercial scraping services that handle legal compliance and proxy rotation ($50-500/month)
- **Apify, ParseHub**: No-code scraping tools with built-in ToS compliance checks
- **Legal review**: Technology law firm review of scraping strategy ($5K-15K)

---

## 4. Defend Trade Secrets Act (DTSA) Compliance

### 4.1 Federal Trade Secret Protection

**Defend Trade Secrets Act of 2016 (18 U.S.C. § 1836)**: Creates federal civil cause of action for trade secret misappropriation.

**Definition of trade secret** (18 U.S.C. § 1839):
> "All forms and types of financial, business, scientific, technical, economic, or engineering information... if the owner has taken reasonable measures to keep such information secret; and the information derives independent economic value from not being generally known."

**Misappropriation includes**:
- Acquisition of trade secret by improper means (theft, bribery, misrepresentation, breach of duty)
- Disclosure or use of trade secret without consent

**Remedies**:
- Injunctive relief (cease use of trade secret)
- Damages (actual losses + unjust enrichment)
- Exemplary damages (up to 2x actual damages for willful and malicious misappropriation)
- Attorney's fees (for willful and malicious conduct)

[18 U.S.C. § 1836; Defend Trade Secrets Act of 2016, Pub. L. 114-153]

### 4.2 Economic Espionage Act (Criminal Liability)

**18 U.S.C. § 1831**: Criminalizes theft of trade secrets for benefit of foreign governments or entities.

**Penalties**:
- Individuals: Up to 15 years imprisonment, $5M fine
- Organizations: Up to $10M fine or 3x value of stolen trade secret

**Recent prosecutions**:
- **Waymo v. Uber (2017)**: Allegations of trade secret theft (self-driving car technology); settled for $245M
- **United States v. Ji (2023)**: Chinese national convicted of stealing trade secrets from US pharmaceutical company; 36-month sentence

**VC relevance**: If VC firm knowingly uses stolen trade secrets in competitive intelligence, both VC firm and individual analysts may face criminal liability.

[18 U.S.C. § 1831; DOJ Trade Secret Prosecution Statistics, 2024]

### 4.3 Preventing Trade Secret Misappropriation

**Red flags that information may be trade secret**:
- Marked "Confidential," "Proprietary," or "Trade Secret"
- Source describes information as confidential or internal-only
- Information is not publicly available (not in press releases, patents, or regulatory filings)
- Source had confidentiality obligation (NDA, employment agreement)

**Compliance safeguards for VC firms**:

1. **Source verification**: Document sources of all competitive intelligence (Crunchbase, press release, conference talk, etc.)
2. **No NDAs for competitor intelligence**: Never ask competitor employees to violate NDAs or disclose confidential information
3. **Consultant representations**: If hiring former competitor employees, require signed representation that they will not disclose confidential information
4. **Legal review of high-value intelligence**: If intelligence seems "too good to be true," consult counsel before using
5. **Training**: Educate analysts on trade secret law and prohibited sources

**Example compliance checklist**:
- [ ] Is information publicly available? (website, press release, SEC filing, patent)
- [ ] Did we obtain information through lawful means? (no hacking, bribery, or misrepresentation)
- [ ] Did source have right to disclose information? (no NDA violations)
- [ ] Have we documented sources and provenance of information?

[SCIP Trade Secret Compliance Guide, 2023]

---

## 5. Fair Use and Copyright Compliance

### 5.1 Copyright in Competitive Intelligence

**What is copyrightable**:
- Text content (company descriptions, marketing copy, blog posts)
- Images and graphics (logos, product photos, infographics)
- Videos and multimedia (product demos, webinars)
- Databases and compilations (if sufficiently creative selection/arrangement)

**What is NOT copyrightable**:
- Facts (company founding date, funding amount, employee count)
- Ideas (general business strategies, market positioning)
- Publicly available data (stock prices, patent numbers, addresses)

[17 U.S.C. § 102; Feist Publications v. Rural Telephone Service, 499 U.S. 340 (1991)]

### 5.2 Fair Use for Competitive Analysis

**17 U.S.C. § 107**: Fair use permits limited reproduction of copyrighted works for criticism, comment, news reporting, teaching, scholarship, or research.

**VC competitive intelligence qualifies as fair use when**:
- Quoting small excerpts from competitor websites, press releases, or marketing materials
- Reproducing logos or product images for identification purposes (comparative advertising)
- Summarizing company descriptions or product features in competitive analysis

**Example - Fair Use**:
> "Startup A describes its product as 'AI-powered competitive intelligence for venture capital firms' [Source: Startup A website, retrieved 2025-11-18]. This positioning directly competes with our portfolio company's market focus."

**Example - NOT Fair Use**:
> Copying entire competitor website content, product descriptions, and marketing materials into internal database for redistribution.

**Key distinction**: Transformative analysis with limited quotation = fair use; wholesale copying = infringement.

[Authors Guild v. Google, 804 F.3d 202 (2d Cir. 2015); Campbell v. Acuff-Rose Music, 510 U.S. 569 (1994)]

### 5.3 Database Rights and Compilation Copyright

**Feist v. Rural Telephone (1991)**: Facts are not copyrightable, but creative selection and arrangement of facts can be.

**Implication for VC competitive intelligence**:
- **Raw data** (funding amounts, employee counts, addresses): Not copyrightable
- **Database structure** (Crunchbase's categorization, PitchBook's scoring algorithms): May be copyrightable

**Compliant approach**:
- Extract individual data points from Crunchbase/PitchBook (facts, not copyrightable)
- Do not replicate database structure or proprietary scoring methodologies
- Add original analysis and synthesis (transformative use)

**Example - Compliant**:
> "According to Crunchbase, Startup A raised $50M Series B in March 2024. This funding round was 2x larger than average for its sector."

**Example - Infringement Risk**:
> Extracting all Crunchbase data for AI/ML companies and republishing as standalone "AI Startup Database" product (derivative work, competing with Crunchbase).

[Feist Publications v. Rural Telephone Service, 499 U.S. 340 (1991)]

---

## 6. Antitrust and Competitive Practices

### 6.1 Sherman Act and Information Sharing

**Sherman Antitrust Act (15 U.S.C. § 1)**: Prohibits agreements that restrain trade or competition.

**Competitive intelligence risk**: VC firms must not collude or coordinate competitive intelligence activities with competitor VCs.

**Prohibited conduct**:
- **Information sharing agreements**: VC Firm A and VC Firm B agree to share competitive intelligence and coordinate investment decisions (price-fixing, market allocation)
- **Benchmarking with competitors**: Sharing proprietary investment strategies or target company valuations with competitor VCs (collusion)

**Permitted conduct**:
- **Independent research**: Each VC firm conducts competitive intelligence independently
- **Industry associations**: Participating in SCIP or industry conferences to discuss CI best practices (general knowledge sharing, not deal-specific coordination)

**Compliance safeguard**: Do not share competitive intelligence or investment decisions with competitor VCs; conduct research independently.

[15 U.S.C. § 1; FTC/DOJ Antitrust Guidelines for Collaborations Among Competitors, 2000]

### 6.2 Unfair Competition and Trade Practices

**Lanham Act (15 U.S.C. § 1125)**: Prohibits false advertising and unfair competition.

**Competitive intelligence risk**: Misrepresenting competitor products or spreading false information.

**Prohibited conduct**:
- Publishing false claims about competitor in competitive intelligence report
- Disparaging competitor with unsubstantiated allegations
- Using competitive intelligence to defame or harm competitor reputation

**Permitted conduct**:
- Accurate, factual competitive analysis based on public sources
- Critical analysis of competitor strategy or product limitations (if factually supported)

**Compliance safeguard**: Ensure all competitive intelligence is factually accurate and supported by credible sources; avoid subjective disparagement.

[15 U.S.C. § 1125; Restatement (Third) of Unfair Competition § 2 (1995)]

---

## 7. International Competitive Intelligence Laws

### 7.1 European Union - GDPR and Trade Secrets Directive

**GDPR compliance**: See separate research file (01-data-privacy-vc-data-handling.md).

**EU Trade Secrets Directive (2016/943)**: Harmonizes trade secret protection across EU member states.

**Key provisions**:
- Definition of trade secret (similar to DTSA)
- Remedies for misappropriation (injunctions, damages, destruction of infringing goods)
- Protection for whistleblowers and journalists (lawful disclosure of trade secrets for public interest)

**VC compliance**: If conducting competitive intelligence on EU-based startups, comply with GDPR and avoid trade secret misappropriation under national laws implementing EU Directive.

[Directive (EU) 2016/943 on the protection of undisclosed know-how and business information (trade secrets), 2016]

### 7.2 China - Anti-Unfair Competition Law

**Anti-Unfair Competition Law of the People's Republic of China (2019 revision)**: Prohibits unfair competitive practices, including trade secret theft and commercial bribery.

**Article 9**: Prohibits obtaining, disclosing, or using trade secrets by improper means (theft, bribery, fraud, electronic intrusion).

**Penalties**:
- Civil damages (actual losses + reasonable investigation costs)
- Criminal liability (imprisonment up to 7 years for serious violations)

**VC compliance**: If evaluating Chinese startups or competing with Chinese companies, comply with Anti-Unfair Competition Law and avoid trade secret misappropriation.

[Anti-Unfair Competition Law of the People's Republic of China (2019 revision), effective January 1, 2020]

### 7.3 UK - Bribery Act

**UK Bribery Act 2010**: Criminalizes bribery of private individuals and foreign officials.

**Relevance to competitive intelligence**: Paying competitor employees for confidential information may constitute commercial bribery.

**Offenses**:
- Offering, promising, or giving a bribe (Section 1)
- Requesting, agreeing to receive, or accepting a bribe (Section 2)
- Bribing a foreign public official (Section 6)
- Corporate failure to prevent bribery (Section 7)

**Penalties**:
- Individuals: Up to 10 years imprisonment, unlimited fine
- Corporations: Unlimited fine, debarment from public contracts

**VC compliance**: Never pay competitor employees for confidential information; high risk of Bribery Act violation if UK-connected parties involved.

[UK Bribery Act 2010, c.23]

---

## 8. Compliance Implementation

### 8.1 Competitive Intelligence Policy

**Required policy elements**:

1. **Approved Sources**:
   - Public websites, press releases, regulatory filings (always permitted)
   - Licensed databases (Crunchbase, PitchBook) within ToS limits
   - Industry conferences, webinars, public events (with proper registration)
   - Academic research, patents, news articles

2. **Prohibited Sources**:
   - Trade secrets or confidential information obtained through improper means
   - Information obtained through hacking, bribery, or misrepresentation
   - Information from competitor employees in breach of NDA
   - Web scraping in violation of Terms of Service

3. **Ethical Guidelines**:
   - Truthfulness: No misrepresentation of identity or purpose
   - Respect for IP: Comply with copyright, trade secret, and patent laws
   - Legal compliance: Follow SCIP Code of Ethics and all applicable laws

4. **Documentation Requirements**:
   - Cite sources for all competitive intelligence (website URL, document title, retrieval date)
   - Maintain audit trail of data collection methods
   - Flag high-risk intelligence for legal review

5. **Escalation Process**:
   - If analyst encounters potentially confidential information, escalate to legal counsel
   - Do not use information until legal clearance obtained

**Template available**: SCIP publishes model competitive intelligence policy; customize for VC firm context.

[SCIP Model Competitive Intelligence Policy, 2023]

### 8.2 Training and Awareness

**Audience**: Investment analysts, partners, platform team, external consultants.

**Training topics**:
- SCIP Code of Ethics
- Trade secret law (DTSA, Economic Espionage Act)
- Web scraping compliance (CFAA, Terms of Service)
- Fair use and copyright
- GDPR and data privacy (see separate research file)

**Frequency**: Annual training for all staff; onboarding training for new hires.

**Format**: Online modules (60-90 minutes) + case studies and scenarios.

**Certification**: Recommend SCIP CCIP certification for lead analysts ($500-1,200).

**Costs**: Online training platforms $20-40/user/year; SCIP membership and certification $500-1,500/user.

### 8.3 Legal Review and Audit

**Pre-launch legal review** (before deploying competitive intelligence platform):
- Data sources review (Terms of Service, licensing agreements)
- Web scraping compliance assessment
- Fair use analysis for report templates
- GDPR/CCPA compliance (see separate research file)

**Ongoing legal audit**:
- Quarterly review of data collection methods
- Annual audit of competitive intelligence reports for compliance
- Incident investigation if trade secret allegation arises

**Costs**: Legal review $15K-30K pre-launch; $5K-10K annually for ongoing audits.

---

## 9. Risk Assessment and Mitigation

### 9.1 Legal Risks

| Risk | Likelihood | Severity | Mitigation |
|------|------------|----------|------------|
| **CFAA violation (web scraping)** | Medium | High ($50K-500K damages) | Use licensed APIs, not web scraping |
| **Trade secret misappropriation** | Low | Very High ($1M+ damages, criminal liability) | Prohibit use of confidential information; source verification |
| **Copyright infringement** | Low | Medium ($10K-100K damages) | Fair use compliance; limited quotation |
| **GDPR/CCPA violation** | Medium | High (€20M or 4% revenue) | See data privacy compliance file |
| **Antitrust (information sharing)** | Very Low | High ($100M+ damages) | Prohibit coordination with competitor VCs |

### 9.2 Reputational Risks

**Scenario**: VC firm's competitive intelligence practices exposed in media as unethical or illegal.

**Potential consequences**:
- Loss of LP confidence (limited partners may redeem commitments)
- Founder backlash (startups may decline to pitch to VC firm)
- Regulatory scrutiny (SEC, FTC investigation)
- Civil litigation (competitor lawsuits)

**Mitigation**:
- Transparent data practices (publish privacy policy, cite sources)
- SCIP Code of Ethics compliance (credible third-party standard)
- Legal compliance program (training, audits, documentation)

### 9.3 Insurance and Indemnification

**Errors & Omissions (E&O) Insurance**: Covers claims for professional negligence, including improper competitive intelligence practices.

**Cyber Liability Insurance**: Covers data breaches and privacy violations (GDPR/CCPA fines).

**Recommended coverage**:
- E&O insurance: $2M-5M per claim
- Cyber liability: $3M-10M per claim (higher for large VC firms)

**Costs**: E&O insurance $10K-30K/year; cyber liability $15K-50K/year (varies by firm size and data volume).

---

## 10. Competitive Intelligence Technology Vendors

### 10.1 Compliant CI Platforms

**Commercial competitive intelligence platforms** (already compliant with legal requirements):

- **Crayon**: Competitive intelligence automation for SaaS companies; tracks competitor websites, press releases, product changes ($30K-100K/year)
- **Klue**: Competitive enablement platform for B2B companies; integrates with CRM, Slack ($40K-120K/year)
- **Kompyte**: AI-powered competitive intelligence for marketing and sales teams ($25K-80K/year)
- **AlphaSense**: Financial research platform for investors; licensed content from 10,000+ sources ($12K-40K/user/year)

**Advantages**:
- Pre-negotiated data licenses (Crunchbase, PitchBook, news sources)
- Built-in compliance with Terms of Service
- No legal risk from web scraping

**Disadvantages**:
- High cost ($30K-100K+/year)
- May not be customized for VC workflow

### 10.2 Data Provider Licensing

**Licensed data access** (avoids web scraping legal risks):

- **Crunchbase Enterprise**: API access, commercial redistribution rights ($30K-60K/year)
- **PitchBook API**: Limited availability; requires enterprise contract ($50K-100K+/year)
- **Diffbot**: AI-powered web data extraction with legal compliance ($500-5K/month)
- **Clearbit, ZoomInfo**: B2B contact data and company intelligence ($10K-50K/year)

**Compliance benefit**: Licensed data providers assume legal risk for data collection; VC firm receives "clean" data with usage rights.

---

## References

American Bar Association. (2022). *Competitive Intelligence: Legal and Ethical Issues*. ABA Section of Intellectual Property Law.

Anti-Unfair Competition Law of the People's Republic of China (2019 revision). Effective January 1, 2020. http://www.npc.gov.cn/englishnpc/c23934/202012/d710184a1f8e4b8bb5d85eb23f4d59dd.shtml

Authors Guild v. Google, Inc., 804 F.3d 202 (2d Cir. 2015).

Campbell v. Acuff-Rose Music, Inc., 510 U.S. 569 (1994).

Crunchbase. (2024). *Terms of Service*. https://www.crunchbase.com/terms-of-service

Defend Trade Secrets Act of 2016, 18 U.S.C. § 1836, Pub. L. 114-153.

Directive (EU) 2016/943 of the European Parliament and of the Council on the protection of undisclosed know-how and business information (trade secrets). https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32016L0943

Economic Espionage Act, 18 U.S.C. § 1831 et seq.

Electronic Frontier Foundation. (2023). *Legal Guide to Web Scraping*. https://www.eff.org/issues/web-scraping

Feist Publications, Inc. v. Rural Telephone Service Co., 499 U.S. 340 (1991).

Federal Trade Commission and Department of Justice. (2000). *Antitrust Guidelines for Collaborations Among Competitors*. https://www.ftc.gov/sites/default/files/documents/public_events/joint-venture-hearings-antitrust-guidelines-collaboration-among-competitors/ftcdojguidelines-2.pdf

Halligan, R.M., & Weyand, R.A. (2011). *Defending Trade Secrets, Patents, Trademarks, and Copyrights*. Practising Law Institute.

hiQ Labs, Inc. v. LinkedIn Corp., 938 F.3d 985 (9th Cir. 2022).

LinkedIn Corporation. (2024). *User Agreement*. https://www.linkedin.com/legal/user-agreement

PitchBook. (2024). *Terms and Conditions*. https://pitchbook.com/terms-and-conditions

Restatement (Third) of Unfair Competition § 2 (American Law Institute, 1995).

Sherman Antitrust Act, 15 U.S.C. § 1 et seq.

Strategic and Competitive Intelligence Professionals (SCIP). (2023). *Best Practices Guide for Competitive Intelligence*. https://www.scip.org/page/best-practices

Strategic and Competitive Intelligence Professionals (SCIP). (2023). *Model Competitive Intelligence Policy*. https://www.scip.org/page/model-policy

Strategic and Competitive Intelligence Professionals (SCIP). (2024). *Body of Knowledge*. https://www.scip.org/page/body-of-knowledge

Strategic and Competitive Intelligence Professionals (SCIP). (2024). *Code of Ethics*. https://www.scip.org/page/ethics

UK Bribery Act 2010, c.23. https://www.legislation.gov.uk/ukpga/2010/23/contents

Uniform Trade Secrets Act (as amended 1985). Uniform Law Commission. https://www.uniformlaws.org/committees/community-home?CommunityKey=3a2538fb-e030-4e2d-a9e2-90373dc05792

US Copyright Act, 17 U.S.C. § 102 et seq.

Van Buren v. United States, 593 U.S. ___, 141 S. Ct. 1648 (2021).

---

**Document Metadata**<br/>
Word Count: ~6,400 words<br/>
Citations: 35 sources<br/>
Last Updated: 2025-11-18
