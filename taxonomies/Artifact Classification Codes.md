### ARTIFACT CLASSIFICATION CODE TAXONOMY (e.g. for Requirements, Design, etc.)

Author: Kelvin D. Meeks 
kmeeks@intltechventures.com
http://www.intltechventures.com

NOTE: This is a work-in-progress, status = WORKING DRAFT

This is an illustrative (but not exhaustive) set of numeric classification codes
to provide general guidance across the enterprise use in devising a numbering 
categorization approach.

My original draft of this was for a particular client engagement back in 
2004-2005.  I plan to continue refactor this to provide a better organization 
and grouping.  However, since it may give someone a useful starting point, I'm 
publishing it as-is for now.


# 0000.xxxx Business Architecture
	0000.1000 business processes
	0000.2000 business rules
	0000.3000 user stories
	0000.4000 rainy day scenarios
	0000.5000 business architecture
	
# 0100.xxxx Enterprise Architecture
	0100.1000 system context
	0100.2000 system components
	0100.3000 enterprise data 
	0100.3100 data governance
	0100.3200 data dictionary
	0100.3300 data models
	0100.3400 semantic message models


# 0200.xxxx Common Enterprise Services
	0200.1100 databases
	0200.1200 application server services
	0200.1300 message queues
	0200.1400 email
	0200.1500 workflow
	0200.1600 scheduling
	0200.1700 distributed computing
	0200.1800 file transfers
	0200.2000 encryption services
	0200.2100 compression services
	0200.3000 application logs
	0200.3100 audit logs
	0200.4000 enterprise system messages


# 0300.xxxx Facilities


# 0400.xxxx Infrastructure & network
	0400.1000 application servers
	0400.1000 web servers
	0400.1100 database servers
	0400.1100 firewall
	0400.1200 routers
	0400.1300 hardware accelerators - encryption
	0400.1400 hardware accelerators - compression
	0400.1500 Network Attached Storage Devices
	0400.1600 load balancing
	0400.2000 topology
	0400.2100 redundancy
	0400.2200 high availability
	0400.2300 fail-over
	



# 0900.xxxx disaster recovery (DR)
	0500.1000 DR Infrastructure
	0500.2000 backup & restore procedures



# 1000.xxxx Non Functional Requirements
	1000.1000 accessibility
	1000.1100 audit and control
	1000.1200 availability
	1000.1300 backup	
	1000.1400 capacity
	1000.1500 certification
	1000.1600 compliance
	1000.1700 configuration management
	1000.1800 dependencies
	1000.1900 deployment
	1000.2000 documentation
	1000.2100 disaster recovery
	1000.2200 efficiency
	1000.2300 effectiveness
	1000.2400 escrow
	1000.2500 extensibility
	1000.2600 failure management
	1000.2700 fault tolerance
	1000.2800 legal and licensing
	1000.2900 interoperability
	1000.3000 maintainability
	1000.3100 modifiability
	1000.3200 network topology
	1000.3300 open source
	1000.3400 operability
	1000.3500 performance
	1000.3600 platform compatibility
	1000.3700 price
	1000.3800 privacy
	1000.3900 portability
	1000.4000 quality
	1000.4100 recovery
	1000.4200 reliability
	1000.4300 reporting
	1000.4400 resilience
	1000.4500 resource constraints
	1000.4600 response time
	1000.4700 robustness
	1000.4800 safety
	1000.4900 security
	1000.5000 standards
	1000.5100 stability
	1000.5200 supportability
	1000.5300 testability
	1000.5400 usability
	1000.5500 xxxxxxxx



# 2000.xxxx User Interface
	2000.1100 look and feel style guidelines
	2000.1200 internationalization
	2000.1300 navigation / menus [site map]
	2000.1400 user help
	2000.1500 common widgets
	2000.1600 data entry validation
	2000.2000 application functionality
	2000.3000 admin functionality


# 3000.xxxx Documentation
	3000.1000 operation procedures
	3000.1100 runbooks
	3000.2000 user guides
	3000.2100 admin guides
	3000.2200 developer guides
	3000.3000 end-user training


# 4000.xxxx Reporting
	4000.1000 report designer
	4000.2000 operational
	4000.2100 management
	4000.2200 compliance
	4000.2300 audit
	4000.2400 system monitoring
	4000.3000 dashboards
	


# 5000.xxxx Operations
	5000.1000 operations procedures
	5000.2000 operations runbooks
	5000.3000 file transfers
	5000.4000 operations / systems monitoring
	5000.5000 job schedules
		5000.5100 special (ad-hoc, on-demand)
		5000.5200 daily
		5000.5300 weekly
		5000.5400 bi-weekly
		5000.5500 monthly
		5000.5600 bi-monthly
		5000.5700 quarterly
		5000.5800 annually
		5000.5900 semi-annually
		5000.6000 irregularly scheduled
		5000.9000 conversion
	5000.6000 Backups
	5000.6100 Restore
	5000.7000 Disaster Recovery


# 6000.xxxx Security
	6000.1000 User Provisioning
	6000.1100 User Authentication
	6000.1200 User Authorization
	6000.1300 Single-Sign-On (SSO)
	6000.1400 Federated Single-Sign-On (SSO)
	6000.1500 Password Reset
	6000.1600 User Profile Management
	6000.1700 Access Control List
	6000.2000 LDAP
	6000.2100 Automated Security Processes
		6000.2110 Intrusion Detection
		6000.2120 File Monitoring
		6000.2130 Anti-Virus
		6000.2140 Firewall
		6000.2150 Denail of Service prevention
	6000.3000 Payment Card Institute (PCI)
	

# 7000.xxxx Core Application Requirements


# 8000.xxxx Integrations
	8100.xxxx Real-Time Services
		8100.0000 conversions
		8100.1000 legacy systems
		8100.2000 customer master
		8100.2100 general ledger
		8100.2200 financial
		8100.2300 inventory
		8100.2400 file maintenance
		8100.2500 validation
		8100.2600 membership
		8100.2700 external third party

	8200.xxxx In-bound Batch Jobs
		8200.0000 conversions
		8200.1000 legacy systems
		8200.2000 customer master
		8200.2100 general ledger
		8200.2200 financial
		8200.2300 inventory
		8200.2400 file maintenance
		8200.2500 validation
		8200.2600 membership
		8200.2700 external third party

	 8300.xxxx Out-bound Batch Jobs
		8300.1000 conversions	 
		8300.1000 legacy systems
		8300.2000 customer master
		8300.2100 general ledger
		8300.2200 financial
		8300.2300 inventory
		8300.2400 file maintenance
		8300.2500 validation
		8300.2600 membership
		8300.2700 external third party

	 8400.xxxx Internal Batch Jobs
	 	8400.0000 conversions
		8400.1000 legacy systems
		8400.2000 customer master
		8400.2100 general ledger
		8400.2200 financial
		8400.2300 inventory
		8400.2400 file maintenance
		8400.2500 validation
		8400.2600 membership
		8400.2700 external third party


# 9000.0000 [reserved for future use]


# Additional Idea References:

	[Dewey Decimal System]: http://www.gutenberg.org/files/12513/12513-h/12513-h.htm

	[source for list of NFRs]: http://en.wikipedia.org/wiki/Non-functional_requirement
