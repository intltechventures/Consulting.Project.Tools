# High-Level Design Doc (HLD) - General Purpose

Rationale: Numerous times, in my travels as a consultant, I've encountered organizations in which there is no established standard/template for what should be included in an HLD. Quite often (even in organizations that ostensibly have a template), the artifacts that architects and engineers produce devolve into a Wild Wild West of anything-goes. Consistency engenders repeatability - which can help reduce variability in quality - and thus, a worthy goal. 

Therefore, the intended purpose in sharing this...at least as a starting point for further customization by a client organization.

### STATUS: WORKING DRAFT
**Last Updated: 2019-07-27**

The goal of an HLD is to facilitate communication and coordination, both within internal teams and organizations - as well as serving as a tool for communication and coordination with external partners.

The HLD provides a consistent format for teams to assemble details - which supports a goal of being able to achieve some level of reuse of design artifacts - and is intended to provide sufficient information to Program/Project Management to be able to plan, estimate, and coordinate large-scale development efforts.  Additionally, an HLD servces as an effective mechanism to support Design Review and Architecture Governance efforts.

The ideal place for an HLD to live is in a Wiki or in a Markdown file (i.e. in the git repository for the project)

The target level of detail is to scope the effort, provide sufficient input to the estimation process, and to clearly articulate the **How** of an approach.  

The **What** should be ideally defined in a collection of User Stories, Use Cases, Feature Requests, etc. - or, minimally, in a Business Requirements Document (BRD).

Investing effort in the creation of the HLD is intended for larger-scoped projects/epics - that have some non-trivial number of unknowns, technical complexity, a high number of coordination points,  or extensive external integration/coordination requirements.

___

# High Level Design Template

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

- Event/Transaction Frequency

- Event/Transaction Volume
  + Users, by Role/Type
  + Transactions
  + Storage
	* Data Storage
	  * Project Growth, over 3-5 years
	* Data Archive/Retention Rules


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
