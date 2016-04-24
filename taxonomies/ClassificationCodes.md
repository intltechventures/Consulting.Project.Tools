# Artifact Classification Codes - A Taxonomy
=======
Taxonomy: a scheme of classification

Copyright 2016, Kelvin D. Meeks
Release under The MIT License (MIT)

Useful for organizing artifacts and details for large-scale projects (such as Proposal Development, RFP Responses, Architecture, Requirements, High Level Design, Detail Level Design, Test Plans, Operations, Training, etc.)  

Author: Kelvin D. Meeks   
kmeeks@intltechventures.com  
http://www.intltechventures.com  

# STATUS: This is a work-in-progress, status = __WORKING DRAFT__
### TO-DO: 
* Rationalize Numbering Schemes To Be More Consistent Within A Category, And Across Sub-Categories

This is an illustrative (but not exhaustive) set of numeric classification codes to provide general guidance, across the enterprise, in devising an approach to artifact numbering & categorization.

My original draft of this was for a particular client engagement back in 2004-2005.  I plan to continue refactoring and evolving this to provide a better organization and grouping.  However, since this may give someone a useful starting point, I'm publishing it as-is for now.

___
Usage: Consider for a moment that you have been assigned a role on a massively large project. How to you even begin to organize your thoughts, artifacts, and workstreams? Now, imagine that these kind of massively large (or even just fairly large) projects occur with some frequency - either within your organization - or in different organizations, over the arc of your career. Being able to know where informaiton is stored - and how it is decomposed is the the hallmark of establishing a repeatable process. Abandon your ad hoc wasteful re-invent the wheel approach - and consider whether it might be beneficial to you (and your colleagues) to adopt some rational, well organized, way of identifying artifacts - such that you could easily move across projects/teams - and quickly find the relevant informaion you need. Also consider, how much easier it would be to 'harvest' or 'borrow' pre-existing arifacts from previous efforts. Now you may have a glimmer of a glimpse into why I believe having a system of naming things is important. 

The codes are not intended as the final designation for a given artifact. For each artifact, you could simply append a sequentially assigned discrimantor - or a unique document name. The utility is in being able to quickly (an consistently) search across a large corpus of artifacts and document (potentially spanning multiple very large projects) - and locate those artfiacts which are germaine to your focus. 

For example:   
A document with a prefix of "0000.1010.17_some_document_name"  
...would reside in a directory structure \0000\1010  
...and would be the 17th document in a collection of documents that desribed the various Products that a compony offered.
___

# 0000.xxxx Business Context
* 0000.1xxx Business Scope
* 0000.1000 Business Structure
* 0000.1010	Business Products
* 0000.1020 Business Services
* 0000.1030 Business Roadmap
* 0000.1040 Business Plan
* 0000.1050 Busienss Geographical Areas of Operation
* 0000.1060 Business Partners
* 0000.1070 Business Competitive Forces
* 0000.1080 Business Market Analysis (e.g. Share, Growth Projections, etc.)
* 0000.1090 Business Constraints (e.g. Legal, Regulatory)
* 0000.1100 Business Risks (e.g. Resources, Capital, Funding, Skills, Materials, Costs, etc.)
* 0000.1110 Business SWOT (Strengths, Weaknesses, Opportunities, Threats)

* 0000.2xxx Financial Structure
* 0000.2000 Chart of Accounts
* 0000.2010 Transaction Types
* 0000.2020 Accounting Processes
* 0000.2030 Financial Reporting 
* 0000.2040 Tax Calculations (e.g. Local, County, State, National)
* 0000.2050 Currency Exchange Considerations

* 0000.3000 Future State

* 0000.4000 Business Architecture
* 0000.4100 Important Information Flows
* 0000.4200 Key Processes
* 0000.4300 Critical Business Rules
* 0000.4400 Important Key Business Epics 

# 0100.xxxx Enterprise Architecture
* 0100.0100 Enterprise System Context
* 0100.0200 Enterprise Diagram Views
* 0100.0300 Enterprise System Components
* 0100.0400 Enterprise Data Model 
* 0100.0500 Enterprise Data Governance
* 0100.0600 Enterprise Data Dictionary
* 0100.0700 Enterprise Ontologies
* 0100.0800 Enterprise Canonical Message Models
* 0100.1000 Enterprise Software Asset Inventory
* 0100.2000 Enterprise Third-Party External Services

# 0200.xxxx Common Services
* 0200.1010 Databases
* 0200.1020 Application Servers
* 0200.1030 Message Queues
* 0200.1040 Email
* 0200.1050 Workflow
* 0200.1060 Scheduling
* 0200.1070 Distributed Computing 
* 0200.1080 Manage File Transfers
* 0200.1090 Service Discovery

* 0200.2000 Security
* 0200.2010 Encryption Services
* 0200.2020 Compression Services
* 0200.2030 Auditing
* 0200.2040 Authentication
* 0200.2050 Authorization

* 0200.3000 Log Management
* 0200.3010 Log Event Capture
* 0200.3020 Log Aggregation
* 0200.3030 Log Event Streaming
* 0200.3040 Log Visualization
* 0200.3050 Log Event Notifications


# 0300.xxxx Data Center Facilities
* 0300.1000 Physical Access Security
* 0300.1100 Electrical
* 0300.1200 Telecommunications
* 0300.1300 Data Storage
* 0300.1400 Heating & Cooling
* 0300.1500 Air Quality
* 0300.1600 Sensors
* 0300.1700 Alarms
* 0300.9000 Disaster Recovery

# 0400.xxxx Infrastructure & network
* 0400.0010 Network Topology
* 0400.0020 Content Distribution Network (CDN)
* 0400.0030 DNS
* 0400.0040 Load Balancing
* 0400.0050 Firewalls
* 0400.0060 Routers
* 0400.0070 Hardware Accelerators - Encryption
* 0400.0080 Hardware Accelerators - Compression

* 0400.2000 Storage
* 0400.2010 Network Attached Storage Devices

* 0400.3000 Servers
* 0400.3010 Application Servers
* 0400.3020 Web Servers
* 0400.3030 Database Servers
* 0400.3040 Cache servers

* 0400.9000 Disaster Recovery (DR)
	
# 0900.xxxx Disaster Recovery (DR)
* 0900.1000 DR Infrastructure
* 0900.2000 Backup & Recovery Procedures

# 1000.0000 Non Functional Requirements
* 1000.0010 Accessibility
* 1000.0020 Audit and Control
* 1000.0030 Availability
* 1000.0040 Backup	
* 1000.0050 Capacity
* 1000.0060 Certification
* 1000.0070 Compliance
* 1000.0080 Configuration management
* 1000.0090 Dependencies
* 1000.0100 Deployment
* 1000.0110 Documentation
* 1000.0120 Disaster Recovery
* 1000.0130 Efficiency
* 1000.0140 Effectiveness
* 1000.0150 Escrow
* 1000.0160 Extensibility
* 1000.0170 Failure Management
* 1000.0180 Fault Tolerance
* 1000.0190 Interoperability
* 1000.0200 Legal and Licensing
* 1000.0210 Maintainability
* 1000.0220 Modifiability
* 1000.0230 Network Topology
* 1000.0240 Open Source (Vitality, License Suitability, License Confirmation, Governance)
* 1000.0250 Operability
* 1000.0260 Performance
* 1000.0270 Platform Compatibility
* 1000.0280 Price
* 1000.0290 Privacy
* 1000.0300 Portability
* 1000.0310 Quality
* 1000.0320 Recovery
* 1000.0330 Reliability
* 1000.0340 Reporting
* 1000.0350 Resilience
* 1000.0360 Resource Constraints
* 1000.0370 Response Time
* 1000.0380 Robustness
* 1000.0390 Safety
* 1000.0400 Security
* 1000.0410 Standards
* 1000.0420 Stability
* 1000.0430 Supportability
* 1000.0440 Testability
* 1000.0450 Usability

# 2000.xxxx User Interface
* 2000.1100 Look & Feel Style Guides
* 2000.1200 Internationalization
* 2000.1300 Site Map
* 2000.1400 User Help

* 2000.2000 Common UI Elements
* 2000.2010 Logos 
* 2000.2020 Privacy Policy
* 2000.2030 Contact Us
* 2000.2040 Company 
* 2000.2050 About
* 2000.2060 Our Products
* 2000.2070 Our Services
* 2000.2080 Newsletter Sign-up
* 2000.2090 Blog
* 2000.2100 Latest News
* 2000.2110 Login
* 2000.2120 Logout

* 2000.3000 UI Messages
* 2000.3010 Invalid User ID
* 2000.3020 Invalid Password
* 2000.3030 Contact Support
* 2000.3040 Page Not Found
* 2000.3050 Unauthorized Access
* 2000.3060 Invalid Action Attempted

* 2000.4000 Data Validation Rules

* 2000.5000 Application Functionality

* 2000.6000 Admin Functionality


# 3000.xxxx Documentation
* 3000.0000 Operation Procedures
* 3000.1000 Runbooks

* 3000.2000 User Guides
* 3000.2100 Admin Guides
* 3000.2200 Developer Guides

* 3000.3000 Training Material
* 3000.3100 Train-The-Trainer
* 3000.3200 End User Training

# 4000.0000 Reporting
* 4000.0010 Report Design Assets/Tools/Templates
* 4000.0020 Operational Reporting
* 4000.0030 Management Reporting
* 4000.0040 Compliance Reporting
* 4000.0050 Audit Reporting
* 4000.0060 System Stats
* 4000.0070 Dashboards

# 5000.xxxx Operations
* 5000.0100 Operations Procedures
* 5000.0200 Operations Runbooks
* 5000.0300 Managed File Transfers
* 5000.0400 Operations / Systems Monitoring
* 5000.0500 Alerts & Notifications

* 5000.1000 Job Schedules
* 5000.1010 Special (ad-hoc, on-demand)
* 5000.1020 daily
* 5000.1030 weekly
* 5000.1040 bi-weekly
* 5000.1050 monthly
* 5000.1060 bi-monthly
* 5000.1070 quarterly
* 5000.1080 annually
* 5000.1090 semi-annually
* 5000.1100 irregularly scheduled

* 5000.2000 Conversions

* 5000.3000 Backup Processes

* 5000.4000 Restore Processes

* 5000.9000 Disaster Recovery

# 6000.xxxx Security
* 6000.1000 User Provisioning
* 6000.1100 User Authentication
* 6000.1200 User Authorization
* 6000.1300 Single-Sign-On (SSO)
* 6000.1400 Federated Single-Sign-On (SSO)
* 6000.1500 Password Reset
* 6000.1600 User Profile Management
* 6000.1700 Access Control List
* 6000.2000 LDAP
* 6000.2100 Automated Security Processes
* 6000.2110 Intrusion Detection
* 6000.2120 File Monitoring
* 6000.2130 Anti-Virus
* 6000.2140 Firewall
* 6000.2150 Denail of Service prevention  

* 6000.3000 Payment Card Institute (PCI)
	
# 7000.xxxx Core Application Requirements

# 8000.xxxx Integrations
* 8100.xxxx Real-Time Services
* 8100.0000 Conversions
* 8100.1000 Legacy Systems
* 8100.2000 Customer Master
* 8100.2100 General Ledger
* 8100.2200 Financial
* 8100.2300 Inventory
* 8100.2400 File Maintenance
* 8100.2500 Validation
* 8100.2600 Membership
* 8100.2700 External Third Party

* 8200.xxxx In-bound Batch Jobs
* 8200.0000 Conversions
* 8200.1000 Legacy Systems
* 8200.2000 Customer Master
* 8200.2100 General Ledger
* 8200.2200 Financial
* 8200.2300 Inventory
* 8200.2400 File Maintenance
* 8200.2500 Validation
* 8200.2600 Membership
* 8200.2700 External Third Party

* 8300.xxxx Out-bound Batch Jobs
* 8300.1000 Conversions	 
* 8300.1000 Legacy Systems
* 8300.2000 Customer Master
* 8300.2100 General Ledger
* 8300.2200 Financial
* 8300.2300 Inventory
* 8300.2400 File Maintenance
* 8300.2500 Validation
* 8300.2600 Membership
* 8300.2700 External Third Party

* 8400.xxxx Internal Batch Jobs
* 8400.0000 Conversions
* 8400.1000 Legacy Systems
* 8400.2000 Customer Master
* 8400.2100 General Ledger
* 8400.2200 Financial
* 8400.2300 Inventory
* 8400.2400 File Maintenance
* 8400.2500 Validation
* 8400.2600 Membership
* 8400.2700 External Third Party

# Additional Idea References:   
Dewey Decimal System    
* http://www.gutenberg.org/files/12513/12513-h/12513-h.htm

Source for list of NFRs  
* http://en.wikipedia.org/wiki/Non-functional_requirement