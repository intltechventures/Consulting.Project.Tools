
# Solution Architecture Document (SAD) Template 
(**Illustrative, Not Exhaustive**)

- **This document's location:**
  + https://github.com/intltechventures/Consulting.Project.Tools/blob/master/templates/SAD.md
  + **STATUS: WORKING DRAFT**
  + **Last Updated: 2019-07-288888888*Author: Kelvin D. Meeks**
  + kmeeks@intltechventures.com
  + http://www.intltechventures.com

- Copyright 2001-2019, International Technology Ventures, Inc.
- Releassed under [The MIT License](https://opensource.org/licenses/MIT)


## SAD Purpose

**Rationale:** Numerous times, in my travels as a consultant, I've encountered organizations in which there is no established standard/template for what should be included in an SAD. Quite often (even in organizations that ostensibly have a template), the artifacts that architects and engineers produce devolve into a Wild Wild West of anything-goes. Consistency engenders repeatability - which can help reduce variability in quality - and thus, a worthy goal. 

Therefore, the intended purpose in sharing this...at least as a starting point for further customization by a client organization.


The goal of an SAD is to facilitate communication and coordination, both within internal teams and organizations - as well as serving as a tool for communication and coordination with external partners.

The SAD provides a consistent format for teams to assemble details - which supports a goal of being able to achieve some level of reuse of design artifacts - and is intended to provide sufficient information to Program/Project Management to be able to plan, estimate, and coordinate large-scale development efforts.  Additionally, anSAD serves as an effective mechanism to support Design Review and Architecture Governance efforts.

The ideal place for an SAD to live is as a MarkDown file (.md) on a git repository - or as a living wiki page. 

The target level of detail is to scope the effort, provide sufficient input to the estimation process, and to clearly articulate the **How** of an approach.  

The **What** should be ideally defined in a collection of User Stories, Use Cases, Feature Requests, etc. - or, minimally, in a Business Requirements Document (BRD).

Investing effort in the creation of the SAD is intended for larger-scoped projects/epics - that have some non-trivial number of unknowns, technical complexity, a high number of coordination points,  or extensive external integration/coordination requirements. For smaller efforts (or, as a move toward a more Agile and Lean Architecture apporach), an [Architecture Decision Record (ADR) template](https://github.com/intltechventures/Consulting.Project.Tools/blob/master/templates/ArchitectureDecisionRecord.md) should be considered.


**TO-DO:**
- Continue incorporating ideas (and structure) from the Classification Codes Taxonomy 
  + https://github.com/intltechventures/Consulting.Project.Tools/blob/master/taxonomies/ClassificationCodes.md

___

# SAD Format

## Summary

- Problem Statement

- Business Motivation

- Business Goals

- Business Drivers/Forces

- Business Constraints
  * Budget 
  * Timeline
  * Resources

- Current State (AS-IS)

- Future State (TO-BE)

- Alternatives Considered
(Summarized - Provide additional details/elaboration in **References** section)

- Proposed Approach
  
  
## Scope

- In-Scope

- Out-of-Scope

- TBD / Open Questions



## Important Risks
(for example...)

- Funding Approval

- Technical Unknowns

- Resource Availability



## Critical Issues

- Critical Issue #1...

- Critical Issue #2...



## Significant Unknowns 

- Business

- Technical



## Requirements 
(e.g. citations, links - seek to avoid duplication in this document)

- Business Requirements

- Technical Requirement

- Requiements Traceability



## Business Context
(e.g. provide citations, links - seek to avoid duplication in this document with what has already been defined elsewhere, e.g. JIRA)

- Business Processes

- Epics

- Stories

- Use Cases 



## Project Coordination/Dependencies

- Internal

- External


## Solution Sizing Factors

- Event/Transaction Processing 
  + Types of Events/Transactions
  + Number of Events/Transactions
	* By User Group, by Frequency Period
	* By Transaction Type, by Frequency Period
	* By Role, by Frequency Period
  + Size of Events/Transactions, by Type
    * Number of Records per Event/Transaction
    * (Bytes, KB, MB, etc.)
  + Storage Estimates / Requirements
    * By Type, by Frequency Period
    * Projected Growth, over 3-5 years
	* Data Retention/Archive/Purge Rules, by Type
	
- File Processing
  + Types of Files
  + Number of Files
    * By File Type, by Processing Period
      * Daily
      * Weekly
      * Monthly
      * Quarterly
      * Annually
  + Size of Files, by File Type 
    * Number of Records/Transactions
    * (KB, MB, GB, TB, etc.)
  + Storage Estimates / Requirements
    * By Type, by Frequency Period
    * Projected Growth, over 3-5 years
	* Data Retention/Archive/Purge Rules, by Type


## Estimates (aka ROM/SWAG)

- Optimistic

- Nominal

- Pessimistic



## Architecture Views - Current State

- Context Views

- Conceptual Views 

- Logical Views

- Component Views

- Sequence Views

- Data Flow Views

- Data Model Views

- (additional views, as needed)



## Architecture Views - Transitional
(For example...)

- Interim Scaffolding

- Conversion

- Shims 



## Architecture Views - Future State

- Context Views 

- Conceptual Views

- Logical Views

- Component Views

- Sequence Views

- Data Flow Views

- Data Model Views

- (additional views, as needed)


## Key Architecture Design Elements

- Inbound Data Processing
  + File Transfers,  Inbound
  + Message Queues, Inbound
  + API/Service Endpoints, Exposed
  + Stream Processing, Inbound
  

- Outbound Data Processing
  + File Transfers,  Outbound
  + Message Queues, Outbound
  + API/Service Endpoints, Called
  + Stream Processing, Outbound 
  
- Internal Processing

- Data Transformations

- Business Rules

- Algorithms

- Machine Learning

- Artificial Intelligence

- Internet-of-Things (IoT)

- Reporting
  + End-User Reporting
  + Corporate Reporting
  + Business Executive Reporting
  + Line of Business Reporting
  + Division Reporting
  + Department Reporting
  + Business Operational Reporting
  + DevOps Operational Reporting
  + Business Intelligence
  + Data Analytics
  + Data Warehouses
  + Data Lakes
  + Data Cubes

- Logging

- Monitoring / Alerting

- AJ.xx.xx.xxx Non-Functional Requirements (NFRs)
  + AJ.00.00.001 Accessibility
  + AJ.00.00.002 Audit and Control
  + AJ.00.00.003 Availability
  + AJ.00.00.004 Backup
  + AJ.00.00.005 Capacity
  + AJ.00.00.006 Certification
  + AJ.00.00.007 Compliance
  + AJ.00.00.008 Configuration management
  + AJ.00.00.009 Dependencies
  + AJ.00.00.010 Deployment
  + AJ.00.00.011 Documentation
  + AJ.00.00.012 Disaster Recovery
  + AJ.00.00.013 Efficiency
  + AJ.00.00.014 Effectiveness
  + AJ.00.00.015 Escrow
  + AJ.00.00.016 Extensibility
  + AJ.00.00.017 Failure Management
  + AJ.00.00.018 Fault Tolerance
  + AJ.00.00.019 Interoperability
  + AJ.00.00.020 Legal and Licensing
  + AJ.00.00.021 Maintainability
  + AJ.00.00.022 Modifiability
  + AJ.00.00.023 Network Topology
  + AJ.00.00.024 Open Source (Vitality, License Suitability, License Confirmation, Governance)
  + AJ.00.00.025 Operability
  + AJ.00.00.026 Performance
  + AJ.00.00.027 Platform Compatibility
  + AJ.00.00.028 Price
  + AJ.00.00.029 Privacy
  + AJ.00.00.030 Portability
  + AJ.00.00.031 Quality
  + AJ.00.00.032 Recovery
  + AJ.00.00.033 Reliability
  + AJ.00.00.034 Reporting
  + AJ.00.00.035 Resilience
  + AJ.00.00.036 Resource Constraints
  + AJ.00.00.037 Response Time
  + AJ.00.00.038 Robustness
  + AJ.00.00.039 Safety
  + AJ.00.00.040 Security
  + AJ.00.00.041 Standards
  + AJ.00.00.042 Stability
  + AJ.00.00.043 Supportability
  + AJ.00.00.044 Testability
  + AJ.00.00.045 Usability


## Technical Dependencies

- Internal 

- External


## Impact Assessments


### Impact Assessment - Business Operations
- Users 

- Business Processes
  + Manual Processes / Staffing

- Call Center Operations / Staffing 

- Help Desk Operations / Staffing 


### Impact Assessment - IT / Engineering

- IT Support Operations / Staffing 

- Other?

- Transaction Processing
  + Internal 

  + External 

- Web Service Response Times

- Batch Job Durations


### Impact Assessment - IT / Security

- User Provisioning
  + Roles
  + Permissions
  
- Authentication
  + Active Directory (AD) / LDAP

  + Single Sign-On (SSO)
    + SAML 2.0
	+ OAuth 2.0 
	+ OpenID

  + Two-Factor Authentication 
	
+ Authorization
  + Roles

  + Permissions

- Encryption
  + Encryption-At-Rest

  + Encryption-In-Transit


### Impact Assessment - IT / Infrastructure
(.e.g. Cloud, Hybrid Cloud, On Prem)

- Service Accounts

- Virtual Private Network (VPN)

- Servers, Virtual Machines (VMs), Containers 

- CPU Utilization

- Memory Utilization

- Storage Utilization

- Network Utilization

- DNS

- Firewalls

- Web Access Firewall (WAF)

- Threat Management Gateway

- IP Restrictions (e.g. whitelist, blacklist)
  
  
### Impact Assessment - IT / DevOps

- Deployment 

- Support Hours

- Support Process
  + Tier-1

  + Tier-2

  + Tier-3
  
- Monitoring / Alerting

- Job Scheduling

- Managed File Transfers

- Web Services 

- Message Queues

- Data Storage

- Backup/Recovery

- Disaster Recovery



## Critical Testing Scenarios

- Regression 

- System

- Integration

- Performance

- Reliability 

- Security 



## Glossary 
(table of terms/acronyms and definitions)



## References

- Supplemental Information

- Citations
  + Policies
  
  + Principles
  
  + Standards
  
  + Specifications

  + JIRA Requirements

  + Git Repos

  + Open Source Usage
  
  + Vendor Contracts

  + Vendor Collateral

- Alternatives Consdered
  + Evaluation Criteria

  + Alternative #1
    * Pros
    * Cons
    * Evaluation Score

  + Alternative #2
    * Pros
    * Cons
    * Evaluation Score

  + Alternative #3
    * Pros
    * Cons
    * Evaluation Score


## Key Project Contacts

- Design Reviewers/Approvers

- Business Stakeholders

- Business Operations

- IT Project Management 

- IT Project Management

- Finance/Budget/Funding

- Procurement

- Key Subject Matter Experts (SMEs)
  + SMEs: Business Stakeholders
  + SMEs: IT 
  + SMEs: Vendors

- IT Delivery Team

- IT DevOps 

- IT Support

- Enterprise Architecture

- Solution Architecture 
- Enterprise Security

- Engineering 


## Revision History
For example:
- YYYY-MM-DD, vX.Y, Author's initials, Change Description 


___

# Additional  References

- https://github.com/intltechventures/Consulting.Project.Tools/blob/master/taxonomies/ClassificationCodes.md

- http://pubs.opengroup.org/architecture/togaf9-doc/arch/

- https://www.zachman.com/about-the-zachman-framework
  * https://en.wikipedia.org/wiki/Zachman_Framework

- Wikipedia Resources
  + https://en.wikipedia.org/wiki/Software_requirements_specification
  + https://en.wikipedia.org/wiki/Non-functional_requirement

- [830-1998 - IEEE Recommended Practice for Software Requirements Specifications](https://standards.ieee.org/findstds/standard/830-1998.html)



