# Artifact Classification Codes - A Taxonomy

Copyright 2016-2019, International Technology Ventures, Inc.  
Releassed under [The MIT License](https://opensource.org/licenses/MIT)

A potentially useful resource for helping large organizations/ teams better organize artifacts and details for large-scale projects (such as Proposal Development, RFP Responses, Architecture, Requirements, High Level Design, Detail Level Design, Test Plans, Operations, Training, etc.)  


Author: Kelvin D. Meeks   
* kmeeks@intltechventures.com  
* http://www.intltechventures.com    

### STATUS: __WORKING DRAFT__

**July 24, 2019 Update:** A major reworking of the numbering scheme, structure, and organization has been completed. I'll let this bake for awhile and then come back for the next iteration of improvements and elaboration.  But, it is in much better / more usable shape, now. 

**TO-DO**
* Continue elaboration, in particular - Business sections
* Better align number grouping around common activities that are often found in different areas  (e.g. Governance, Principles, Policies, Standards, Specifications, etc.)
* Consider the question/challenges of usage: project-specific vs. application vs. enterpirse
* Review for posssible addition of sections/details for Engineering, Quality Assurance, Audit, Compliance

___
This is an **illustrative (but not exhaustive)** set of alphanumeric classification codes to provide general guidance, across the enterprise, in devising an approach to organizing artifacts - with guidance toward a consistent identification strategy.

Goal & Purpose: To improve the efficiency of team membersin being able to locate/communicate/reuse  artifacts - within a project, across projects, and across an enterpise - and to be able to easily locate  artificats of a similar type/cateogry in other projects / business groups / applicaiton teams.


My ideas for this were stimulated and informed by the practical and real-world **massive pain & challenges** of {creating | organizing | sharing | finding | maintaining} documents during the following periods:
- 1995-1996, $100M+ project budget, telecom industry, digital transformation & modernization project 
- 2002-2003, $100M+ project budget, finance industry, digital transformation & modernization project
- 2004-2005, helping establish a new start-up's engineering & architecture structure, leading new product development
- 2006-2009, mentoring & leading the effort to establish a new enteprise architectture, team within a state government agency
- 2009-2013, $100M+ project budget, insurance industry, digital transformation & modernization project
- 2020-2021, $10B+ ARR company, insurance industry, establishing Enterprise Architecture tool standards for organizing content and design artifacts 

I plan to continue refactoring and evolving this to provide a better organization and grouping.  However, since this may give someone a useful starting point, I'm publishing it as-is for now.

___
**Usage Senarios:**

Consider for a moment that you are assigned a role on a massively large project. How do you even begin to organize your thoughts, artifacts, and work-streams?  

Now, imagine that these kinds of massively large (or even just fairly large) projects occur with some frequency - either within your organization - or in different organizations, over the arc of your career. 

Being able to know where information is stored - and how it is decomposed is the the hallmark of establishing a repeatable process. 

Abandon your ad hoc, wasteful, re-invent-the-wheel, approaches of the past - and consider whether it might be beneficial to you (and your colleagues) to adopt some rational, well organized, way of identifying artifacts - such that you could easily move across projects/teams - and quickly find the relevant information you need. 

Also consider, how much easier it would be to 'harvest' or 'borrow' pre-existing artifacts from previous efforts. 

Now you may have a glimmer of a glimpse into why I believe having a system of naming things is important. 

Another possible usage for the classification codes - as keywords associated to documents - which could provide a consistent naming convention for tagging and searching for similar types of content.

These codes are not intended as the final designation for a given artifact. For each artifact, you could simply append a sequentially assigned discriminator - or a unique document name. The utility is in being able to quickly know where to search across a large corpus of artifacts and documents (potentially spanning multiple very large projects) - and locate those artifacts which are germaine to your need/focus. 

For example:   
* A document named  with a prefix of "AA.00.10.010 - some document_name"  
* might reside in a directory structure \AA\00\10\010\
* or, even it were to be dumped in some higher-level folder - by virtue of the prefix, the sort-ordering of the directory would make locating a document for a given subject matter a relatively painless task.
* The "AA.00.10.010" prefix would clearying inicate that this document was related to Business Definition > Core Aspects > Business Scope

Over time, teams would come to know the numbering scheme - and would be able to easily locate documents based on their growing familiarity with the taxonomy. 
___


## AA.xx.xx.xxx - Business Definition

### AA.00.xx.xxx - Business: Core Aspects 

- AA.00.10.000 Business Description
  + AA.00.10.010 Business Scope
  + AA.00.10.020 Business Leadership
  + AA.00.10.030 Business Structure
  + AA.00.10.040 Org Charts

- AA.00.20.000 Business Model
  + AA.00.20.010 Business Capabilities
  + AA.00.20.020 Business Functions
  + AA.00.20.030 Business Products
  + AA.00.20.040 Business Services
  + AA.00.20.050 Business Key Process Areas (KPAs)
  + AA.00.20.060 Business Key Process Indicators (KPIs)

- AA.00.30.000 Business Strategy Planning
  + AA.00.30.010 Business Vision
  + AA.00.30.020 Business Principles
  + AA.00.30.030 Business Strategy
  + AA.00.30.040 Business Roadmap
  + AA.00.30.050 Business Planning

- AA.00.40.000 Market Definition
  + AA.00.40.010 Segments
  + AA.00.40.020 Locations
  + AA.00.40.030 Demographics

- AA.00.50.000 Business Relationships
  + AA.00.50.010 Business Customers
  + AA.00.50.020 Business Suppliers
  + AA.00.50.030 Business Vendors
  + AA.00.50.040 Business Joint Ventures
  + AA.00.50.050 Business Partners 
  + AA.00.50.060 Business Subsidiaries

- AA.00.60.000 Business Market Analysis
  + AA.00.60.010 Business Competitors 
  + AA.00.60.020 Business Competitive Forces
  + AA.00.60.030 Business Market Analysis (e.g. Share, Growth Projections, etc.)
  + AA.00.60.040 Business Constraints (e.g. Legal, Regulatory)
  + AA.00.60.050 Business Risks (e.g. Resources, Capital, Funding, Skills, Materials, Costs, etc.)
  + AA.00.60.060 Business SWOT (Strengths, Weaknesses, Opportunities, Threats)


### AA.10.xx.xxx  - Business: Financial Aspects

- AA.10.00.000 Finance
  + AA.10.10.000 Finance Organization
    * AA.10.10.010 Financial Structure
    * AA.10.10.020 Chart of Accounts
    * AA.10.10.030 Transaction Types
    * AA.10.10.040 Accounting Processes
    * AA.10.10.050 Financial Reporting 
  + AA.10.20.000 Tax Matters
    * AA.10.20.010 Tax Rates Local
	* AA.10.20.020 Tax Rates Country&
	* AA.10.20.030 Tax Rates State
	* AA.10.20.040 Tax Rates National
	* AA.10.20.050 Tax Rates VAT
	* AA.10.20.060 Tax Rates Foreign
  + AA.10.30.000 Foreign Currency 
    * AA.10.30.010 Currency Exchange Rates
  + AA.10.40.000 Customer Revenue/Cost 
    * AA.10.40.010 Customer Acquisition Costs
    * AA.10.40.020 Customer Lifetime Revenue Projections
    * AA.10.40.030 Customer Lifetime Cost Projections
    * AA.10.40.040 Customer Retention Projections
  + AA.10.50.000 Operating Costs
  + AA.10.60.000 Other Revenue Sources
    * AA.10.60.010 Ad Sales
    * AA.10.60.020 Affiliate Sales Channels



### AA.20.xx.xxx - Business: Architecture, Current

- AA.20.00.000 Business Architecture - Current State
  + AA.20.10.000 Business Information Flows
  + AA.20.20.000 Key Processes
  + AA.20.30.000 Critical Business Rules
  + AA.20.40.000 Key Business Epics


### AA.30.xx.xxx - Business: Architecture, Future

- AA.30.00.000 Business Architecture - Future State



## AB.xx.xx.xxx Product Management

- AB.00.10.000 Product Backlog
- AB.00.20.000 Sprint Planning
- AB.00.30.000 Sprint Organization
- AB.00.40.000 Sprint Metrics



## AC.xx.xx.xxx Architecture: Enterprise

- AC.00.10.000 Enterprise System Context
- AC.00.20.000 Enterprise Diagram Views
- AC.00.30.000 Enterprise System Components
- AC.00.40.000 Enterprise Software Asset Inventory
- AC.00.50.000 Enterprise Third-Party External Services


## AD.xx.xx.xxx Architecture: Data 

- AD.10.10.000 Enterprise Data Dictionary
- AD.10.20.000 Enterprise Ontologies
- AD.10.30.000 Enterprise Canonical Message Models
- AD.10.40.000 Enterprise Data Model 
- AD.10.99.000 Enterprise Data Governance


## AE.xx.xx.xxx Architecture: Security

- AE.10.00.000 User Management
  + AE.10.00.010 User Provisioning
  + AE.10.00.020 User Profile Management
  + AE.10.00.999 User De-Provisioning


- AE.10.10.000 User Access
  + AE.10.10.010 Access Control List
  + AE.10.10.020 LDAP
  + AE.10.10.030 User Authentication, 2FA
  + AE.10.10.040 User Authorization
  + AE.10.10.050 Single-Sign-On (SSO)
  + AE.10.10.060 Federated Single-Sign-On (SSO)
  + AE.10.10.070 Password Reset


- AE.20.00.000 Defense in Depth
  + AE.20.10.000 Intrusion Detection
  + AE.20.20.000 File Monitoring
  + AE.20.30.000 Anti-Virus
  + AE.20.40.000 Firewall
  + AE.20.50.000 Web Access Firewall (WAF)
  + AE.20.60.000 Data Loss Protection (DLP)
  + AE.20.70.000 Network Traffic Monitoring
  + AE.20.80.000 User Activity Monitoring
  + AE.20.90.000 Device Activity Monitoring


- AE.70.00.000 Healthcare Regulations and Compliance
  + AE.70.10.000 HIPAA
  + AE.70.20.000 CMS
  + AE.70.30.000 HHS
  + AE.70.40.000 


- AE.80.00.000 Payment Card Institute (PCI-DSS) Compliance


- AE.90.00.000 Data Privacy Regulations & Compliance
  + AE.90.10.000 [EU General Data Protection Regulation (GDPR)](https://en.wikipedia.org/wiki/General_Data_Protection_Regulation)
  + AE.90.20.001 United States Data Privacy Laws
    * AE.90.20.001 [California Consumer Privacy Act (CCPA)](https://en.wikipedia.org/wiki/California_Consumer_Privacy_Act)
  + AE.90.20.086 United Kingdom



## AF.xx.xx.xxx Architecture: Integration

- AF.00.00.000 Integration Patterns
  + AF.00.10.000 Managed File Transfer (MFT) Patterns
  + AF.00.20.000 Batch Processing Patterns
  + AF.00.30.000 Service/API Patterns
  + AF.00.40.000 Messaging Patterns
  + AF.00.50.000 Streaming Patterns
  + AF.00.60.000 Event Driven Architecture (EDA) Patterns

- AF.10.00.000 Real-Time Services
  + AF.10.10.000 Conversions
  + AF.10.20.000 Legacy Systems
  + AF.10.30.000 Customer Master
  + AF.10.40.000 General Ledger
  + AF.10.50.000 Financial
  + AF.10.60.000 Inventory
  + AF.10.70.000 File Maintenance
  + AF.10.80.000 Validation
  + AF.10.90.000 Membership
  + AF.10.99.000 External Third Party  

- AF.20.00.000 In-bound Batch Jobs
  + AF.20.10.000 Conversions
  + AF.20.20.000 Legacy Systems
  + AF.20.30.000 Customer Master
  + AF.20.40.000 General Ledger
  + AF.20.50.000 Financial
  + AF.20.60.000 Inventory
  + AF.20.70.000 File Maintenance
  + AF.20.80.000 Validation
  + AF.20.90.000 Membership
  + AF.20.99.000 External Third Party  

- AF.30.00.000 Out-bound Batch Jobs
  + AF.30.10.000 Conversions	 
  + AF.30.20.000 Legacy Systems
  + AF.30.30.000 Customer Master
  + AF.30.40.000 General Ledger
  + AF.30.50.000 Financial
  + AF.30.60.000 Inventory
  + AF.30.70.000 File Maintenance
  + AF.30.80.000 Validation
  + AF.30.90.000 Membership
  + AF.30.99.000 External Third Party  

- AF.40.00.000 Internal Batch Jobs
  + AF.40.10.000 Conversions
  + AF.40.20.000 Legacy Systems
  + AF.40.30.000 Customer Master
  + AF.40.40.000 General Ledger
  + AF.40.50.000 Financial
  + AF.40.60.000 Inventory
  + AF.40.70.000 File Maintenance
  + AF.40.80.000 Validation
  + AF.40.90.000 Membership
  + AF.40.99.000 External Third Party  

- AF.50.00.000 Event Messaging
  + AF.50.10.000 Event Types
  + AF.50.20.000 Event Message Definitions
  + AF.50.30.000 Event Producers
  + AF.50.40.000 Event Subscribers


## AG.xx.xx.xxx Architecture: Shared Services

- AG.00.10.000 Databases
- AG.00.20.000 Application Servers
- AG.00.30.000 Message Queues
- AG.00.40.000 Email
- AG.00.50.000 Workflow
- AG.00.60.000 Scheduling
- AG.00.70.000 Caching
- AG.00.80.000 Manage File Transfer (MFT)
- AG.00.90.000 Service Discovery

- AG.10.00.000 Security
  + AG.10.10.000 Encryption Services
  + AG.10.20.000 Compression Services
  + AG.10.30.000 Audit Services
  + AG.10.40.000 Authentication Services
  + AG.10.50.000 Authorization Services
  + AG.10.60.000 Provisionging Services

- AG.20.00.000 Log Management
  + AG.20.10.000 Log Event Capture
  + AG.20.20.000 Log Aggregation
  + AG.20.30.000 Log Event Streaming
  + AG.20.40.000 Log Visualization
  + AG.20.50.000 Log Event Notifications
  + AG.20.60.000 Log Event Alert Generation


## AH.xx.xx.xxx Architecture: Infrastructure

- AH.00.00.000 Facilities
  + AH.00.10.000 Physical Access Security
  + AH.00.20.000 Electrical
  + AH.00.30.000 Telecommunications
  + AH.00.40.000 Heating & Cooling
  + AH.00.50.000 Air Quality
  + AH.00.60.000 Sensors
  + AH.00.70.000 Alarms
  + AH.00.80.000 Facilities Disaster Recovery

- AH.10.00.000 Telecom
- AH.10.10.000 Network Topology
- AH.10.20.000 Content Distribution Network (CDN)
- AH.10.30.000 DNS
- AH.10.40.000 Load Balancing
- AH.10.50.000 Firewalls
- AH.10.60.000 Routers
- AH.10.70.000 Hardware Accelerators - Encryption
- AH.10.80.000 Hardware Accelerators - Compression  

- AH.20.00.000 Data Storage
  + AH.20.10.000 On Premise Storage
  + AH.20.20.000 Network Attached Storage Devices  
  + AH.20.30.000 Cloud Service Storage
    * AH.20.30.010 Cloud Service Storage, Hot
    * AH.20.30.020 Cloud Service Storage, Warm
    * AH.20.30.030 Cloud Service Storage, Cold
    * AH.20.30.030 Cloud Service Storage, Archive

- AH.30.00.000 Servers/VMs/Containers
  + AH.30.10.000 Servers, General Purpose
  + AH.30.20.000 Servers, Application
  + AH.30.30.000 Servers, Web Servers
  + AH.30.40.000 Servers, Database
  + AH.30.50.000 Servers, Cache
  + AH.30.60.000 Servers, Utility  
	
- AH.40.00.000 Cloud Infrastructure
  + AH.40.10.000 Security
  + AH.40.20.000 Networking
  + AH.40.30.000 Storage
  + AH.40.40.000 Compute
  + AH.40.50.000 Data & Analytics
  + AH.40.60.000 APIs
  + AH.40.70.000 Messaging
  + AH.40.80.000 DevOps
  + AH.40.90.000 Monitoring


## AI.xx.xx.xxx Disaster Recovery (DR)

- AI.00.10.000 DR Infrastructure
- AI.00.20.000 Backup & Recovery Procedures  
 
 
## AJ.xx.xx.xxx Non-Functional Requirements (NFRs)

- AJ.00.00.001 Accessibility
- AJ.00.00.002 Audit and Control
- AJ.00.00.003 Availability
- AJ.00.00.004 Backup	
- AJ.00.00.005 Capacity
- AJ.00.00.006 Certification
- AJ.00.00.007 Compliance
- AJ.00.00.008 Configuration management
- AJ.00.00.009 Dependencies
- AJ.00.00.010 Deployment
- AJ.00.00.011 Documentation
- AJ.00.00.012 Disaster Recovery
- AJ.00.00.013 Efficiency
- AJ.00.00.014 Effectiveness
- AJ.00.00.015 Escrow
- AJ.00.00.016 Extensibility
- AJ.00.00.017 Failure Management
- AJ.00.00.018 Fault Tolerance
- AJ.00.00.019 Interoperability
- AJ.00.00.020 Legal and Licensing
- AJ.00.00.021 Maintainability
- AJ.00.00.022 Modifiability
- AJ.00.00.023 Network Topology
- AJ.00.00.024 Open Source (Vitality, License Suitability, License Confirmation, Governance)
- AJ.00.00.025 Operability
- AJ.00.00.026 Performance
- AJ.00.00.027 Platform Compatibility
- AJ.00.00.028 Price
- AJ.00.00.029 Privacy
- AJ.00.00.030 Portability
- AJ.00.00.031 Quality
- AJ.00.00.032 Recovery
- AJ.00.00.033 Reliability
- AJ.00.00.034 Reporting
- AJ.00.00.035 Resilience
- AJ.00.00.036 Resource Constraints
- AJ.00.00.037 Response Time
- AJ.00.00.038 Robustness
- AJ.00.00.039 Safety
- AJ.00.00.040 Security
- AJ.00.00.041 Standards
- AJ.00.00.042 Stability
- AJ.00.00.043 Supportability
- AJ.00.00.044 Testability
- AJ.00.00.045 Usability  


## AK.xx.xx.xxx User Interface Design

- AK.00.10.000 Look & Feel Style Guides
- AK.00.20.000 Internationalization

- AK.10.10.000 Common UI Elements
- AK.10.20.000 Logos 

- AK.20.10.000 Standard Public Content
  + AK.20.10.010 Privacy Policy
  + AK.20.10.020 Contact Us
  + AK.20.10.030 Company 
  + AK.20.10.040 About
  + AK.20.10.050 Products
  + AK.20.10.060 Services
  + AK.20.10.070 Newsletter
  + AK.20.10.080 Blog
  + AK.20.10.090 Latest News
  + AK.20.10.100 Site Map	
  + AK.20.10.110 Help  
  + AK.20.10.120 Support  
  + AK.20.10.130 Report a Bug
  

- AK.20.20.000 Authenticated Access
  + AK.20.20.010 Login
  + AK.20.20.020 Logout  

- AK.30.10.000 Common UI Error Messages
  + AK.30.10.010 Invalid User ID
  + AK.30.10.020 Invalid Password
  + AK.30.10.030 Contact Support
  + AK.30.10.040 Page Not Found
  + AK.30.10.050 Unauthorized Access
  + AK.30.10.060 Invalid Action Attempted  

- AK.40.00.000 Common UI Data Validation Rules  
  + AK.40.10.000 General Validation
    * AK.40.10.010 Date Validation
    * AK.40.10.020 Email Validation
    * AK.40.10.030 URL Validation
	* AK.40.10.040 Phone Number Validation	
	* AK.40.10.050 Credit Card Validation 	
	* AK.40.10.060 Tax ID (SSN or TIN) Validation  
  + AK.40.20.000 Address Validation 
    * AK.40.20.010 Street Validation  
    * AK.40.20.020 City Validation
    * AK.40.20.030 Postal Code Validation  
    * AK.40.20.040 Country Validation
    * AK.40.20.050 Residence Address Validation
    * AK.40.20.060 Business Address Validation  

  
- AK.50.00.000 Application-Specific UI Functionality  

- AK.60.00.000 Admin-Specific UI Functionality  


## AL.xx.xx.xxx Reporting

### AL.00.xx.xxx General Reporting

- AL.00.10.000 Report Design Assets/Tools/Templates
- AL.00.20.000 Operational Reporting
- AL.00.30.000 Management Reporting
- AL.00.40.000 Financial Reporting
- AL.00.50.000 Compliance Reporting
- AL.00.60.000 Audit Reporting
- AL.00.70.000 System Monitoring Reporting
- AL.00.80.000 Dashboards  


### AL.10.xx.xxx Business Intelligence Reporting

- AL.10.10.000 Business Intelligence Reporting


### AL.20.xx.xxx Data Analytics Reporting

- AL.20.10.000 Data Analytics Reporting


### AL.30.xx.xxx Data Warehouse / Data Lake Reporting

- AL.30.10.000 Data Warehouse Reporting
- AL.30.20.000 Data Lake Reproting



## AM.xx.xx.xxx DevOps

- AM.00.10.000 Operations Procedures
- AM.00.20.000 Operations Runbooks
- AM.00.30.000 Managed File Transfers
- AM.00.40.000 Operations / Systems Monitoring
- AM.00.50.000 Alerts & Notifications  

- AM.10.00.000 Job Schedules
  + AM.10.10.000 Special (ad-hoc, on-demand, irregular)
  + AM.10.20.000 daily
  + AM.10.30.000 weekly
  + AM.10.40.000 bi-weekly
  + AM.10.50.000 monthly
  + AM.10.60.000 bi-monthly
  + AM.10.70.000 quarterly
  + AM.10.80.000 semi-annually
  + AM.10.90.000 annually  


- AM.20.00.000 Conversion Processes

- AM.30.10.000 Backup Processes  
- AM.30.20.000 Restore Processes   

- AM.99.00.000 Disaster Recovery  


## AN.xx.xx.xxx Application Portfolios

- Project Specific, TBD...



## ZZ.xx.xx.xxx Reference Documentation

- ZZ.00.00.000 Application Training Material
  + ZZ.00.10.000 Train-The-Trainer
  + ZZ.00.20.000 End-User Training


- ZZ.10.00.000 Application End-User Documentation 
  + ZZ.10.10.000 User Guides
  + ZZ.10.20.000 FAQs
  + ZZ.10.30.000 Quick Reference
  + ZZ.10.40.000 How To


- ZZ.20.00.00 Application Administration Documentation
  + ZZ.20.10.000 Admin Guide
  + ZZ.20.20.000 Installation
  + ZZ.20.30.000 Configuration


- ZZ.30.00.000 Engineering Documentation
  + ZZ.30.10.000 Developer Guides  
  + ZZ.30.20.000 Coding Standards


- ZZ.40.00.000 DevOps Documentation
  + ZZ.40.10.000 DevOps Procedures
  + ZZ.40.20.000 Batch Job Runbooks  



___

## Additional References

### Additional Sources for Ideas:   

- [The Open Group, TOGAF - Enterprise Architecture standard](http://www.opengroup.org/subjectareas/enterprise/togaf)

- Dewey Decimal System
  + http://www.gutenberg.org/files/12513/12513-h/12513-h.htm
  
- Non-Functional Requirements
  + http://en.wikipedia.org/wiki/Non-functional_requirement

- Wikipedia Articles
  + https://en.wikipedia.org/wiki/Enterprise_architecture_artifacts


- OWL and RDF Modeling
  + [Tutorial 4: Introducing RDFS & OWL](http://www.linkeddatatools.com/introducing-rdfs-owl)


### Academic Papers
(For further/future research)

- TO-DO: 
  * Continue to Locate/Add links to useful resources here...
  * Review these citations for ideas to incoporate...


- G. Antunes, et al. Ontology-based enterprise architecture model analysis. In Proceedings of the 29th Annual ACM Symposium on Applied Computing, 2014.
  + https://dl.acm.org/citation.cfm?doid=2554850.2555176
  + DOI:10.1145/2554850.2555176


- M. Bakhshandeh. Ontology-driven Analysis of Enterprise Architecture Models. PhD Thesis, UNIVERSIDADE DE LISBOAINSTITUTO SUPERIOR T ́ECNICO, 2016.
  + https://www.inesc-id.pt/publications/12470/pdf/

- S. Buckl, F. Matthes, and C. M. Schweda. Conceptual models for cross-cutting aspects in enterprise architecture modeling. In 14th IEEE Enterprise Distributed Object Computing
Conference, 2010.
- S. Buckl, C. M. Schweda, and F. Matthes. A design theory nexus for situational enterprise architecture management. In 14th IEEE Enterprise Distributed Object Computing
Conference, 2010

- M. Fox, M. Grueninger, K. Kosanke, J. Nell, "Ontologies for enterprise modelling", Enterprise Engineering and Integration ser. Research Reports Esprit, pp. 190-200, 1997.

- M. Galster. Dependencies, traceability and consistency in software architecture: towards a view-based perspective. In Proceedings of the 5th European Conference on Software
Architecture, 2011

- H. Hoang, J. Jung, and C. Tran. Ontology-based approaches for cross-enterprise collaboration: a literature review on semantic business process management. Enterprise Information
Systems, pages 1–17, 2013


- M. Kaczmarek. Categories of Ontologies' Applications in the Realm of Enterprise Modeling. In IEEE 17th Conference on Business Informatics, 2015
  + https://ieeexplore.ieee.org/document/7264721
  + DOI: 10.1109/CBI.2015.47 

- S. Oussena, J. Essien. Validating enterprise architecture using ontology-based approach: A case study of student internship programme. 3rd International Symposium ISKO-Maghreb, 2013.
  + https://ieeexplore.ieee.org/document/6728200
  + DOI: 10.1109/ISKO-Maghreb.2013.6728200 

- J. Saat, U. Franke, R. Lagerstrom, and M. Ekstedt. Enterprise architecture meta models for it/business alignment situations. In 14th IEEE Enterprise Distributed Object Computing
Conference, 2010


### Interesting Non-Academic Articles, Blog Posts, etc.
- TO-DO: Locate/Add links to useful resources here...


### Suggested Books
- TO-DO: Locate/Add links to useful resources here...

