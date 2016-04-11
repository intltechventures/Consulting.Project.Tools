'''
Created on Oct 22, 2012


@author: Kelvin
'''

import os
import errno
import sys


if __name__ == '__main__':
    
    # Refactor this using argparse
    # http://docs.python.org/dev/library/argparse.html
    
    if (len(sys.argv) == 2):
        project_name = sys.argv[1];
    else:
        raise "{projectname} required"

    project_dirs = (
            "/_templates",
            "/_journals",
            
            "/_admin",        
            "/_admin/_templates",
            "/_admin/facilities",

            "/_admin/background",
            "/_admin/background/glassdoor",				
            "/_admin/background/news",				
            "/_admin/background/annual_reports",			
            "/_admin/background/competitors",
			"/_admin/background/industry",			
            "/_admin/background/executives",
            "/_admin/background/presentations",
   
			"/_admin/calendars",
			"/_admin/contacts",
            "/_admin/contracts",
            "/_admin/contracts/YYYY/originals",
            "/_admin/contracts/YYYY/signed",			
			"/_admin/locations",
            "/_admin/org_charts",

            "/_admin/kudos",
            "/_admin/memos",
			

            "/_admin/timesheets",
            "/_admin/travel",		

            "/_admin/HR",          
            "/_admin/HR/interviewing/candidates",
            "/_admin/HR/interviewing/candidates/backlog",			
            "/_admin/HR/interviewing/candidates/completed_recommended",						
            "/_admin/HR/interviewing/candidates/completed_pass",						
			
            "/_admin/onboarding",
            "/_admin/onboarding/trainig",
            "/_admin/onboarding/laptop",
            "/_admin/onboarding/access",
			"/_admin/onboarding/procedures",			

            "/_admin/invoices",             

            "/_admin/news",
            "/_admin/news/competitors", 
            "/_admin/news/industry", 			
            
            "/architecture",
            "/architecture/roadmaps",  			
            "/architecture/research",
            "/architecture/references",			
			"/architecture/reviews/ARB/scheduled/YYYY-MM-DD",			
			"/architecture/reviews/DRB/completed/YYYY-MM-DD",
			"/architecture/reviews/security",			
            "/architecture/performance",  			
            "/architecture/presentations",            			
            "/architecture/principles",            
            "/architecture/policies",            
            "/architecture/standards",
            "/architecture/specifications",
            "/architecture/patterns",                                    
            "/architecture/NFRs",   			

            "/architecture/views",
            "/architecture/views/context",            
            "/architecture/views/component",
            "/architecture/views/infrastructure",
            "/architecture/views/network",
            "/architecture/views/security",
            "/architecture/views/security/at_rest",
            "/architecture/views/security/in_motion",
            "/architecture/views/data",
            "/architecture/views/integrations",
            "/architecture/views/integrations/batch",
            "/architecture/views/integrations/batch/inbound",
            "/architecture/views/integrations/batch/outbound",
            "/architecture/views/integrations/services",
            "/architecture/views/integrations/services/consuming",
            "/architecture/views/integrations/services/producing",            

            "/architecture/security",
            "/architecture/security/PCI",			
            "/architecture/security/authentication",
            "/architecture/security/authorization",
            "/architecture/security/encryption",			
            "/architecture/security/encryption/at_rest",			
            "/architecture/security/encryption/in_transit",
			
            "/architecture/APIs",

            "/architecture/data",
            "/architecture/data/enterprise",
            "/architecture/data/enterprise/logical_models",            
            "/architecture/data/enterprise/physical_models",            
            "/architecture/data/enterprise/cannonical_schema",
        
            "/architecture/data/scripts/DDL",            
            "/architecture/data/scripts/DML", 			

            "/bin",

			# Depending on the org structure definition, /apps/ may need to be changed to /teams/ for some engagements
			
            "/apps",       
            "/apps/xyz",
						
            "/apps/xyz/change_mgmt",
            "/apps/xyz/change_mgmt/chang_policies",
            "/apps/xyz/change_mgmt/change_requests",
            "/apps/xyz/change_mgmt/change_requests/10_submitted",
            "/apps/xyz/change_mgmt/change_requests/20_approved",
            "/apps/xyz/change_mgmt/change_requests/30_scheduled",
            "/apps/xyz/change_mgmt/change_requests/40_implemented",
            "/apps/xyz/change_mgmt/change_requests/50_rejected",
            "/apps/xyz/change_mgmt/change_requests/60_deferred",
            "/apps/xyz/change_mgmt/newsletters",
            
            "/apps/xyz/contracts",
            "/apps/xyz/contracts/vendors",            
            "/apps/xyz/contracts/vendors/XYZ",            

            "/apps/xyz/team_journals",
            "/apps/xyz/team_journals/user_a",
            "/apps/xyz/team_journals/user_b",
            "/apps/xyz/team_journals/user_c",                        

            "/apps/xyz/data",
            "/apps/xyz/data/dictionary",
            "/apps/xyz/data/governance",
            "/apps/xyz/data/terminology",    
            "/apps/xyz/data/logical_schema",                             
            "/apps/xyz/data/physical_schema",            
            "/apps/xyz/data/canonical_schema",            
            "/apps/xyz/data/scripts/DDL",            
            "/apps/xyz/data/scripts/DML",              

            "/apps/xyz/deployment",
            "/apps/xyz/deployment/schedule",
            "/apps/xyz/deployment/presentations",
            "/apps/xyz/deployment/dependencies",
            "/apps/xyz/deployment/procedures",
            "/apps/xyz/deployment/scripts",     
			
            "/apps/xyz/design",
            "/apps/xyz/design/reviews",
            "/apps/xyz/design/reviews/ARB",
            "/apps/xyz/design/reviews/DRB",                                    
            "/apps/xyz/design/reviews/wall_walks",                                         
            "/apps/xyz/design/reviews/security",   
			
            "/apps/xyz/design/AS_IS",
            "/apps/xyz/design/AS_IS/conversions/",
            "/apps/xyz/design/AS_IS/disaster_recovery/",            
            "/apps/xyz/design/AS_IS/integrations",
            "/apps/xyz/design/AS_IS/integrations/batch",
            "/apps/xyz/design/AS_IS/integrations/batch/inbound",
            "/apps/xyz/design/AS_IS/integrations/batch/outbound",
            "/apps/xyz/design/AS_IS/integrations/services",
            "/apps/xyz/design/AS_IS/integrations/services/consuming",
            "/apps/xyz/design/AS_IS/integrations/services/producing",            
            "/apps/xyz/design/AS_IS/requirements",
            "/apps/xyz/design/AS_IS/requirements/business",            
            "/apps/xyz/design/AS_IS/requirements/NFRs",            
            "/apps/xyz/design/AS_IS/reports",
            "/apps/xyz/design/AS_IS/security",            
            "/apps/xyz/design/AS_IS/UI",

            "/apps/xyz/design/TO_BE",
            "/apps/xyz/design/TO_BE/applications",                        
            "/apps/xyz/design/TO_BE/applications/XYZ",            
            "/apps/xyz/design/TO_BE/conversions",
            "/apps/xyz/design/TO_BE/disaster_recovery",                             
            "/apps/xyz/design/TO_BE/integrations",
            "/apps/xyz/design/TO_BE/integrations/batch",
            "/apps/xyz/design/TO_BE/integrations/batch/inbound",
            "/apps/xyz/design/TO_BE/integrations/batch/outbound",
            "/apps/xyz/design/TO_BE/integrations/services",
            "/apps/xyz/design/TO_BE/integrations/services/consuming",
            "/apps/xyz/design/TO_BE/integrations/services/producing",
            "/apps/xyz/design/TO_BE/requirements",
            "/apps/xyz/design/TO_BE/requirements/business",            
            "/apps/xyz/design/TO_BE/requirements/NFRs",            
            "/apps/xyz/design/TO_BE/reviews",
            "/apps/xyz/design/TO_BE/reports",
            "/apps/xyz/design/TO_BE/security",            
            "/apps/xyz/design/TO_BE/UI",
                        
            "/apps/xyz/infrastructure",
            "/apps/xyz/infrastructure/diagrams",
            "/apps/xyz/infrastructure/environments",
            "/apps/xyz/infrastructure/environments/10_dev",
            "/apps/xyz/infrastructure/environments/20_sit",
            "/apps/xyz/infrastructure/environments/30_pit",
            "/apps/xyz/infrastructure/environments/40_prod",
            "/apps/xyz/infrastructure/nas",
            "/apps/xyz/infrastructure/nas/secure",
            "/apps/xyz/infrastructure/network",
            "/apps/xyz/infrastructure/security",        
			
            "/apps/xyz/operations",
            "/apps/xyz/operations/monitoring",
            "/apps/xyz/operations/alerting",
            "/apps/xyz/operations/batch",            
            "/apps/xyz/operations/batch/file_transfers",
            "/apps/xyz/operations/batch/reporting",            
            "/apps/xyz/operations/batch/dashboards",            
            "/apps/xyz/operations/batch/runbooks",
            "/apps/xyz/operations/batch/schedules",

            "/apps/xyz/pmo",
			"/apps/xyz/pmo/scope",
			"/apps/xyz/pmo/scope/requirements",			
			"/apps/xyz/pmo/scope/processes",
			"/apps/xyz/pmo/scope/use_cases",									
            "/apps/xyz/pmo/budgets",
            "/apps/xyz/pmo/charter",
            "/apps/xyz/pmo/contacts",
            "/apps/xyz/pmo/dashboards",            
            "/apps/xyz/pmo/defect_tracking",
            "/apps/xyz/pmo/expense_reports",
            "/apps/xyz/pmo/minutes",
            "/apps/xyz/pmo/project_plans",
            "/apps/xyz/pmo/org_charts",
            "/apps/xyz/pmo/presentations",
            "/apps/xyz/pmo/reporting",            
            
			"/apps/xyz/pmo/resources",
            "/apps/xyz/pmo/resources/resumes",
			
            "/apps/xyz/pmo/releases",
            "/apps/xyz/pmo/releases/planning",			
            "/apps/xyz/pmo/releases/N",
            "/apps/xyz/pmo/releases/N/sprint_planning",
            "/apps/xyz/pmo/releases/N/sprints",
            "/apps/xyz/pmo/releases/N/sprints/sprint_0",
            "/apps/xyz/pmo/releases/N/sprints/sprint_1",
            "/apps/xyz/pmo/releases/N/sprints/sprint_2",
            "/apps/xyz/pmo/releases/N/status_reports",

            "/apps/xyz/references",
            "/apps/xyz/references/standards",
            "/apps/xyz/references/policies",
            "/apps/xyz/references/specifications",
            "/apps/xyz/references/third_party",        
			
            "/apps/xyz/requirements",
            "/apps/xyz/requirements/functional",
            "/apps/xyz/requirements/nfrs",
            "/apps/xyz/requirements/user_stories",
			
			
			"/apps/xyz/Design",
			"/apps/xyz/Design/HLD",    # High Level Design
			"/apps/xyz/Design/DLD",    # Detail Level Design			

            "/apps/xyz/software",

            "/apps/xyz/testing",
            "/apps/xyz/testing/00_test_plans",
            "/apps/xyz/testing/10_integration",
            "/apps/xyz/testing/20_system",
            "/apps/xyz/testing/30_performance",
            "/apps/xyz/testing/30_performance/online",
            "/apps/xyz/testing/30_performance/batch",
            "/apps/xyz/testing/40_user_acceptance",

            "/apps/xyz/training",
            "/apps/xyz/training/users",
            "/apps/xyz/training/users/docs",            
            "/apps/xyz/training/users/presentations",
            "/apps/xyz/training/admins",
            "/apps/xyz/training/admins/docs",            
            "/apps/xyz/training/admins/presentations",
            "/apps/xyz/training/train_the_trainer",
            "/apps/xyz/training/train_the_trainer/docs",            
            "/apps/xyz/training/train_the_trainer/presentations",
			
            "/apps/xyz/vendors",
            "/apps/xyz/vendors/current",
            "/apps/xyz/vendors/future",            
            "/apps/xyz/vendors/_templates",
            "/apps/xyz/vendors/_templates/RFI",
            "/apps/xyz/vendors/_templates/RFP",            
            "/apps/xyz/vendors/_templates/RFQ"            
            );
            
            
    try:
        os.mkdir(project_name);
        for sub_dir in project_dirs:				
			# changed to use makedirs 
			# re: https://docs.python.org/3.5/library/os.html
            os.makedirs(project_name + sub_dir);
    except OSError as exception:
        if exception.errno != errno.EEXIST:
            raise
        pass

