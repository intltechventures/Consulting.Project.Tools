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
            "/architecture",
            "/architecture/views",
            "/architecture/views/component",
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
            "/architecture/presentations",
            "/change_management",
            "/change_management/change_requests",
            "/change_management/change_requests/10_submitted",
            "/change_management/change_requests/20_approved",
            "/change_management/change_requests/30_scheduled",
            "/change_management/change_requests/40_implemented",
            "/change_management/change_requests/50_rejected",
            "/change_management/change_requests/60_deferred",
            "/change_management/newsletters",
            "/contracts",
            "/team_journals",
            "/data",
            "/data/dictionary",
            "/data/governance",            
            "/data/models",
            "/data/scripts",
            "/deployment",
            "/deployment/schedule",
            "/deployment/presentations",
            "/deployment/dependencies",
            "/design",
            "/design/conversions",
            "/design/integrations",
            "/design/integrations/batch",
            "/design/integrations/batch/inbound",
            "/design/integrations/batch/outbound",
            "/design/integrations/services",
            "/design/references",
            "/design/references/standards",
            "/design/references/policies",
            "/design/references/specifications",
            "/design/references/third_party",
            "/design/reviews",
            "/design/reports",
            "/design/user_interface",
            "/infrastructure",
            "/infrastructure/diagrams",
            "/infrastructure/environments",
            "/infrastructure/environments/10_dev",
            "/infrastructure/environments/20_sit",
            "/infrastructure/environments/30_pit",
            "/infrastructure/environments/40_prod",
            "/infrastructure/job_scheduling",
            "/infrastructure/file_transfers",
            "/infrastructure/nas",
            "/infrastructure/nas/secure",
            "/infrastructure/network",
            "/invoices",
            "/operations",
            "/operations/monitoring",
            "/operations/alerting",
            "/operations/batch",
            "/operations/batch/runbooks",
            "/operations/batch/schedules",
            "/pmo",
            "/pmo/budgets",
            "/pmo/charter",
            "/pmo/contacts",
            "/pmo/defect_tracking",
            "/pmo/expense_reports",
            "/pmo/memos",
            "/pmo/project_plans",
            "/pmo/org_charts",
            "/pmo/presentations",
            "/pmo/resources",
            "/pmo/releases",
            "/pmo/sprint_planning",
            "/pmo/sprints",
            "/pmo/sprints/sprint_0",
            "/pmo/sprints/sprint_1",
            "/pmo/sprints/sprint_2",
            "/pmo/status_reports",
            "/requirements",
            "/requirements/functional",
            "/requirements/nfrs",
            "/requirements/user_stories",
            "/time_tracking",
            "/testing",
            "/testing/00_test_plans",
            "/testing/10_integration",
            "/testing/20_system",
            "/testing/30_performance",
            "/testing/30_performance/online",
            "/testing/30_performance/batch",
            "/testing/40_user_acceptance",
            "/training",
            "/training/users",
            "/training/users/presentations",
            "/training/admins",
            "/training/admins/presentations",
            "/training/train_the_trainer",
            "/training/train_the_trainer/presentations",
            "/vendors"
            );
    try:
        os.mkdir(project_name);
        for sub_dir in project_dirs:
            os.mkdir(project_name + sub_dir);
    except OSError as exception:
        if exception.errno != errno.EEXIST:
            raise
