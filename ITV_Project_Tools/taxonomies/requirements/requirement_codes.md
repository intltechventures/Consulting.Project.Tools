<pre>
This is an illustrative (but not exhaustive) set of numeric codes to use in devising a requirements numbering 
categorization approach.

When I initially wrote this, it was for a particular client engagement back in 2004 2005.  I plan to refactor this 
to provide a better organization and grouping.  However, since it may give someone a useful starting point, I'm 
publishing it as-is for now.


REQUIREMENTS CLASSIFICATION CODES

0000.0000 system definition__
	0000.1000 business processes
	0000.2000 business rules
	0000.3000 user stories
	0000.4000 rainy day scenarios
	0000.5000 business architecture
	0000.6000 enterprise architecture
	0000.6100 system context diagrams
	0000.7000 data governance
	0000.7100 data dictionary
	0000.7200 data models
	0000.7300 semantic models


__0100.0000 common infrastructure subsystems__
	0100.1100 databases
	0100.1200 application server services
	0100.1300 message queues
	0100.1400 email
	0100.1500 workflow
	0100.1600 scheduling
	0100.1700 distributed computing
	0100.1800 file transfers
	0100.2000 encryption services
	0100.2100 compression services
	0100.2200  
	0100.2300 
	0100.2400  
	0100.3000 logs
	0100.3100 audit log
	0100.3200 application log
	0100.4000 enterprise system messages

__0100.5000 Non Functional Requirements__  
[source for NFRs: http://en.wikipedia.org/wiki/Non functional_requirement]
	0100.5010 accessibility
	0100.5020 audit and control
	0100.5030 availability
	0100.5040 backup
	0100.5050 capacity
	0100.5060 certification
	0100.5070 compliance
	0100.5080 configuration management
	0100.5090 dependencies
	0100.5100 deployment
	0100.5110 documentation
	0100.5120 disaster recovery
	0100.5130 efficiency
	0100.5140 effectiveness
	0100.5150 escrow
	0100.5160 extensibility
	0100.5170 failure management
	0100.5180 fault tolerance
	0100.5190 legal and licensing
	0100.5200 interoperability
	0100.5210 maintainability
	0100.5220 modifiability
	0100.5230 network topology
	0100.5240 open source
	0100.5250 operability
	0100.5260 performance
	0100.5270 platform compatibility
	0100.5280 price
	0100.5290 privacy
	0100.5300 portability
	0100.5310 quality
	0100.5320 recovery
	0100.5330 reliability
	0100.5340 reporting
	0100.5350 resilience
	0100.5360 resource constraints
	0100.5370 response time
	0100.5380 robustness
	0100.5390 safety
	0100.5400 security
	0100.5410 standards
	0100.5420 stability
	0100.5430 supportability
	0100.5440 testability
	0100.5450 usability



__0100.6000 Operations__
	0100.6100 operations procedures
	0100.6110 operations runbooks
	0100.6120 batch schedules
	0100.6130 file transfer jobs
	0100.6140 operations / systems monitoring
	


__0100.9000 disaster recovery (DR)__
	0100.9100 DR Infrastructure
	0100.9200 backup & restore procedures


__0200.0000 network__
	0200.1000 topology
	0200.1100 redundancy
	0200.1200 high availability
	0200.1300 fail-over


__0300.0000 hardware__
	0300.1000 application servers
	0300.1000 web servers
	0300.1100 database servers
	0300.1100 firewall
	0300.1200 routers
	0300.1300 hardware accelerators - encryption
	0300.1400 hardware accelerators - compression
	0300.1500 Network Attached Storage Devices



__2000.0000 User Interface__
	2000.1100 look and feel style guidelines
	2000.1200 internationalization
	2000.1300 navigation / menus [site map]
	2000.1400 user help
	2000.1500 common widgets
	2000.1600 data entry validation




__3000.0000 documentation__
	3000.1000 operation procedures
	3000.1100 runbooks
	3000.2000 user guides
	3000.2100 admin guides
	3000.2200 developer guides
	3000.3000 end-user training



__4000.0000 Reporting__
	4000.1000 report designer
	4000.2000 operational
	4000.2100 management
	4000.2200 compliance
	4000.2300 audit
	4000.2400 system monitoring


__6000.0000 Security__
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
	

__7000.0000 Batch Processing__
	7000.1000 special (ad-hoc, on-demand)
	7000.2000 daily
	7000.3000 weekly
	7000.3100 bi-weekly
	7000.4000 monthly
	7000.4100 bi-monthly
	7000.5000 quarterly
	7000.6000 annually
	7000.6100 semi-annually
	7000.7000 irregularly scheduled


__8000.0000 Integrations__
	8100.0000 Real-Time Services
		8100.1000 legacy systems
		8100.2000 customer master
		8100.2100 general ledger
		8100.2200 financial
		8100.2300 inventory
		8100.2400 file maintenance
		8100.2500 validation
		8100.2600 membership
		8100.2700 external third party

	8200.0000 In-bound Batch File Transfers
		8200.1000 legacy systems
		8200.2000 customer master
		8200.2100 general ledger
		8200.2200 financial
		8200.2300 inventory
		8200.2400 file maintenance
		8200.2500 validation
		8200.2600 membership
		8200.2700 external third party
	
	8300.0000 Out-bound Batch File Transfers
		8300.1000 legacy systems
		8300.2000 customer master
		8300.2100 general ledger
		8300.2200 financial
		8300.2300 inventory
		8300.2400 file maintenance
		8300.2500 validation
		8300.2600 membership
		8300.2700 external third party



__9000.0000 [reserved for future use]__


Additional Idea References:
Dewey Decimal System
http://www.gutenberg.org/files/12513/12513-h/12513-h.htm
</pre>