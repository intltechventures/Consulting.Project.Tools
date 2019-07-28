
# Solution Architecture Document (SAD) - Purpose
**STATUS: WORKING DRAFT**
**Last Updated: 2019-07-27**

**Rationale:** Numerous times, in my travels as a consultant, I've encountered organizations in which there is no established standard/template for what should be included in an SAD. Quite often (even in organizations that ostensibly have a template), the artifacts that architects and engineers produce devolve into a Wild Wild West of anything-goes. Consistency engenders repeatability - which can help reduce variability in quality - and thus, a worthy goal. 

Therefore, the intended purpose in sharing this...at least as a starting point for further customization by a client organization.


The goal of an SAD is to facilitate communication and coordination, both within internal teams and organizations - as well as serving as a tool for communication and coordination with external partners.

The SAD provides a consistent format for teams to assemble details - which supports a goal of being able to achieve some level of reuse of design artifacts - and is intended to provide sufficient information to Program/Project Management to be able to plan, estimate, and coordinate large-scale development efforts.  Additionally, anSAD serves as an effective mechanism to support Design Review and Architecture Governance efforts.

The ideal place for an SAD to live is as a MarkDown file (.md) on a git repository - or as a living wiki page. 

The target level of detail is to scope the effort, provide sufficient input to the estimation process, and to clearly articulate the **How** of an approach.  

The **What** should be ideally defined in a collection of User Stories, Use Cases, Feature Requests, etc. - or, minimally, in a Business Requirements Document (BRD).

Investing effort in the creation of the SAD is intended for larger-scoped projects/epics - that have some non-trivial number of unknowns, technical complexity, a high number of coordination points,  or extensive external integration/coordination requirements.

**TO-DO:**
- Incorporate ideas from the Classification Codes Taxonomy 
  + https://github.com/intltechventures/Consulting.Project.Tools/blob/master/taxonomies/ClassificationCodes.md

___

# Solution Architecture Document (SAD) Template

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

- Proposed Approach
  
  
## Scope

- In-Scope

- Out-of-Scope


## Important Risks
(for example...)

- Funding Approval

- Technical Unknowns

- Resource Availability


## Critical Issues


## Significant Unknowns 



## Requirements / Traceability

- Business Requirements (e.g. citations, links - seek to avoid duplication in this document)

- Non-Functional Requirements 

- Technical Constraints 


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
  + Storage Estimates / Requirements
    * By Transaction Type, by Frequency Period
    * Project Growth, over 3-5 years
	* Data Retention/Archive/Purge Rules, by Transaction Type
	
- File Processing
  + Types of Files
  + Number of Files, by Processing Period, by File Type
  + Frequency of File Processing, by File Type
  + Size of Files, by File Type 
  + Storage Estimates / Requirements
    * By File Type, by Frequency Period
    * Project Growth, over 3-5 years
	* Data Retention/Archive/Purge Rules, by File Type


## Estimates (aka ROM/SWAG)

- Optimistic

- Nominal

- Pessimistic


## Architecture Views - Current State

- Conceptual 

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

- Conceptual 

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
  + Stream Processing, Outbound
  
- Outbound Data Processing
  + File Transfers,  Outbound
  + Message Queues, Outbound
  + API/Service Endpoints, Called
  + Stream Processing, Inbound 
  
- Internal Processing

- Data Transformations

- Business Rules

- Reporting

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


## Impact Assessment - IT / Engineering

- IT Support Operations / Staffing 

- Other?

- Transaction Processing
  + Internal 
  + External 

- Web Service Response Times

- Batch Job Durations


### Impact Assessment - Security

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

- Encryption
  + Encryption-At-Rest
  + Encryption-In-Transit
  
- Service Accounts

- Virtual Private Network (VPN)


## Infrastructure Impact Assessment
(e.g. Cloud and/or On Premise)

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
  
  
## DevOps Impact Assessment

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


## Critical Testing Scenarios

## Glossary


## Supplemental Material

- References

- Citations
  + Policies
  
  + Principles
  
  + Standards
  
  + Specifications
  
  + Vendor Contracts
  
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

## Version History


# Suggested Additional Useful References

- https://github.com/intltechventures/Consulting.Project.Tools/blob/master/taxonomies/ClassificationCodes.md

- http://pubs.opengroup.org/architecture/togaf9-doc/arch/

- https://www.zachman.com/about-the-zachman-framework
  * https://en.wikipedia.org/wiki/Zachman_Framework

- https://en.wikipedia.org/wiki/Software_requirements_specification

- [830-1998 - IEEE Recommended Practice for Software Requirements Specifications](https://standards.ieee.org/findstds/standard/830-1998.html)
