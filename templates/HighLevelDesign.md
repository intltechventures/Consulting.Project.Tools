High-Level Design Doc (HLD) - General Purpose
====

Rationale: Numerous times, in my travels as a consultant, I've encountered organizations in which there is no established standard/template for what should be included in an HLD. Quite often (even in organizations that ostensibly have a template), the artifacts that architects and engineers produce devolve into a Wild Wild West of anything-goes. Consistency engenders repeatability - which can help reduce variabillity in quality - and thus, a worthy goal. 

Therefore, the intended purpose in sharing this...at least as a starting point for further customization by a client organization.

### STATUS: DRAFT

The goal of an HLD is to facilitate communication and coordination, both within internal teams and organizations - as well as serving as a tool for communication and coordination with external partners.

The HLD provides a consistent format for teams to assemble details - which supports a goal of being able to achieve some level of reuse of design artifacts - and is intended to provide sufficient information to Program/Project Management to be able to plan, estimate, and coordinate large-scale development efforts.  Additionally, an HLD servces as an effective mechanism to support Design Review and Architecture Governance efforts.

The ideal place for an HLD to live is in a Wiki or in a Markdown file (i.e. in the git repository for the project)

The target level of detail is to scope the effort, provide sufficient input to the estimation process, and to clearly articulate the ___How___ of an approach.  

The ___What___ should be ideally defined in a collection of User Stories, Use Cases, Feature Requests, etc. - or, minimally, in a Business Requirements Document (BRD).

Investing effort in the creation of the HLD is intended for larger-scoped projects/epics - that have some non-trivial number of unknowns, technical complexity, a high number of coordination points,  or extensive external integration/coordination requirements.


High Level Design Template
====
* Summary
  * Problem Statement
  * Current State
  * Future State
  * Proposed Approach
* Scope
  * In-Scope
  * Out-of-Scope
* Risks
* Issues
* Unknowns 
* Requirements / Traceability
  * Business Requirements (e.g. citations, links - seek to avoid duplication in this document)
  * Technical Requirements (NFRs)
  * Constraints
* Business Context
  * Business Processes
  * User Stories, Epics, Use Cases (e.g. citations, links - seek to avoid duplication in this document)
* Project Coordination 
  * Internal
  * External
* Solution Sizing Factors
  * Frequency
  * Volume
    * Users
    * Transactions
  * Storage
	* Data Storage
	* Archive/Retention Rules
* Estimates (aka ROM/SWAG)
* Architecture Views - Current State
  * Logical Views
  * Component Views
  * Sequence Views
  * Data Flow Views
  * Data Model Views
  * (additional views, as needed)
* Architecture Views - Future State
  * Logical Views
  * Component Views
  * Sequence Views
  * Data Flow Views
  * Data Model Views
  * (additional views, as needed)
* Key Architecture Design Elements
  * Inbound Data Processing
    * File Transfers,  Inbound
	* Message Queues, Inbound
	* Service Endpoints 
  * Outbound Data Processing
	* File Transfers,  Outbound
	* Message Queues, Outbound
	* Service Endpoints 
  * Internal Processing
  * Data Transformations
  * Business Rules
  * Reporting
  * Logging
  * Monitoring / Alerting
* Technical Dependencies
  * Internal 
  * External
* Performance Impact Assessment
  * User Interface Response Times
  * Web Service Response Times
  * Batch Job Durations
* Security Impact Assessment
  * Encryption-At-Rest
  * Encryption-In-Transit
  * Security Roles
  * Security Permissions
  * User Provisioning
  * Service Accounts
  * Authentication
  * Authorization
* Infrastructure Impact Assessment
  * Servers
    * CPU Utilization
    * Memory Utilization
  * Storage
    * Disk Capacity / Utilization
* Network Impact Assessment
  * Network Capacity / Bandwidth Utilization
  * DNS
  * Firewall / Threat Management Gateway
  * IP Restrictions (e.g. whitelist, blacklist)
* Operational Impact Assessment
  * Deployment 
  * Support Hours
  * Support Process
    * Tier-1
    * Tier-2
    * Tier-3
  * Monitoring / Alerting
  * Job Scheduling
  * Managed File Transfers
  * Web Services 
  * Message Queues
  * Data Storage
  * Backup/Recovery
* Critical Testing Scenarios
* Terminology
* Supplemental Material
  * References
  * Citations
    * Policies
	* Principles
	* Standards
	* Specifications
    * Vendor Contract
* Key Contacts
  * Design Reviewers/Approvers
  * Business Stakeholders
  * Project Management
  * Key Subject Matter Experts (SMEs)
    * Business Context SMEs
    * IT SMEs
    * Vendor Business SMEs
  * Procurement
  * Finance/Budget/Funding
  * Operations
  * IT Delivery Team
  * IT Operations
  * IT Support
  * Architecture
    * Security
    * Enterprise
    * Solution
* Version History


Suggested Additional Useful References
====
* https://github.com/intltechventures/Consulting.Project.Tools/blob/master/taxonomies/ClassificationCodes.md

* http://pubs.opengroup.org/architecture/togaf9-doc/arch/

* https://www.zachman.com/about-the-zachman-framework
  * https://en.wikipedia.org/wiki/Zachman_Framework

* https://en.wikipedia.org/wiki/Software_requirements_specification

* [830-1998 - IEEE Recommended Practice for Software Requirements Specifications](https://standards.ieee.org/findstds/standard/830-1998.html)
