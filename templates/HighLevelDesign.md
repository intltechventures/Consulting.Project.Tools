A General Purpose Template for the structure of a High-Level Design document (HLD)

Rationale: Numerous times, in my travels as a consultant, I've encountered organizations in which there is no established standard/template for what should be included in an HLD. Quite often (even in organizations that ostensibly have a template), the artifacts that architects and engineers produce devolve into a Wild Wild West of anything-goes. Consistency engenders repeatability - a worthy goal. And therefore, the intended purpose in sharing this...at least as a starting point for further customization.

### STATUS: DRAFT

The goal of an HLD is to enable communication and coordination, both within teams and organizations - as well as serving as a tool for communication and coordination with external partners.

The HLD provides a consistent format for teams to assemble details - which support a goal of being able to reuse design artifacts - and is intended to provide sufficient information to Program/Project Management to be able to plan and coordinate large-scale development efforts.  Additionally, an HLD servces as an effective mechanism to support Design Review and Architecture Governance efforts.

The target level of detail is to scope the effort, provide sufficient input to the estimation process, and to clearly articulate the ___How___ of an approach.  

Investing effort in the creation of the HLD is intended for larger-scoped tasks - that have some non-trivial number of unknowns, technical complexity, a high number of coordination points,  or any external integration/coordination requirements.


* Summary
	* Problem Statement
	* Approach
* References
* Citations
	* Policies
	* Principles
	* Standards
	* Specifications
* Requirements / Traceability
	* Business Requirements
	* Technical Requirements (NFRs)
	* Constraints
* Estimates
* Risks
* Issues
* Unknowns
* Business Context
	* Business Processes
	* User Stories, Epics, Use Cases
* Project Coordination 
	* Internal
	* External
* Architecture Views
	* Component Views
	* Sequence Views
	* Data Flow Views
	* Data Model Views
	* (additional views, as needed)
* Design Elements
	* Inbound Data Processing
		* File Transfers,  Inbound
		* Service Endpoints 
	* Outbound Data Processing
		* File Transfers,  Outbound
		* Service Endpoints 
	* Internal Processing
	* Data Transformations
	* Business Rules
	* Reporting
	* Logging
	* Monitoring
* Technical Dependencies
	* Internal 
	* External
* Performance Impact Assessment
	* Estimated Transaction Frequency
	* Estimated Data Storage Volume
	* Estimated Network Load Impact
* Security Impact Assessment
	* Encryption-At-Rest
	* Encryption-In-Transit
	* Security Roles
	* Security Permissions
	* User Provisioning
	* Service Accounts
	* Authentication
	* Authorization
* Operational Impact Assessment
	* Monitoring
	* Job Scheduling
	* Managed File Transfers
	* Deployment
	* Data Storage
	* Backup/Recovery
* Critical Testing Scenarios
* Terminology
* Supplemental Material
* Contact Information
* Version History
