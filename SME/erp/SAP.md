
# SAP ERP - SME Notes

- How do you determine what SAP ERP or SAP S/4HANA version are you using?
  + https://ecosio.com/en/blog/what-sap-erp-version-am-i-using/
  + KM: SAP S/4HANA versions use a YYMM format (e.g. 1909 = September 2019), visible via the S4CORE component
  + KM: Knowing your version is key for EDI integration and upgrade planning


- SAP Versions:
  + https://en.wikipedia.org/wiki/SAP_S/4HANA
  + https://support.sap.com/en/my-support/software-downloads/support-package-stacks/product-versions.html
  + https://support.sap.com/content/dam/support/en_us/library/ssp/release-upgrade-maintenance/maintenance-information/schedules-for-maintenance-deliveries/SAPschedule.pdf
  + Version Info
  	* SAP Business Suite 4 only runs on the SAP HANA database it is packaged as one product: SAP S/4HANA
    * The new suite, SAP S/4HANA, launched on 3 February 2015
	  * SAP S/4HANA can be deployed on-premises, in the cloud, or through a hybrid model.
    * Version Numbering Scheme:
      * SAP S/4HANA Cloud 2208: August 2022
      * SAP S/4HANA Cloud 2302: February 2023
	    * SAP S/4HANA Cloud 2308: August 2023
	    * SAP S/4HANA Cloud 2402: February 2024
	    * SAP S/4HANA Cloud 2408: August 2024

- SAP Release Frequency:
  + Previously?
    * The cloud editions are released semi-annually.
	  * The on-premises edition has one new release per year and receives additional functionality and corrections in the form of Feature Pack Stacks (FPS) or Service Pack Stacks (SPS) each quarter.
	  * On-premises: Each year, SAP traditionally shipped a new product version of its on-premises SAP S/4HANA product (e.g., SAP S/4HANA 1610), followed by three successive Feature Pack Stacks (FPS) on a quarterly basis. 
    
  + After October 2023:
    * With the release in October 2023, SAP introduced a significant shift in its release and maintenance strategy for SAP S/4HANA. 
    * The product now follows a two-year release cycle, providing a longer seven-year mainstream maintenance period per release
    * Additionally, more easily adoptable feature packs will be introduced every six months during the first two years of a release, reducing the need for disruptive upgrades and lowering total implementation costs.


## Products

### SAP BW/4HANA

- https://www.sap.com/products/business-suite.html
  + SAP BW∕4HANA is a data warehouse solution with agile and flexible data modeling, SAP HANA-optimized processes and state of the art user interfaces and which is highly optimized for the SAP HANA platform. 
  + SAP BW/4HANA is an enterprise data warehouse (EDW) solution designed to analyze large volumes of structured and unstructured data, offering real-time insights and supporting digital transformation

- https://learning.sap.com/products/business-technology-platform/data-analytics/bw4-hana

- https://help.sap.com/docs/SAP_BW4HANA/107a6e8a38b74ede94c833ca3b7b6f51/f2a4eb578452482fbbcb9078a8e51551.html
  
- Comparing SAP BW/4HANA with SAP BW
  + https://learning.sap.com/learning-journeys/upgrading-your-sap-bw-skills-to-sap-bw-4hana/comparing-sap-bw-4hana-with-sap-bw_c0310e6d-2669-4464-8ede-4a32c1ab7a5f
  

### SAP Customer Activity Repository (CARAB)

- https://help.sap.com/docs/CARAB/e95c8443f589486bbfec99331049704a/c87c504220db4a82a41032a65cd0e85e.html  



### SAP BCS, or SAP Business Consolidation (formerly SEM-BCS)

- A module within SAP's Strategic Enterprise Management (SEM) suite that focuses on financial consolidation.

- https://help.sap.com/docs/SAP_S4HANA_ON-PREMISE/7bfcddc0957c41b7b18e3c5e12892549/b59fcf535b804808e10000000a174cb4.html


- Business Consolidation (SEM-BCS)
  + https://help.sap.com/docs/SAP_S4HANA_ON-PREMISE/8e3e8daffe194b1ab70179b4da603aab/54a5c6535e601e4be10000000a174cb4.html



### SAP EWM, or Extended Warehouse Management

- https://en.wikipedia.org/wiki/SAP_EWM
- "SAP EWM is part of SAP AG's Supply Chain Management Suite of solutions. The Extended Warehouse Management product is an integrated software platform for flexible, automated support for processing goods movements and managing inventory in the warehouse."

- https://www.sap.com/products/scm/extended-warehouse-management.html

- https://www.sap.com/products/scm/extended-warehouse-management/features.html
- https://help.sap.com/docs/SAP_EXTENDED_WAREHOUSE_MANAGEMENT/3d97bec9bf1649099384bb8167df3cf2/4ecb88b8b2422afee10000000a42189e.html


### SAP Transportation Management (TM) 

- "A comprehensive software solution designed to optimize and streamline transportation and logistics processes within the supply chain. It's part of the broader SAP Supply Chain Management (SCM) suite."

- https://www.sap.com/products/scm/transportation-logistics.html

- https://help.sap.com/docs/SAP_TRANSPORTATION_MANAGEMENT/54cf405c9d9e4c96bf091967ea29d6a7/3dbac2009df0459da845e03e6802817f.html

- Usage: 
  + Create forwarding orders for your ordering parties
  + Transfer orders and deliveries from an ERP system
  + Create freight bookings
  + Plan the transportation and select carriers
  + Tender transportation services
  + Dispatch and monitor the transportation
  + Calculate the transportation charges for both the ordering party and the supplier side
  + Consider foreign trade and dangerous goods regulations


### SAP Finance (FI)



### SAP Supply Chain (MM, PP, SD, or EWM preferred)


### SAP Business Technology Platform (BTP): 


### SAP Process Integration (PI)

- An integration platform that facilitates the connection and communication between different systems, both SAP and non-SAP.

- https://en.wikipedia.org/wiki/SAP_NetWeaver_Process_Integration
	+ SAP NetWeaver Process Integration (SAP PI) is SAP's enterprise application integration (EAI) software, a component of the NetWeaver product group used to facilitate the exchange of information among a company's internal software and systems and those of external parties. Before the current version, SAP PI was called SAP Exchange Infrastructure (SAP XI).
  + SAP calls PI an integration broker because it mediates between entities with varying requirements in terms of connectivity, format, and protocols. According to SAP, PI reduces the TCO by providing a common repository for interfaces.
  + The central component of SAP PI is the SAP Integration Server, which facilitates interaction between diverse operating systems and applications across internal and external networked computer systems.
  + PI is built upon the SAP Web Application Server.
  + First release of SAP Exchange Infrastructure was XI 2.0. Later on, releases 3.0, 7.0, 7.1, 7.1 EHP1, 7.3 and 7.31 followed. From release 7.0 onwards, SAP Exchange Infrastructure has been renamed as SAP Process Integration (SAP PI).

- https://help.sap.com/docs/SAP_NETWEAVER_750/bbd7c67c5eb14835843976b790024ec6/8e995afa7a8d467f95a473afafafa07e.html

- https://help.sap.com/doc/saphelp_nw75/7.5.5/en-US/ac/b402995f014685be8f6d2ce91d1204/frameset.htm
	+ This documentation is no longer updated. For the latest updates and corrections, refer to SAP Note 2212573.

- https://help.sap.com/doc/saphelp_nw75/7.5.5/en-US/8e/995afa7a8d467f95a473afafafa07e/content.htm
	
- Basics
  + https://help.sap.com/doc/saphelp_nw75/7.5.5/en-US/6a/d6aab71c5a441e89af1d8ebea87ecf/content.htm?no_cache=true

- Advanced Concepts:
	+ https://help.sap.com/doc/saphelp_nw75/7.5.5/en-US/ac/b402995f014685be8f6d2ce91d1204/content.htm?no_cache=true

- https://community.sap.com/t5/technology-blog-posts-by-members/sap-pi-for-beginners/ba-p/13242361
	

### SAP Cloud Platform Integration (CPI)

- A cloud-based integration platform-as-a-service (iPaaS) offered by SAP

- https://www.sap.com/products/technology-platform/integration-suite.html

- https://community.sap.com/t5/technology-blog-posts-by-members/intro-to-sap-cpi-a-beginner-s-guide/ba-p/13557058

- https://www.udemy.com/course/overview-of-sap-cloud-platform-integration-cpi/


### SAP Event Management (SAP EM)



### SAP Global Trade Services (SAP GTS) 


### SAP Customer Relationship Management (SAP CRM)





