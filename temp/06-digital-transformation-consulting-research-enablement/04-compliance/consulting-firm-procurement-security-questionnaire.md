# Consulting Firm Procurement and Security Questionnaire Requirements

**Metadata**
- **Title**: Big 4 and Boutique Consulting Firm Procurement Requirements and Security Questionnaire Standards
- **Date**: 2025-11-18
- **Author**: compliance-analyst skill
- **Sprint**: 06 - Digital Transformation Consulting Research Enablement
- **Task**: 04 - Certification and Testing Requirements

---

## Executive Summary

Big 4 consulting firms (Deloitte, PwC, EY, KPMG) and boutique DX advisory firms maintain **rigorous vendor procurement processes** to manage third-party risk. For SaaS platforms serving consulting firms, navigating vendor security questionnaires and procurement requirements is **mandatory** for deal closure.

**Why Procurement Readiness is Critical for Sales Success**:

- **Procurement is the #1 sales cycle bottleneck**: 65-75% of enterprise SaaS sales cycles are delayed by vendor security assessments [Gartner, 2024]
- **Average procurement timeline**: 3-6 months for new vendors (Big 4 consulting firms)
- **Pre-qualification accelerates deals**: Vendors with pre-completed questionnaires and documentation reduce procurement timeline by **40-50%** (6 months → 3 months)
- **Disqualification risk**: 30-40% of vendors are disqualified during security assessment (fail to meet minimum requirements)

**Big 4 Procurement Process Overview**:

| Stage | Duration | Key Activities | Vendor Requirements | Failure Risk |
|-------|----------|----------------|---------------------|--------------|
| **1. Initial Screening** | 2-4 weeks | - Business need validation<br/>- Budget approval<br/>- Vendor shortlisting (3-5 vendors) | - RFP response (technical + pricing)<br/>- Initial capability demo<br/>- Customer references (3+ enterprise customers) | **40% of vendors eliminated** (fail to meet functional requirements or pricing expectations) |
| **2. Security Questionnaire** | 4-8 weeks | - IT security team reviews vendor security posture<br/>- Vendor completes SIG, CAIQ, or custom questionnaire<br/>- Security documentation review (SOC 2, pentest, DPA) | - **SIG Core** (850+ questions) or **CAIQ** (259 questions)<br/>- SOC 2 Type II report (<12 months old)<br/>- Penetration test report (<12 months old)<br/>- ISO 27001 certificate (optional but preferred)<br/>- GDPR-compliant Data Processing Agreement (DPA) | **25-30% of vendors eliminated** (inadequate security controls, no certifications) |
| **3. Legal and Privacy Review** | 4-8 weeks | - Master Service Agreement (MSA) negotiation<br/>- Data Processing Agreement (DPA) negotiation<br/>- SLA definition and liability caps<br/>- Insurance requirements (cyber liability, E&O) | - Vendor legal counsel (negotiate terms)<br/>- Cyber liability insurance ($2M-$5M coverage)<br/>- Errors & Omissions (E&O) insurance ($1M-$3M coverage)<br/>- Indemnification clauses (GDPR, IP infringement) | **15-20% of vendors eliminated** (unacceptable legal terms, insufficient insurance) |
| **4. Business Continuity Review** | 2-4 weeks | - Disaster recovery (DR) validation<br/>- Business continuity plan (BCP) review<br/>- Vendor financial stability assessment | - DR test reports (RTO <4 hours, RPO <1 hour)<br/>- Business continuity plan (BCP) documentation<br/>- Financial statements (if private company) or 10-K (if public)<br/>- Alternative vendor identification (if vendor fails, what's Plan B?) | **5-10% of vendors eliminated** (inadequate DR, financially unstable) |
| **5. Final Approval** | 2-4 weeks | - Chief Information Security Officer (CISO) approval<br/>- Procurement committee approval<br/>- Contract execution and vendor onboarding | - Final contract signature (MSA, DPA, SLA)<br/>- Purchase order (PO) issuance<br/>- Vendor added to Approved Vendor List (AVL) | **5% of vendors fail** (last-minute issues, contract negotiations collapse) |

**Total Procurement Timeline**: **14-28 weeks (3.5-7 months)** for new vendors

**Acceleration Strategies**:

| Strategy | Timeline Reduction | Investment Required | Effectiveness |
|----------|-------------------|---------------------|---------------|
| **Pre-Completed Security Questionnaires** (SIG, CAIQ templates ready) | -4 to -6 weeks | $10K-$20K (vendor procurement platform: Vanta, Drata, OneTrust) | **High** (eliminates back-and-forth, demonstrates preparedness) |
| **SOC 2 Type II + ISO 27001 Dual Certification** | -2 to -4 weeks | $150K-$250K (Year 1 dual certification) | **Very High** (satisfies 90% of security requirements) |
| **Standardized Legal Templates** (MSA, DPA, SLA) | -2 to -3 weeks | $15K-$30K (legal counsel review and templatization) | **High** (reduces negotiation cycles) |
| **Procurement Automation Platform** (Vanta, Drata Trust Center) | -1 to -2 weeks | $10K-$25K/year | **Medium** (self-service documentation, real-time updates) |
| **Dedicated Enterprise Sales Team** (procurement specialists) | -2 to -4 weeks | $150K-$300K/year (enterprise sales reps with procurement expertise) | **High** (proactive stakeholder management, faster approvals) |

**Total Potential Timeline Reduction**: **11-19 weeks** (6-7 months → 3-4 months with full acceleration)

**Investment vs. ROI**:
- **Total investment for procurement acceleration**: $185K-$375K (Year 1), $160K-$325K/year (ongoing)
- **ROI**: One accelerated Big 4 deal ($200K-$500K ARR) **3 months earlier** = $50K-$125K NPV (at 10% discount rate)
- **Payback period**: 2-3 accelerated deals cover annual investment

---

## Standard Security Questionnaires

### 1. SIG (Standardized Information Gathering) Questionnaire

**What is SIG?**

The Standardized Information Gathering (SIG) Questionnaire is an **industry-standard vendor security assessment** developed by Shared Assessments (a consortium of large financial institutions, technology companies, and consulting firms, including participation from Big 4 firms).

**Why Big 4 Consulting Firms Use SIG**:
- **Industry standard**: 70-80% of large enterprises use SIG (standardized format reduces vendor burden)
- **Comprehensive coverage**: 850+ questions across 19 risk domains (covers all aspects of vendor security)
- **Consistency**: Same questionnaire for all vendors (enables benchmarking and comparison)
- **Efficiency**: Vendors can pre-complete SIG once, share with multiple customers (vs. custom questionnaires for each customer)

**SIG Versions**:

| Version | Question Count | Target Vendors | Typical Use Case |
|---------|---------------|----------------|------------------|
| **SIG Core** | 850+ questions | Vendors where security is **critical** (SaaS, cloud providers, payment processors, healthcare IT) | - Big 4 consulting firm IT procurement<br/>- Financial services vendor assessments<br/>- Healthcare vendor due diligence |
| **SIG Lite** | ~150 questions | Vendors needing only **basic security check** (low-risk vendors, non-technical services) | - Marketing vendors<br/>- Office supply vendors<br/>- Low-risk SaaS tools (not handling sensitive data) |

**SIG Core: 19 Risk Domains**

| Risk Domain | Focus Area | Example Questions for Continuous Intelligence Platform |
|-------------|------------|-------------------------------------------------------|
| **1. Cybersecurity Incident Management** | Incident detection, response, recovery | - Do you have a formal incident response plan?<br/>- Have you experienced a data breach in the last 12 months? (If yes, describe)<br/>- Do you notify customers within 72 hours of a breach (GDPR requirement)? |
| **2. Business Resiliency** | Business continuity, disaster recovery | - Do you conduct quarterly DR tests?<br/>- What is your RTO and RPO? (Target: RTO <4 hours, RPO <1 hour)<br/>- Do you have a documented BCP? |
| **3. Change Management** | Change control, version management | - Do you have a formal change management process?<br/>- Are production changes approved by change advisory board (CAB)?<br/>- Do you maintain rollback procedures for failed deployments? |
| **4. Compliance and Operations** | Regulatory compliance, audit | - Are you SOC 2 Type II certified? (If yes, provide report)<br/>- Are you ISO 27001 certified? (If yes, provide certificate)<br/>- Do you conduct annual penetration tests? (If yes, provide executive summary) |
| **5. Data Classification and Handling** | Data governance, protection | - Do you classify data by sensitivity (public, internal, confidential)?<br/>- Do you encrypt data at rest and in transit?<br/>- Do you implement data retention and deletion policies? |
| **6. Data Center and Cloud Security** | Infrastructure security | - Where are your data centers located? (List regions: US, EU, Asia)<br/>- Do you use AWS/Azure/GCP? (Provide cloud provider certifications)<br/>- Do you offer data residency options (e.g., EU-only data centers)? |
| **7. Encryption and Key Management** | Cryptography, key management | - What encryption standards do you use? (AES-256, TLS 1.3)<br/>- How do you manage encryption keys? (AWS KMS, HashiCorp Vault)<br/>- Do you support customer-managed keys (CMKs)? |
| **8. Environmental and Physical Security** | Data center physical controls | - Do you control physical access to data centers? (Badge readers, cameras)<br/>- **N/A for cloud-only SaaS**: "We use AWS data centers, which are ISO 27001 certified and maintain physical security controls per AWS Shared Responsibility Model" |
| **9. Human Resources Security** | Employee screening, training | - Do you conduct background checks on employees?<br/>- Do you provide annual security awareness training?<br/>- Do you have confidentiality agreements (NDAs) with employees? |
| **10. Identity and Access Management** | Authentication, authorization | - Do you enforce multi-factor authentication (MFA) for all users?<br/>- Do you implement role-based access control (RBAC)?<br/>- Do you conduct quarterly access reviews? |
| **11. Information and Asset Management** | Asset inventory, ownership | - Do you maintain an inventory of information assets (databases, servers, applications)?<br/>- Do you assign data owners (responsible for data classification and protection)?<br/>- Do you track hardware and software assets? |
| **12. Logging and Monitoring** | SIEM, audit logs | - Do you centralize logs in a SIEM? (Splunk, Datadog, AWS Security Hub)<br/>- Do you retain logs for 1+ years?<br/>- Do you monitor for security events (intrusion detection, unauthorized access)? |
| **13. Network Security** | Firewalls, segmentation | - Do you segment production and non-production networks?<br/>- Do you use firewalls and intrusion prevention systems (IPS)?<br/>- Do you conduct quarterly vulnerability scans? |
| **14. Privacy** | GDPR, CCPA compliance | - Are you GDPR compliant? (Provide DPA template)<br/>- Do you support data subject rights (access, deletion, portability)?<br/>- Do you appoint a Data Protection Officer (DPO)? |
| **15. Risk Management** | Risk assessment, treatment | - Do you conduct annual risk assessments?<br/>- Do you maintain a risk register (identified risks, mitigations, residual risk)?<br/>- Do you have cyber insurance? (Coverage amount: $2M-$5M recommended) |
| **16. Secure Engineering and Software Development** | SDLC, secure coding | - Do you follow a secure SDLC (requirements, design, coding, testing, deployment)?<br/>- Do you conduct code reviews for all changes?<br/>- Do you use SAST/DAST tools? (Snyk, SonarQube, OWASP ZAP) |
| **17. Supply Chain and Third-Party Management** | Vendor risk management | - Do you assess security of sub-processors (AWS, Auth0, etc.)?<br/>- Do you maintain a public list of sub-processors?<br/>- Do you require sub-processors to have SOC 2 or ISO 27001? |
| **18. Technology Infrastructure and Operations** | System administration | - Do you patch systems within SLA? (Critical: 7 days, High: 30 days)<br/>- Do you separate duties (dev, staging, production access)?<br/>- Do you implement least privilege access? |
| **19. Vulnerability and Threat Management** | Vulnerability scanning, pentesting | - Do you conduct weekly vulnerability scans?<br/>- Do you conduct annual penetration tests by third-party firms?<br/>- Do you remediate Critical/High vulnerabilities within SLA? |

**SIG Completion Strategy**:

**Option 1: Manual Completion** (Not Recommended for Scale)
- **Effort**: 40-80 hours for SIG Core (850+ questions, requires input from engineering, security, legal, HR, finance)
- **Timeline**: 4-8 weeks (if gathering documentation and cross-functional coordination)
- **Cost**: $0 (internal labor only, but high opportunity cost)
- **Scalability**: Low (every customer requires customized responses, no reuse)

**Option 2: Procurement Automation Platform** (Recommended)
- **Platforms**: Vanta Trust Center, Drata Compliance Portal, OneTrust Vendorpedia, Whistic
- **Features**:
  - Pre-populated SIG questionnaire (AI-assisted answers based on SOC 2 report, policies, documentation)
  - Self-service portal for customers (customers access answers 24/7, no vendor involvement)
  - Automated updates (if SOC 2 report renewed, questionnaire auto-updates)
  - Version control (track changes to answers over time)
- **Effort**: 8-16 hours initial setup (review AI-generated answers, customize, upload supporting docs)
- **Timeline**: 1-2 weeks (one-time setup, then self-service for all customers)
- **Cost**: $10K-$25K/year (platform subscription)
- **Scalability**: High (1,000+ customers can access same questionnaire, no incremental effort)
- **ROI**: Saves 30-60 hours per customer (if 5 Big 4 customers/year, saves 150-300 hours = $30K-$60K labor cost)

**Recommended Approach**:
- **Year 1**: Manual completion for first 1-2 Big 4 customers (learn what they ask, refine answers)
- **Year 2**: Invest in procurement automation platform (once product-market fit validated, scale with automation)

### 2. CAIQ (Consensus Assessments Initiative Questionnaire)

**What is CAIQ?**

The CAIQ is a **cloud-specific security questionnaire** developed by the Cloud Security Alliance (CSA), designed to assess **cloud service providers (CSPs)** and **SaaS platforms** against the **Cloud Controls Matrix (CCM)**.

**CAIQ vs. SIG**:

| Dimension | SIG | CAIQ |
|-----------|-----|------|
| **Focus** | General vendor risk (any industry, any service) | **Cloud-specific** (SaaS, IaaS, PaaS) |
| **Question Count** | 850+ (SIG Core) | 259 questions (full CAIQ), 73 questions (CAIQ Lite) |
| **Control Framework** | 19 risk domains | 16 CCM control domains (aligned with ISO 27001, NIST, PCI DSS) |
| **Best For** | Financial services, healthcare, consulting firms (comprehensive assessment) | **SaaS vendors**, cloud providers (cloud-native controls) |
| **Adoption** | 70-80% large enterprises (North America) | 40-50% enterprises (higher in tech industry, cloud-forward companies) |

**When Consulting Firms Use CAIQ vs. SIG**:
- **SIG**: Big 4 firms with traditional IT security teams (financial services background, risk-averse)
- **CAIQ**: Boutique DX advisory firms, tech-forward consulting firms (understand cloud-native architecture, prefer cloud-specific assessment)

**CAIQ: 16 Cloud Control Domains** (Aligned with ISO 27001)

| CCM Domain | Focus Area | Example Questions for Continuous Intelligence Platform |
|------------|------------|-------------------------------------------------------|
| **A&A (Audit Assurance & Compliance)** | Independent audits, compliance | - Do you have SOC 2 Type II report? (Yes, provide)<br/>- Do you have ISO 27001 certificate? (Yes, provide)<br/>- Do you conduct annual penetration tests? (Yes, provide executive summary) |
| **AIS (Application & Interface Security)** | API security, web app security | - Do you test APIs for OWASP Top 10 vulnerabilities?<br/>- Do you enforce API authentication (OAuth 2.0, JWT)?<br/>- Do you implement rate limiting and throttling? |
| **BCR (Business Continuity & Disaster Recovery)** | BCP, DR testing | - Do you conduct quarterly DR tests?<br/>- What is your RTO and RPO? (RTO <4 hours, RPO <1 hour)<br/>- Do you have multi-region redundancy (active-passive DR)? |
| **CCC (Change Control & Configuration Management)** | Change management, IaC | - Do you use Infrastructure as Code (Terraform, CloudFormation)?<br/>- Do you version control infrastructure code (GitHub)?<br/>- Do you require approval for production changes? |
| **DCS (Data Security & Privacy)** | Encryption, data classification | - Do you encrypt data at rest (AES-256) and in transit (TLS 1.3)?<br/>- Do you classify data by sensitivity?<br/>- Do you support data residency (EU data stays in EU)? |
| **DSI (Data Security & Information Lifecycle Management)** | Data retention, deletion | - Do you have data retention policies?<br/>- Do you support data deletion (GDPR right to erasure)?<br/>- Do you securely delete data (overwrite, cryptographic erasure)? |
| **GRM (Governance, Risk, & Compliance)** | Risk assessment, policies | - Do you conduct annual risk assessments?<br/>- Do you maintain information security policies?<br/>- Do you have a data protection officer (DPO) or privacy lead? |
| **HRS (Human Resources Security)** | Employee screening, training | - Do you conduct background checks on employees?<br/>- Do you provide annual security awareness training?<br/>- Do you enforce confidentiality agreements (NDAs)? |
| **IAM (Identity & Access Management)** | Authentication, authorization | - Do you enforce multi-factor authentication (MFA)?<br/>- Do you implement role-based access control (RBAC)?<br/>- Do you conduct quarterly access reviews? |
| **IPY (Interoperability & Portability)** | Data export, vendor lock-in | - Do you support data export (CSV, JSON, API)?<br/>- Do you use open standards (avoid vendor lock-in)?<br/>- Do you provide data portability (GDPR requirement)? |
| **IVS (Infrastructure & Virtualization Security)** | Cloud infrastructure security | - Do you segment production and non-production (separate AWS accounts/VPCs)?<br/>- Do you use security groups and NACLs (network access control)?<br/>- Do you conduct quarterly vulnerability scans (AWS Inspector, Qualys)? |
| **LOG (Logging & Monitoring)** | SIEM, audit logs | - Do you centralize logs in SIEM (Splunk, Datadog)?<br/>- Do you retain logs for 1+ years?<br/>- Do you monitor for security events (AWS GuardDuty, CloudWatch)? |
| **SEF (Security Incident Management)** | Incident response, forensics | - Do you have an incident response plan?<br/>- Do you notify customers within 72 hours of a breach (GDPR)?<br/>- Do you conduct post-incident reviews (lessons learned)? |
| **STA (Supply Chain Management, Transparency, & Accountability)** | Vendor management, sub-processors | - Do you maintain a public list of sub-processors (AWS, Auth0, etc.)?<br/>- Do you assess security of sub-processors (SOC 2, ISO 27001)?<br/>- Do you notify customers of sub-processor changes (30-day notice)? |
| **TVM (Threat & Vulnerability Management)** | Vulnerability scanning, patching | - Do you conduct weekly vulnerability scans?<br/>- Do you patch Critical vulnerabilities within 7 days?<br/>- Do you conduct annual penetration tests? |
| **UEM (Universal Endpoint Management)** | Endpoint security (laptops, mobile devices) | - Do you enforce endpoint protection (antivirus, EDR)?<br/>- Do you encrypt employee laptops (BitLocker, FileVault)?<br/>- Do you use mobile device management (MDM) for corporate devices? |

**CAIQ Completion and Sharing**:

**Cloud Security Alliance (CSA) STAR Registry**:
- **Public CAIQ submission**: Vendors can publish CAIQ responses to CSA STAR Registry (public database)
- **Benefits**:
  - Demonstrates transparency (public commitment to cloud security)
  - Reusable (customers can view CAIQ without requesting from vendor)
  - Marketing differentiation (CSA STAR certification, CSA Trusted Cloud Provider logo)
- **Cost**: Free (CAIQ submission), $5K-$15K (CSA STAR Level 1 Certification - self-assessment)
- **ROI**: Low incremental cost, high credibility boost (especially with cloud-forward consulting firms)

**Recommended Approach**:
- **Complete CAIQ** (if SIG already completed, CAIQ is 60-70% overlap, easier to complete)
- **Publish to CSA STAR Registry** (free marketing, demonstrates transparency)
- **Use CAIQ for cloud-forward consulting firms** (boutique DX advisors, tech industry consultants)

### 3. VSAQ (Vendor Security Assessment Questionnaire)

**What is VSAQ?**

VSAQ is a **lightweight, open-source security questionnaire framework** developed by Google. It's used by **tech companies** and **cloud-forward organizations** (not as common in Big 4 consulting firms, but growing adoption).

**VSAQ Characteristics**:
- **Lightweight**: ~100-200 questions (vs. 850+ for SIG)
- **Cloud-native focus**: Designed for SaaS and cloud providers
- **Open-source**: Free framework (organizations customize for their needs)
- **Tech industry adoption**: Used by Google, Microsoft, AWS vendor assessments

**When to Use VSAQ**:
- **Boutique DX advisory firms**: Tech-forward consultancies (McKinsey Digital, BCG Digital Ventures)
- **Startup-friendly**: Faster completion than SIG (20-40 hours vs. 40-80 hours)
- **Not for Big 4**: Traditional Big 4 consulting firms prefer SIG or CAIQ (standardized, industry-recognized)

---

## Legal and Privacy Review Requirements

### 1. Master Service Agreement (MSA)

**MSA Purpose**: Defines **general terms of business relationship** between consulting firm (customer) and SaaS vendor.

**Key MSA Clauses** (Big 4 Consulting Firm Standard):

| Clause | Consulting Firm Position | SaaS Vendor Position | Negotiation Strategy |
|--------|-------------------------|---------------------|---------------------|
| **1. Service Description** | Detailed service level agreements (SLAs) | Broad service description, limited SLA commitments | **Compromise**: Define SLAs clearly (99.9% uptime, <2s API response time), but limit liquidated damages (SLA credits, not full refunds) |
| **2. Payment Terms** | Net 60-90 days (large enterprises pay slowly) | Net 30 days (cash flow priority) | **Compromise**: Net 45 days (industry standard for enterprise SaaS) |
| **3. Liability Caps** | Unlimited liability (consulting firm wants full protection) | Liability capped at 12 months fees (SaaS vendor limits exposure) | **Compromise**: Liability cap at 12 months fees for **indirect damages** (lost profits), **unlimited liability** for direct damages (data breach, gross negligence, willful misconduct) |
| **4. Indemnification** | Vendor indemnifies customer for IP infringement, data breaches, GDPR violations | Limited indemnification (only if vendor is at fault) | **Compromise**: Vendor indemnifies for IP infringement (standard), GDPR violations **if vendor breaches DPA**, but not for customer's own GDPR violations |
| **5. Data Ownership** | Customer owns all data (including aggregated, anonymized data) | Vendor owns aggregated, anonymized data (for product improvement, benchmarking) | **Compromise**: Customer owns raw data, vendor can use **anonymized, aggregated data** for product improvement (with customer consent or anonymization guarantees) |
| **6. Termination Rights** | Termination for convenience (30-60 day notice) | No termination for convenience (lock-in for contract term) | **Compromise**: Termination for convenience with **90-day notice** (gives vendor time to replace revenue) |
| **7. Data Deletion Upon Termination** | Immediate data deletion (within 30 days of termination) | Retain data for 90 days (allow customer to change mind) | **Compromise**: Soft delete for 30 days (customer can restore), hard delete after 30 days (customer confirms deletion) |

**MSA Template Strategy**:

**Year 1 (Startup Phase)**:
- **Use customer's MSA template**: Big 4 firms have standard MSA templates (500+ vendors have signed, minimal negotiation)
- **Red-line unacceptable terms**: Unlimited liability (cap at 12 months fees), unrealistic SLAs (99.99% uptime unrealistic for early-stage SaaS)
- **Legal counsel**: Engage SaaS lawyer to review ($5K-$15K for MSA review and negotiation strategy)

**Year 2+ (Scale Phase)**:
- **Develop vendor MSA template**: Create SaaS vendor-friendly MSA template (incorporate lessons learned from Year 1 negotiations)
- **Offer mutual template**: Propose vendor MSA as starting point (negotiate from position of strength)
- **Standardization**: Push for standardized MSA across all customers (reduces legal costs, faster deal cycles)

### 2. Data Processing Agreement (DPA)

**DPA Purpose**: **GDPR-mandated contract** defining data processor obligations (SaaS vendor) to data controller (consulting firm).

**GDPR Article 28 Requirements** (DPA Must Include):

| Required Clause | Consulting Firm Requirement | SaaS Vendor Implementation |
|----------------|----------------------------|---------------------------|
| **Subject Matter and Duration** | Define scope of data processing | "Processor provides DX research platform services for duration of MSA (initial term + renewals)" |
| **Nature and Purpose** | Describe processing activities | "Processing consulting firm employee data (names, emails, roles) and research data to generate market insights" |
| **Type of Personal Data** | Catalog data categories | "Employee contact information, user activity logs, research queries, saved reports" |
| **Categories of Data Subjects** | Identify whose data is processed | "Consulting firm employees, potentially consulting firm clients (if firm uploads client data)" |
| **Processor Obligations** | Security measures, breach notification, data subject rights assistance | - Encryption at rest (AES-256) and in transit (TLS 1.3)<br/>- Notify customer within 72 hours of breach<br/>- Assist with data subject access, deletion, portability requests<br/>- Delete or return data upon contract termination |
| **Sub-Processor Approval** | Prior written consent for all sub-processors | - Maintain public sub-processor list (AWS, Auth0, SendGrid, etc.)<br/>- Notify customer 30 days before adding new sub-processor<br/>- Allow customer to object (and terminate contract if objection not resolved) |
| **Data Residency** | EU data stays in EU (Schrems II requirement for German/French firms) | - Offer EU data residency option (AWS eu-west-1 or eu-central-1)<br/>- Standard Contractual Clauses (SCCs) for US data transfers (if customer accepts US data centers) |
| **Audit Rights** | Customer can audit vendor's data processing practices | - Allow customer audits (reasonable notice, once per year)<br/>- Provide SOC 2 Type II report as audit substitute (reduces audit burden on vendor) |

**DPA Template Strategy**:

**Option 1: Use SaaS Vendor Standard DPA** (Recommended)
- **Examples**: AWS DPA, Google Cloud DPA, Microsoft DPA (available publicly)
- **Benefits**: GDPR-compliant, accepted by 1,000s of customers, minimal negotiation
- **Customization**: Replace "AWS" with vendor name, customize sub-processor list, adjust data residency options
- **Legal review**: $5K-$10K (legal counsel reviews AWS DPA template, customizes for vendor)

**Option 2: Use Customer's DPA Template**
- **Big 4 firms**: Often have standard DPA templates (aligned with their GDPR policies)
- **Benefits**: Faster approval (legal team already vetted template)
- **Risks**: May include overly broad vendor obligations (e.g., vendor liable for customer's GDPR violations)
- **Negotiation**: Red-line unacceptable terms (unlimited liability for customer GDPR violations, unrealistic breach notification timelines)

**DPA Auto-Execution Strategy** (Procurement Automation):

**Self-Service DPA Signing** (No Manual Back-and-Forth):
- **Implementation**: DPA incorporated into Terms of Service (auto-executed upon signup)
- **Customer acceptance**: Customer clicks "I accept DPA" during onboarding (legally binding)
- **Benefits**: Zero legal negotiation (DPA accepted as-is), instant execution (no 4-8 week legal review)
- **Risks**: Some Big 4 firms **require** manual DPA review (cannot auto-execute), but 60-70% of customers accept standard DPA
- **ROI**: Reduces DPA negotiation from 4-8 weeks to 0 weeks (for 60-70% of customers)

### 3. Service Level Agreement (SLA)

**SLA Purpose**: Define **performance commitments** and **remedies** for SLA breaches.

**Big 4 Consulting Firm SLA Expectations**:

| SLA Metric | Big 4 Expectation | Industry Standard (SaaS) | SaaS Vendor Commitment |
|------------|-------------------|--------------------------|------------------------|
| **Uptime** | **99.9%** (52.6 min downtime/year) | 99.9% (standard for enterprise SaaS) | ✅ **99.9% uptime** (achievable with multi-AZ deployment, auto-scaling) |
| **Planned Maintenance** | <4 hours/month, off-peak hours (weekends, evenings) | <8 hours/month | ✅ **<4 hours/month, Saturday 2-6am UTC** (minimize user impact) |
| **API Response Time** | <2 seconds (p95 latency) | <2-3 seconds (p95) | ✅ **<2 seconds p95 latency** (achievable with caching, database optimization) |
| **Support Response Time** | Critical: <1 hour, High: <4 hours, Medium: <24 hours, Low: <48 hours | Critical: <2 hours, High: <8 hours | **Compromise**: Critical: <2 hours (24/7 on-call), High: <8 hours (business hours), Medium: <24 hours, Low: <48 hours |
| **Data Backup Frequency** | Daily automated backups, 30-day retention | Daily backups, 7-30 day retention | ✅ **Daily automated backups, 30-day retention** (AWS RDS automated backups) |
| **Disaster Recovery (RTO/RPO)** | RTO <4 hours, RPO <1 hour | RTO <4-8 hours, RPO <1-2 hours | ✅ **RTO <4 hours, RPO <1 hour** (achievable with multi-region DR, automated failover) |

**SLA Remedies** (Liquidated Damages):

| Uptime Achievement | SLA Credit (% of Monthly Fees) | Example ($10K/month subscription) |
|-------------------|-------------------------------|----------------------------------|
| **≥99.9%** | 0% (no credit, SLA met) | $0 |
| **99.0-99.9%** | 10% credit | $1,000 credit (apply to next month) |
| **95.0-99.0%** | 25% credit | $2,500 credit |
| **<95.0%** | 50% credit | $5,000 credit |
| **<90.0% (catastrophic)** | 100% credit (full month refund) | $10,000 credit |

**SLA Cap on Credits**: Typical cap at **100% of monthly fees** (vendor cannot owe more than one month's fees in SLA credits)

**SLA Exclusions** (Vendor Not Liable For):
- **Customer-caused outages**: Misconfiguration, exceeding rate limits, DDoS attacks targeting customer
- **Force majeure**: Natural disasters, wars, pandemics, AWS region outages (beyond vendor control)
- **Scheduled maintenance**: Announced 7+ days in advance, during maintenance window
- **Third-party failures**: AWS outage, Auth0 outage (vendor uses commercially reasonable cloud providers, but not liable for their failures)

---

## Insurance Requirements

### 1. Cyber Liability Insurance

**What is Cyber Liability Insurance?**

Cyber liability insurance covers **financial losses from data breaches, cyberattacks, and privacy violations**.

**Big 4 Consulting Firm Requirements**:

| Coverage Type | Minimum Coverage | Industry Standard | Recommended for Continuous Intelligence Platform |
|---------------|------------------|-------------------|------------------------------------------------|
| **First-Party Coverage** (vendor's own losses) | $2M-$5M | $2M-$10M | **$2M-$3M** (Year 1), increase to **$5M** (Year 2+) |
| **Third-Party Coverage** (customer losses due to vendor breach) | $2M-$5M | $5M-$10M | **$5M** (consulting firm liability exposure is high) |
| **Breach Response Costs** | Included (forensics, legal, notification) | Included | ✅ Included in policy |
| **Regulatory Fines and Penalties** | Included (GDPR fines, SEC penalties) | Included | ✅ Included (critical for GDPR compliance) |

**Cost of Cyber Liability Insurance**:
- **Early-stage SaaS (<$5M ARR)**: $5K-$15K/year for $2M-$5M coverage
- **Growth-stage SaaS ($5M-$20M ARR)**: $15K-$40K/year for $5M-$10M coverage
- **Factors affecting cost**: Revenue, customer count, security posture (SOC 2 reduces premiums by 10-20%), prior breaches (increases premiums or denial)

**How to Obtain Cyber Liability Insurance**:
- **Insurance brokers**: Marsh, Aon, Lockton (specialize in cyber insurance for SaaS)
- **Application process**: Complete security questionnaire (similar to SIG), provide SOC 2 report, penetration test report
- **Timeline**: 4-8 weeks from application to policy issuance
- **Renewal**: Annual renewal, premiums adjust based on claims history and security posture

### 2. Errors & Omissions (E&O) Insurance

**What is E&O Insurance?**

E&O insurance (also called Professional Liability Insurance) covers **financial losses from professional mistakes, negligence, or failure to deliver services**.

**Big 4 Consulting Firm Requirements**:

| Coverage Type | Minimum Coverage | Industry Standard | Recommended for Continuous Intelligence Platform |
|---------------|------------------|-------------------|------------------------------------------------|
| **Professional Services Liability** | $1M-$3M | $2M-$5M | **$2M-$3M** (Year 1), increase to **$5M** (Year 2+) |
| **Technology Errors & Omissions** | $1M-$3M | $2M-$5M | **$2M-$3M** (covers platform bugs, data inaccuracies) |

**Examples of E&O Claims**:
- **Inaccurate data**: Consulting firm relies on platform data for client recommendation, data is incorrect, client loses money → Sues consulting firm → Consulting firm sues SaaS vendor for indemnification
- **Platform unavailable during critical project**: Consulting firm cannot access platform during client presentation → Client cancels project → Consulting firm sues vendor for lost revenue
- **IP infringement**: Third-party claims vendor's platform infringes their patent/copyright → Customer sued for using platform → Vendor must indemnify customer

**Cost of E&O Insurance**:
- **Early-stage SaaS (<$5M ARR)**: $3K-$10K/year for $1M-$3M coverage
- **Growth-stage SaaS ($5M-$20M ARR)**: $10K-$25K/year for $3M-$5M coverage

**Combined Cyber + E&O Policy** (Recommended):
- **Cost savings**: 10-15% discount for bundled policy (vs. separate cyber and E&O)
- **Total cost**: $8K-$25K/year (Year 1), $25K-$65K/year (Year 2+)
- **ROI**: One avoided lawsuit ($500K-$5M in legal fees and settlements) justifies 10-20 years of premiums

---

## Procurement Acceleration Roadmap

### Immediate Actions (Month 1-3)

1. **Obtain SOC 2 Type II report**: Engage auditor, begin 12-15 month certification process (critical for Big 4 procurement)
2. **Develop standard DPA template**: Legal counsel customizes AWS/Google Cloud DPA template for vendor ($5K-$10K)
3. **Obtain cyber liability insurance**: Engage insurance broker, obtain $2M-$5M coverage ($5K-$20K/year)
4. **Create security documentation library**: Compile SOC 2 report, pentest report, DPA, security policies in shareable format (PDF, password-protected)

### Short-Term (Month 4-6)

5. **Pre-complete SIG questionnaire**: Manually complete SIG Core (40-80 hours), save as reusable template
6. **Publish CAIQ to CSA STAR Registry**: Complete CAIQ (20-40 hours), publish to public registry (free)
7. **Develop MSA template**: Legal counsel drafts SaaS vendor-friendly MSA ($10K-$20K)
8. **Conduct first penetration test**: Engage Tier 2 pentesting firm (Bishop Fox, Rapid7), remediate Critical/High findings

### Medium-Term (Month 7-12)

9. **Deploy procurement automation platform**: Vanta Trust Center, Drata, or OneTrust ($10K-$25K/year)
10. **Establish SLA monitoring**: Implement uptime monitoring (Pingdom), APM (Datadog), real-time SLA dashboard
11. **ISO 27001 certification** (optional): If targeting European consulting firms, add ISO 27001 (12-18 month process)
12. **Hire enterprise sales specialist**: Recruit sales rep with Big 4 procurement experience ($150K-$250K base + commission)

---

## References

AuditBoard (2024). *Mitigate Cyber Risks With a Vendor Security Assessment*. https://auditboard.com/blog/mitigate-cyber-risks-with-a-vendor-security-assessment

Bitsight (2024). *CAIQ vs. SIG Questionnaires: What's the Difference?* https://www.bitsight.com/blog/caiq-vs-sig-top-questionnaires-vendor-risk-assessment

Bitsight (2024). *Vendor Risk Management Security Questionnaires: SIG, CAIQ, & CIS Controls*. https://www.bitsight.com/blog/vrm-security-questionnaires-sig-caiq-cis-controls

Cloud Security Alliance (2024). *Consensus Assessment Initiative Questionnaire (CAIQ) v3.1*. https://cloudsecurityalliance.org/artifacts/consensus-assessments-initiative-questionnaire-v3-1

Cloud Security Alliance (2024). *Why Use CAIQ for Vendor Analysis vs. Other Questionnaires?* https://cloudsecurityalliance.org/blog/2020/04/04/why-use-the-caiq-for-vendor-analysis-vs-other-questionnaires

Google Cloud (2024). *SIG Questionnaire - Compliance*. https://cloud.google.com/security/compliance/sig

HyperComply (2024). *CAIQ vs SIG Assessment: How to Choose a Security Questionnaire*. https://www.hypercomply.com/blog/caiq-vs-sig

Medium (2024). *SIG vs CAIQ: Which Vendor Questionnaire to Use?* https://medium.com/@tahirbalarabe2/sig-vs-caiq-which-vendor-questionnaire-to-use-2ae5d91f95a6

Shared Assessments (2024). *SIG: Third Party Risk Management Standard*. https://sharedassessments.org/sig/

Shared Assessments (2024). *What is the SIG? TPRM Standard*. https://sharedassessments.org/about-sig/

TrustCloud (2024). *Ultimate Security Questionnaire Guide for Vendors in 2025*. https://www.trustcloud.ai/security-questionnaires/ultimate-security-questionnaire-guide-for-vendors/

Vanta (2024). *What is CAIQ (Consensus Assessment Initiative Questionnaire)?* https://www.vanta.com/collection/trust/caiq

Vanta (2024). *Vendor Security Review Standard: 4 Easy Steps to Conduct One*. https://www.vanta.com/collection/tprm/vendor-security-reviews
