@ECHO off
cls
REM 
REM ***************************************************************************
REM init_project.bat
REM 
REM Client Project Directory Setup Script
REM (Illustrative, Not Exhaustive)
REM
REM International Technology Ventures, Inc.
REM https://www.intltechventures.com
REM
REM Author: Kelvin D. Meeks
REM Email: kmeeks@intltechventures.com 
REM
REM Created: 2019-06-28
REM Update:  2024-04-14
REM
REM github file location
REM https://github.com/intltechventures/Consulting.Project.Tools/blob/master/src/ProjectDirectoryStructure/init_project.bat
REM
REM TO-DO:
REM Incorporate additional ideas from:
REM https://github.com/intltechventures/Consulting.Project.Tools/blob/master/taxonomies/ClassificationCodes.md
REM 

set version=1.5.4
ECHO.
ECHO STARTING init_project.bat, version: %version%
ECHO Created by Kelvin D. Meeks, International Technology Ventures, Inc. 
ECHO.
ECHO You need to run this from the specific root directory, created for a specific client project
ECHO [CTL-C] to abort this job. 
ECHO. 
ECHO. 
pause


REM 
REM ***************************************************************************
REM An array of Valid Parent Directories - to prevent creation of project directories - outside of valid parent directories 
REM **CUSTOMIZATION REQUIRED*** 
set validParentDirs="_projects" "test" "10 Opportunities" "20 Prospects"

REM 
REM ***************************************************************************
REM **CUSTOMIZATION REQUIRED***
set projects_home_dir=c:\_intltechventures\_projects
set location_text_file=c:\_kelvin\Location.txt
set travel_expense_template=c:\_intltechventures\_templates\Travel\YYYY ITV Travel Expenses - Client - Template.xlsx



REM 
REM ***************************************************************************
REM Get just the current directory name (not the full path)
REM NOTE: nx means file name and extension only
REM Reference: 
REM https://superuser.com/questions/160702/get-current-folder-name-by-a-dos-command
REM https://ss64.com/nt/syntax-percent.html
REM https://www.robvanderwoude.com/ntfor.php
for %%I in (.) do set currentDir=%%~nxI

ECHO Current Directory: %currentDir%
pause


REM 
REM ***************************************************************************
:CHECK_FOR_ROOT_DIR
REM Prevent creating a project folder in the root directory 
if "%currentDir%" == "" (
	ECHO.
	REM SET RED Text 
	ECHO ERROR: You cannot create a project in the root folder 
	goto ERROR_INVALID_DIRECTORY
)


REM 
REM ***************************************************************************
:CHECK_FOR_VALID_PARENT_DIRS
REM Check if the parent directory is one of the valid parent directories 
REM Retrieve Parent Directory name 
pushd .
cd ..
for %%I in (.) do set parentDir=%%~nxI
ECHO parent directory: %parentDir%
popd 

REM Iterate through list of valid parent directories, and goto START if a match is found 
for %%t in (%validParentDirs%) do (   
	call echo Comparing parent directory: [%parentDir%] against Valid Parent Directory check: [%%t]
	if %%t=="%parentDir%" (
		ECHO matched!
		goto START
	)
)


REM 
REM ***************************************************************************
:ABORT_INVALID_PARENT_DIR_DETECTED
REM Everything else is an error condition
ECHO.
REM SET RED Text 
ECHO ERROR: A valid entry in the "validParentDirs" list: [%validParentDirs%] - was not found
ECHO Search term was: [%parentDir%]
ECHO. 
goto ERROR_INVALID_DIRECTORY


REM 
REM ***************************************************************************
:START


REM 
REM ***************************************************************************
REM Constructing Date and Time String
REM ***************************************************************************
REM 
:CONSTRUCT_DATE_TIME
ECHO.
ECHO Preparing Date Fields...
for /f %%I in ('wmic os get localdatetime ^|find "20"') do set dt=%%I
REM dt format is assumed to be in YYYYMMDDhhmmss...
echo "...Date/Time String: %dt%"

set year=%dt:~0,4%
echo "...Year: %year%"

set month=%dt:~4,2%
echo "...Month: %month%"

set day=%dt:~6,2%
echo "...Day: %day%"

set dt=%year%-%month%-%day%
REM dt format is now YYYY-MM-DD
echo "YYYY-MM-DD: %dt%"



REM 
REM ***************************************************************************
REM Prepare _journals Directory
REM ***************************************************************************
REM 
:PREPARE_JOURNALS
ECHO.
ECHO Preparing _journals\%year%\%month% folder...
mkdir _journals\%year%\%month%


REM 
REM ***************************************************************************
REM Prepare First _journals Directory Entry
REM	
REM References:
REM https://docs.microsoft.com/en-us/previous-versions/windows/desktop/wmitimepprov/win32-localtime
REM 
REM	DayOfWeek
REM	"Current day of the current week that matches the query (0 6). By convention, the value 0 is always Sunday, regardless of the culture or the locale set on the machine."
REM ***************************************************************************
:GET_DAY_OF_WEEK
for /F "skip=2 tokens=2-4 delims=," %%A in ('WMIC Path Win32_LocalTime Get DayOfWeek /Format:csv') do set dayNumber=%%A  

if %dayNumber% == 0 set dayName=Sunday
if %dayNumber% == 1 set dayName=Monday
if %dayNumber% == 2 set dayName=Tuesday
if %dayNumber% == 3 set dayName=Wednesday
if %dayNumber% == 4 set dayName=Thursday
if %dayNumber% == 5 set dayName=Friday
if %dayNumber% == 6 set dayName=Saturday
echo "...Day Name Set: %dayName%"



REM 
REM ***************************************************************************
:START_JOURNAL_CREATION
ECHO.
ECHO Preparing First Journal Entry...

if exist "_journals\%year%\%month%\%dt%.txt" (
	ECHO.
	ECHO ...Journal already exist: "_journals\%year%\%month%\%dt%.txt"
	goto SKIP_JOURNAL_CREATION
) 

ECHO "...Creating Journal File: _journals\%year%\%month%\%dt%.txt"

TOUCH _journals\%year%\%month%\%dt%.txt
ECHO. >> _journals\%year%\%month%\%dt%.txt

SET journal_header=%dt% %dayName%
ECHO %journal_header% >> _journals\%year%\%month%\%dt%.txt

REM Get just the current directory name (not the full path) - as the client name
for %%I in (.) do set client=%%~nxI
ECHO Client: %client% >> _journals\%year%\%month%\%dt%.txt


if exist %location_text_file% (
set /p Location=<%location_text_file%
ECHO.
ECHO Setting Location to "%Location%"
ECHO Location: %Location% >> _journals\%year%\%month%\%dt%.txt
)

ECHO. >> _journals\%year%\%month%\%dt%.txt
ECHO 09:00- >> _journals\%year%\%month%\%dt%.txt
ECHO. >> _journals\%year%\%month%\%dt%.txt


:SKIP_JOURNAL_CREATION

REM 
REM ***************************************************************************
REM Prepare other initial directories
REM ***************************************************************************
REM 

REM 
REM ***************************************************************************
:CREATE_ADMIN_FOLDERS
ECHO.
ECHO Preparing admin\ directory entries...

mkdir admin
mkdir admin\_status_reports\%year%\%month%
mkdir admin\_templates
mkdir admin\_timesheets\%year%\%month%

mkdir admin\calendars\%year%

mkdir admin\contacts
mkdir admin\contacts\IT
mkdir admin\contacts\IT\Architecture
mkdir admin\contacts\IT\DevOps
mkdir admin\contacts\IT\Engineering
mkdir admin\contacts\IT\Infrastructure
mkdir admin\contacts\IT\Networking
mkdir admin\contacts\IT\Operations
mkdir admin\contacts\IT\Procurement
mkdir admin\contacts\IT\QA
mkdir admin\contacts\IT\Security

mkdir admin\contacts\PMO

mkdir admin\contacts\SMEs

mkdir admin\contacts\stakeholders

mkdir admin\contacts\vendors

mkdir admin\contacts\VMO


mkdir admin\contracts\%year%\10_originals
mkdir admin\contracts\%year%\15_modified
mkdir admin\contracts\%year%\20_ITV_signed
mkdir admin\contracts\%year%\30_client_signed
mkdir admin\contracts\%year%\40_final
mkdir admin\contracts\%year%\90_COI

mkdir admin\expenses

mkdir admin\facilities\maps
mkdir admin\facilities\locations
mkdir admin\facilities\parking

mkdir admin\global_sourcing

mkdir admin\holidays
mkdir admin\holidays\%year%

mkdir admin\housing

mkdir admin\HR

mkdir admin\invoice.payments\%year%\%month%
mkdir admin\invoices\%year%\%month%

mkdir admin\kudos\given\%year%
mkdir admin\kudos\received\%year%
mkdir admin\kudos\received\LinkedIn\recommendations\%year%

mkdir admin\memos\%year%

mkdir admin\onboarding
mkdir admin\onboarding\laptop
mkdir admin\onboarding\training

mkdir admin\org_charts\%year%

mkdir admin\policies
mkdir admin\policies\HR
mkdir admin\policies\Travel
mkdir admin\policies\Network 

mkdir admin\procedures

mkdir admin\proposals\%year%

mkdir admin\recommendations\%year%

mkdir admin\remote_access

mkdir admin\training\%year%

REM 
REM ***************************************************************************
:CREATE_ENGAGEMENT_LINKS_FILE
set file_name=client_engagement_links.html

ECHO.
ECHO Preparing Client Engagement Links file: %file_name%
ECHO.
	
If exist admin\%file_name% (
	ECHO Client Engagement File already exists - skipping
	GOTO SKIP_ENGAGEMENT_LINKS_FILE
)

touch admin\%file_name%

REM Remember to escape *EACH* shell metacharacters with "^"
REM See other options: https://stackoverflow.com/questions/7308586/using-batch-echo-with-special-characters
ECHO ^<html^> >> admin\%file_name%
ECHO ^<head^> >> admin\%file_name%
ECHO ^<title^>{client name} Links^</title^> >> admin\%file_name%
ECHO ^</head^> >> admin\%file_name%
ECHO ^<body^> >> admin\%file_name%
ECHO. >> admin\%file_name%
ECHO ^<em^>Client Engagement Links^</em^> >> admin\%file_name%
ECHO ^<ul^> >> admin\%file_name%
ECHO ^<li^>^<a href="" target="_blank"^>{Time Sheet Portal}^</a^>^</li^> >> admin\%file_name%
ECHO ^</ul^> >> admin\%file_name%
ECHO. >> admin\%file_name%
ECHO ^</body^> >> admin\%file_name%
ECHO ^</html^> >> admin\%file_name%

:SKIP_ENGAGEMENT_LINKS_FILE


REM 
REM ***************************************************************************
:CREATE_ARCHITECTURE_FOLDERS
ECHO.
ECHO Preparing architecture\ directory entries...

mkdir architecture

mkdir architecture\EA\analysis\SWOT 

mkdir architecture\EA\APM\BU\XYZ\%year%
mkdir architecture\EA\APM\BU\XYZ\%year%\inventory
mkdir architecture\EA\APM\BU\XYZ\%year%\roadmap
mkdir architecture\EA\APM\BU\XYZ\%year%\views
mkdir architecture\EA\APM\BU\XYZ\%year%\assessment\TIME\_report
mkdir architecture\EA\APM\BU\XYZ\%year%\assessment\TIME\tolerate
mkdir architecture\EA\APM\BU\XYZ\%year%\assessment\TIME\invest
mkdir architecture\EA\APM\BU\XYZ\%year%\assessment\TIME\migrate
mkdir architecture\EA\APM\BU\XYZ\%year%\assessment\TIME\eliminate

mkdir architecture\EA\assessments\%year%
mkdir architecture\EA\assessments\%year%\maturity
mkdir architecture\EA\assessments\%year%\report 
mkdir architecture\EA\assessments\%year%\TIME\_report
mkdir architecture\EA\assessments\%year%\TIME\tolerate
mkdir architecture\EA\assessments\%year%\TIME\invest
mkdir architecture\EA\assessments\%year%\TIME\migrate
mkdir architecture\EA\assessments\%year%\TIME\eliminate

mkdir architecture\EA\documentation

mkdir architecture\EA\governance\APIs\meetings\%year%\%month%
mkdir architecture\EA\governance\APIs\members\%year%
mkdir architecture\EA\governance\APIs\process
mkdir architecture\EA\governance\APIs\schedule\%year%

mkdir architecture\EA\governance\ARB\meetings\%year%\%month%
mkdir architecture\EA\governance\ARB\members\%year%
mkdir architecture\EA\governance\ARB\process
mkdir architecture\EA\governance\ARB\schedule\%year%

mkdir architecture\EA\governance\Data\meetings\%year%\%month%
mkdir architecture\EA\governance\Data\members\%year%
mkdir architecture\EA\governance\Data\process
mkdir architecture\EA\governance\Data\schedule\%year%

mkdir architecture\EA\governance\policies

mkdir architecture\EA\governance\principles

mkdir architecture\EA\governance\procedures

mkdir architecture\EA\governance\Repository\meetings\%year%\%month%
mkdir architecture\EA\governance\Repository\members\%year%
mkdir architecture\EA\governance\Repository\process
mkdir architecture\EA\governance\Repository\schedule\%year%

mkdir architecture\EA\governance\Security\meetings\%year%\%month%
mkdir architecture\EA\governance\Security\members\%year%
mkdir architecture\EA\governance\Security\process
mkdir architecture\EA\governance\Secureity\schedule\%year%

mkdir architecture\EA\governance\specifications

mkdir architecture\EA\governance\standards

mkdir architecture\EA\governance\TGB\meetings\%year%\%month%
mkdir architecture\EA\governance\TGB\members\%year%
mkdir architecture\EA\governance\TGB\process
mkdir architecture\EA\governance\TGB\schedule\%year%

mkdir architecture\EA\governance\TRM\meetings\%year%\%month%
mkdir architecture\EA\governance\TRM\members\%year%
mkdir architecture\EA\governance\TRM\process
mkdir architecture\EA\governance\TRM\schedule\%year%

mkdir architecture\EA\roadmap\%year%
mkdir architecture\EA\roadmap\%year%\AS-IS
mkdir architecture\EA\roadmap\%year%\TO-BE

mkdir architecture\EA\seminars\%year%\%month%

mkdir architecture\EA\views
mkdir architecture\EA\views\conceptual
mkdir architecture\EA\views\endpoints
mkdir architecture\EA\views\data
mkdir architecture\EA\views\data_flows
mkdir architecture\EA\views\infrastructure
mkdir architecture\EA\views\processes
mkdir architecture\EA\views\security
mkdir architecture\EA\views\security\Authentication
mkdir architecture\EA\views\security\Authorization
mkdir architecture\EA\views\security\SSO
mkdir architecture\EA\views\security\WAF
mkdir architecture\EA\views\security\AD
mkdir architecture\EA\views\security\Monitoring
mkdir architecture\EA\views\security\Monitoring\Intrusion
mkdir architecture\EA\views\security\Monitoring\Traffic

mkdir architecture\infrastructure
mkdir architecture\infrastructure\overview
mkdir architecture\infrastructure\inventory
mkdir architecture\infrastructure\environments
mkdir architecture\infrastructure\environments\10_DEV
mkdir architecture\infrastructure\environments\20_TEST
mkdir architecture\infrastructure\environments\30_QA
mkdir architecture\infrastructure\environments\40_STAGE
mkdir architecture\infrastructure\environments\50_TRAINING
mkdir architecture\infrastructure\environments\60_SALES
mkdir architecture\infrastructure\environments\70_UAT
mkdir architecture\infrastructure\environments\80_BREAK_FIX
mkdir architecture\infrastructure\environments\99_PROD


mkdir architecture\references

mkdir architecture\references\OSS

mkdir architecture\references\shared_services
mkdir architecture\references\shared_services\alerting
mkdir architecture\references\shared_services\ETL
mkdir architecture\references\shared_services\events
mkdir architecture\references\shared_services\IAM
mkdir architecture\references\shared_services\IAM\AD
mkdir architecture\references\shared_services\IAM\AuthN
mkdir architecture\references\shared_services\IAM\AuthZ
mkdir architecture\references\shared_services\IAM\RBAC
mkdir architecture\references\shared_services\IAM\SSO
mkdir architecture\references\shared_services\low_code
mkdir architecture\references\shared_services\messaging
mkdir architecture\references\shared_services\MFT
mkdir architecture\references\shared_services\monitoring
mkdir architecture\references\shared_services\no_code
mkdir architecture\references\shared_services\push_notifications
mkdir architecture\references\shared_services\scheduling
mkdir architecture\references\shared_services\SMS
mkdir architecture\references\shared_services\streaming
mkdir architecture\references\shared_services\workflow

mkdir architecture\security
mkdir architecture\security\Certifications
mkdir architecture\security\Certifications\HIPAA
mkdir architecture\security\Certifications\HITRUST
mkdir architecture\security\Certifications\PCI-DSS
mkdir architecture\security\Certifications\SOC2
mkdir architecture\security\DMZ
mkdir architecture\security\IAM
mkdir architecture\security\Monitoring
mkdir architecture\security\Monitoring\Egress
mkdir architecture\security\Monitoring\Ingress
mkdir architecture\security\Scanning
mkdir architecture\security\Scanning\Code
mkdir architecture\security\Scanning\Devices
mkdir architecture\security\WAF


REM 
REM ***************************************************************************
:CREATE_BACKGROUND_FOLDERS
ECHO.
ECHO Preparing background\ directory entries...

mkdir background

mkdir background\_opportunity_seed\%year%\%month%
mkdir background\_opportunity_analysis\%year%\%month%


mkdir background\company
mkdir background\company\business_lines
mkdir background\company\collateral
mkdir background\company\collateral\logos
mkdir background\company\locations
mkdir background\company\partnerships
mkdir background\company\photos\%year%\%month%
mkdir background\company\products
mkdir background\company\services
mkdir background\company\subsidiaries
mkdir background\company\www

mkdir background\news.company\%year%\%month%

mkdir background\news.company.stock\%year%\%month%
mkdir background\news.company.stock\%year%\10K\
mkdir background\news.company.stock\%year%\10Q\
mkdir background\news.company.stock\%year%\10Q\Q-1
mkdir background\news.company.stock\%year%\10Q\Q-2
mkdir background\news.company.stock\%year%\10Q\Q-3
mkdir background\news.company.stock\%year%\10Q\Q-4

mkdir background\news.competitors\%year%\%month%
mkdir background\news.industry\%year%\%month%



mkdir background\research\BBB.org\%year%\%month%
mkdir background\research\glassdoor.com\%year%\%month%
mkdir background\research\linkedin.com\connections\%year%\%month% 
mkdir background\research\linkedin.com\profiles\%year%\%month% 
mkdir background\research\wikipedia.org

:SKIP_BACKGROUND_FOLDERS


REM 
REM ***************************************************************************
:CREATE_COMMUNICATION_FOLDES 
ECHO.
ECHO Preparing communications\ directory entries...

mkdir communications\%year%\



REM
REM ***************************************************************************
:CREATE_DELIVERABLES_FOLDERS 
ECHO.
ECHO Preparing deliverables directory 

mkdir deliverables\%year%


REM 
REM ***************************************************************************
:CREATE_ENGINEERING_FOLDERS
ECHO.
ECHO Preparing engineering\ directory entries...

mkdir engineering

mkdir engineering\CD\
mkdir engineering\CI\

mkdir engineering\coding
mkdir engineering\coding\standards

mkdir engineering\governance
mkdir engineering\governance\principles
mkdir engineering\governance\policies
mkdir engineering\governance\standards
mkdir engineering\governance\specifications

mkdir engineering\UI\standards
mkdir engineering\UX


REM 
REM ***************************************************************************
:CREATE_MISC_FOLDERS
ECHO.
ECHO Preparing remaining misc. directory entries...

mkdir gitrepos

mkdir photos\%year%

mkdir planning\%year%

mkdir presentations\%year%

mkdir references
mkdir references\DevOps

mkdir references\operations
mkdir references\operations\jobs
mkdir references\operations\jobs\ad_hoc
mkdir references\operations\jobs\daily
mkdir references\operations\jobs\weekly
mkdir references\operations\jobs\quarterly
mkdir references\operations\jobs\monthly
mkdir references\operations\jobs\yearly
mkdir references\operations\monitoring

mkdir references\regulatory

mkdir references\tips

mkdir research\%year%

mkdir sparx\images 
mkdir sparx\models
mkdir sparx\reports

mkdir special_projects\%year%


REM 
REM ***************************************************************************
:CREATE_TRAVEL_FOLDERS
ECHO.
ECHO Preparing travel directory entries...

mkdir travel\
mkdir travel\_templates
mkdir travel\research\%year%\
mkdir travel\research\%year%\housing
mkdir travel\research\%year%\hotels
mkdir travel\research\%year%\services
mkdir travel\research\%year%\flights
mkdir travel\research\%year%\maps
mkdir travel\trips\%year%\


REM 
REM ***************************************************************************
:COPY_TRAVEL_EXPENSE_TEMPLATE 

if exist "%travel_expense_template%" (
	copy "%travel_expense_template%" travel\_templates\.
	GOTO SKIP_TRAVEL_EXPENSE_TEMPLATE
)

ECHO.
REM YELLOW TEXT...
ECHO WARNING: TRAVEL EXPENSE TEMPLTE [%travel_expose_template%] - NOT FOUND

:SKIP_TRAVEL_EXPENSE_TEMPLATE 



REM 
REM ***************************************************************************
:CREATE_COMMUTE_INFO
set commute_info=commute_info.txt
if exist "travel\%commute_info%" goto SKIP_COMMUTE_INFO

touch travel\%commute_info%

ECHO. >> travel\%commute_info%
ECHO Google Map Link: Driving Route from Home to Client Office >> travel\%commute_info%

ECHO. >> travel\%commute_info%
ECHO Google Map Link: Driving Route from Client Office to Home >> travel\%commute_info%
ECHO. >> travel\%commute_info%

:SKIP_COMMUTE_INFO


REM 
REM ***************************************************************************
:CREATE_HOTEL_INFO
set hotel_info=hotel_info.txt
if exist "travel\%hotel_info%" goto SKIP_HOTEL_INFO

touch travel\%hotel_info%

ECHO.
ECHO Preparing "%hotel_info%" skeleton

ECHO. >> travel\%hotel_info%
ECHO Google Map Link: Hotels in the vicinity >> travel\%hotel_info%
ECHO. >> travel\%hotel_info%

:SKIP_HOTEL_INFO


REM 
REM ***************************************************************************
:CREATE_VENDORS_DIR
ECHO.
ECHO Preparing vendor directory 

if exist vendors (
	ECHO.
	ECHO vendors directory already exists, skipping 
	GOTO SKIP_VENDORS_DIR 
)	

mkdir vendors
	
:SKIP_VENDORS_DIR

REM 
REM ***************************************************************************
REM Prepare Client Info - general information file, in root directory of client Project folder
REM ***************************************************************************
:CREATE_CLIENT_INFO

set client_info=client_info.txt
ECHO.
ECHO Checking for Client Info: %client_info%
if exist %client_info% goto SKIP_CLIENT_INFO

touch %client_info%

ECHO.
ECHO Preparing "%client_info%" skeleton

ECHO. >> %client_info%
ECHO. >> %client_info%
echo Client Name: %currentDir% >> %client_info%

ECHO. >> %client_info%
ECHO. >> %client_info%
echo Business Description: >> %client_info%

ECHO. >> %client_info%
echo Address: >> %client_info%

ECHO. >> %client_info%
echo Company URL: >> %client_info%

ECHO. >> %client_info%
echo Company URL:, Executive Leadership Team: >> %client_info%

ECHO. >> %client_info%
echo Company LinkedIn URL: >> %client_info%

ECHO. >> %client_info% 
echo Glassdoor URL: >> %client_info%

ECHO. >> %client_info% 
echo Twitter URL: >> %client_info%

ECHO. >> %client_info% 
echo YouTube URL: >> %client_info%

ECHO. >> %client_info%
ECHO. >> %client_info%
ECHO. >> %client_info%
echo Date Founded: >> %client_info%


ECHO. >> %client_info%
ECHO Tech Crunch URL: >> %client_info%

ECHO. >> %client_info%
ECHO Angel List URL: >> %client_info%

ECHO. >> %client_info%
echo # Employees: >> %client_info%

ECHO. >> %client_info%
echo Annual Revenue: >> %client_info%

ECHO. >> %client_info%
echo Stock Symbol: >> %client_info%

ECHO. >> %client_info%
echo Investor Relations URL: >> %client_info%

ECHO. >> %client_info%
echo Yahoo Finance URL: >> %client_info%

ECHO. >> %client_info%
echo Google Finance URL: >> %client_info% 


ECHO. >> %client_info%
ECHO. >> %client_info%
echo Opportunity Source: >> %client_info%

ECHO. >> %client_info%
ECHO. >> %client_info%
echo Start Date: >> %client_info% 

ECHO. >> %client_info%
echo End Date: >> %client_info%


ECHO. >> %client_info%
echo Global Sourcing: >> %client_info%

ECHO. >> %client_info%
ECHO Subcontracting Firm: >> %client_info%

ECHO. >> %client_info%
echo Rate: >> %client_info%

ECHO. >> %client_info%
echo Duration: >> %client_info%


ECHO. >> %client_info%
echo TimeZone: >> %client_info%


ECHO. >> %client_info%
echo Invoice Submission Email: >> %client_info%

ECHO. >> %client_info% 
ECHO. >> %client_info%
echo Building - Help Desk: >> %client_info%

ECHO. >> %client_info%
echo Building - Facilities: >> %client_info%

ECHO. >> %client_info%
echo Building - Security: >> %client_info%

ECHO. >> %client_info%
echo Building - Parking: >> %client_info%

ECHO. >> %client_info%
echo Building - Directions [Google Map Link]: >> %client_info%

ECHO. >> %client_info%
ECHO Time Tracking URL: >> %client_info%

ECHO. >> %client_info%
echo Time Tracking Tasks: >> %client_info% 

ECHO. >> %client_info%
echo Web Email URL: >> %client_info%

ECHO. >> %client_info%
echo Corporate Network Access: >> %client_info%

ECHO. >> %client_info%
echo VPN Access: >> %client_info%

ECHO. >> %client_info%
echo Login Account Details: >> %client_info%

ECHO. >> %client_info% 
ECHO. >> %client_info%
echo IT - Support / Help Desk: >> %client_info%

ECHO. >> %client_info% 
ECHO. >> %client_info%
echo IT - Service Request URL: >> %client_info%


ECHO. >> %client_info%
ECHO Travel Company: >> %client_info%
ECHO Reservations Number: >> %client_info% 
ECHO Reservations URL: >> %client_info% 
ECHO Corporate Account ID: >> %client_info% 

ECHO. >> %client_info%
echo Guest WiFi SID: >> %client_info%
echo Guest WiFi User ID: >> %client_info%
echo Guest WiFi Password: >> %client_info%

ECHO. >> %client_info%
ECHO Laptop Equipment ID: >> %client_info%

ECHO. >> %client_info%

:SKIP_CLIENT_INFO 


REM 
REM ***************************************************************************
goto END_JOB 


REM 
REM ***************************************************************************
:ERROR_INVALID_DIRECTORY
ECHO.
REM SET RED Text 
ECHO ERROR - INVALID DIRECTORY USAGE DETECTED 
ECHO Parent Directory: [[%parentDir%]
ECHO Current Directory: [%currentDir%]
cd
ECHO.
ECHO Suggestion: You should change to an appropriate Project directory in %projects_home_dir%
cd "%projects_home_dir%"
dir


REM 
REM ***************************************************************************
:END_JOB
ECHO. 
ECHO Project Initialization Script - completed!


REM USEFUL BATCH SCRIPTING REFERNECES
REM 
REM ***************************************************************************
REM REMEMBER - when doing string comparisons against variables, put them in quotes
REM References:
REM https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/for

REM https://tutorialreference.com/batch-scripting/batch-script-arrays

REM https://www.tutorialspoint.com/batch_script/batch_script_arrays.htm
REM https://www.tutorialspoint.com/batch_script/batch_script_strings.htm

REM https://www.geeksforgeeks.org/batch-script-strings/
REM https://www.geeksforgeeks.org/batch-script-arrays/
REM https://www.geeksforgeeks.org/batch-script-iterating-over-an-array/

REM https://ss64.com/nt/
REM https://ss64.com/nt/syntax.html
REM https://ss64.com/nt/if.html
REM https://ss64.com/nt/equ.html
REM https://ss64.com/nt/delayedexpansion.html
REM https://ss64.com/nt/syntax-arrays.html

REM *** this is a *VERY* good reference 
REM https://en.wikibooks.org/wiki/Windows_Batch_Scripting

REM	https://tutorialreference.com/batch-scripting/batch-script-tutorial
REM https://tutorialreference.com/batch-scripting/batch-script-string-manipulation

REM https://www.dostips.com/DtTipsStringManipulation.php
REM https://www.dostips.com/forum/viewtopic.php?t=3244

REM https://www.robvanderwoude.com/ntif.php
REM https://www.robvanderwoude.com/battech_array.php 

REM https://retrocomputing.stackexchange.com/questions/24450/how-can-i-have-the-user-input-a-string-and-then-do-comparisons-on-it-in-a-batch

REM https://superuser.com/questions/191224/populating-array-in-dos-batch-script

REM https://stackoverflow.com/questions/14954271/string-comparison-in-batch-file
REM https://stackoverflow.com/questions/14954271/string-comparison-in-batch-file
REM https://stackoverflow.com/questions/17605767/create-a-list-or-an-array-and-print-each-item-in-windows-batch
REM https://stackoverflow.com/questions/10166386/arrays-linked-lists-and-other-data-structures-in-cmd-exe-batch-script/10167990

