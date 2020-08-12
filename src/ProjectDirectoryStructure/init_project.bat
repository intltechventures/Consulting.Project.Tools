@ECHO off
cls
REM 
REM ***************************************************************************
REM init_project.bat
set version=1.2.9
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
REM Update:  2019-08-31
REM
REM github 
REM https://github.com/intltechventures/Consulting.Project.Tools/blob/master/src/ProjectDirectoryStructure/init_project.bat
REM
REM TO-DO:
REM Incorporate additional ideas from:
REM https://github.com/intltechventures/Consulting.Project.Tools/blob/master/taxonomies/ClassificationCodes.md
REM 
REM ***************************************************************************
REM 
ECHO.
ECHO Starting init_batch.bat
ECHO Version: %version%
ECHO.
ECHO You need to run this from the specific root directory, created for a specific client project
pause

REM 
REM ***************************************************************************
REM Constructing Date and Time String
REM ***************************************************************************
REM 
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
REM 
ECHO.
ECHO Preparing First Journal Entry...
REM Get Day-of-Week...
for /F "skip=2 tokens=2-4 delims=," %%A in ('WMIC Path Win32_LocalTime Get DayOfWeek /Format:csv') do set dayNumber=%%A  


if %dayNumber% == 0 set dayName=Sunday
if %dayNumber% == 1 set dayName=Monday
if %dayNumber% == 2 set dayName=Tuesday
if %dayNumber% == 3 set dayName=Wednesday
if %dayNumber% == 4 set dayName=Thursday
if %dayNumber% == 5 set dayName=Friday
if %dayNumber% == 6 set dayName=Saturday
echo "...Day Name Set: %dayName%"

if exist _journals\%year%\%month%\%dt%.txt goto SKIP_JOURNAL_CREATION
ECHO "...Creating Journal File: _journals\%year%\%month%\%dt%.txt"


TOUCH _journals\%year%\%month%\%dt%.txt
ECHO. >> _journals\%year%\%month%\%dt%.txt

SET journal_header=%dt% %dayName%
ECHO %journal_header% >> _journals\%year%\%month%\%dt%.txt

REM Get just the current directory name (not the full path) - as the client name
for %%I in (.) do set client=%%~nxI
ECHO Client: %client% >> _journals\%year%\%month%\%dt%.txt

ECHO Location: >> _journals\%year%\%month%\%dt%.txt
ECHO. >> _journals\%year%\%month%\%dt%.txt

ECHO 09:00- >> _journals\%year%\%month%\%dt%.txt
ECHO. >> _journals\%year%\%month%\%dt%.txt

:SKIP_JOURNAL_CREATION

REM 
REM ***************************************************************************
REM Prepare other initial directories
REM ***************************************************************************
REM 


REM ***************************************************************************
REM 
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
mkdir admin\contacts\IT\Engineering
mkdir admin\contacts\IT\Operations
mkdir admin\contacts\IT\DevOps
mkdir admin\contacts\IT\Procurement
mkdir admin\contacts\IT\QA
mkdir admin\contacts\IT\Security
mkdir admin\contacts\IT\Infrastructure
mkdir admin\contacts\IT\Networking
mkdir admin\contacts\PMO
mkdir admin\contacts\SMEs
mkdir admin\contacts\stakeholders
mkdir admin\contacts\vendors

mkdir admin\contracts\%year%\10_originals
mkdir admin\contracts\%year%\20_ITV_signed
mkdir admin\contracts\%year%\30_client_signed
mkdir admin\contracts\%year%\40_final
mkdir admin\contracts\%year%\90_COI

mkdir admin\facilities\locations
mkdir admin\HR
mkdir admin\invoices\%year%\%month%
mkdir admin\invoice.payments\%year%\%month%
mkdir admin\kudos\%year%
mkdir admin\memos\%year%
mkdir admin\onboarding
mkdir admin\onboarding\laptop
mkdir admin\onboarding\training
mkdir admin\org_charts\%year%
mkdir admin\policies
mkdir admin\policies\HR
mkdir admin\policies\Travel
mkdir admin\procedures
mkdir admin\proposals\%year%
mkdir admin\recommendations\%year%
mkdir admin\training\%year%



REM ***************************************************************************
REM 
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

mkdir architecture\EA\governance\TGB\meetings\%year%\%month%
mkdir architecture\EA\governance\TGB\members\%year%
mkdir architecture\EA\governance\TGB\process
mkdir architecture\EA\governance\TGB\schedule\%year%

mkdir architecture\EA\governance\ARB\meetings\%year%\%month%
mkdir architecture\EA\governance\ARB\members\%year%
mkdir architecture\EA\governance\ARB\process
mkdir architecture\EA\governance\ARB\schedule\%year%

mkdir architecture\EA\governance\principles
mkdir architecture\EA\governance\policies
mkdir architecture\EA\governance\standards
mkdir architecture\EA\governance\specifications
mkdir architecture\EA\governance\procedures

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
mkdir architecture\infrastructure\environemnts\10_DEV
mkdir architecture\infrastructure\environemnts\20_TEST
mkdir architecture\infrastructure\environemnts\30_QA
mkdir architecture\infrastructure\environemnts\40_STAGE
mkdir architecture\infrastructure\environemnts\50_TRAINING
mkdir architecture\infrastructure\environemnts\60_SALES
mkdir architecture\infrastructure\environemnts\70_UAT
mkdir architecture\infrastructure\environemnts\80_BREAK_FIX
mkdir architecture\infrastructure\environemnts\99_PROD


mkdir architecture\references

mkdir architecture\references\OSS

mkdir architecture\references\shared_services
mkdir architecture\references\shared_services\alerting
mkdir architecture\references\shared_services\AD
mkdir architecture\references\shared_services\authentication
mkdir architecture\references\shared_services\authorization
mkdir architecture\references\shared_services\ETL
mkdir architecture\references\shared_services\low_code
mkdir architecture\references\shared_services\messaging
mkdir architecture\references\shared_services\MFT
mkdir architecture\references\shared_services\monitoring
mkdir architecture\references\shared_services\scheduling
mkdir architecture\references\shared_services\SMS
mkdir architecture\references\shared_services\SSO
mkdir architecture\references\shared_services\workflow

mkdir architecture\security
mkdir architecture\security\WAF



REM ***************************************************************************
REM 
ECHO.
ECHO Preparing background\ directory entries...

mkdir background
mkdir background\BBB.org\%year%
mkdir background\company
mkdir background\company\collateral
mkdir background\company\locations
mkdir background\company\products
mkdir background\company\services
mkdir background\company\business_lines
mkdir background\company\subsidiaries
mkdir background\company\partnerships
mkdir background\company\www
mkdir background\glassdoor.com
mkdir background\linkedin.com\profiles
mkdir background\news.company\%year%\%month%
mkdir background\news.competitors\%year%\%month%
mkdir background\news.industry\%year%\%month%



REM ***************************************************************************
REM 
ECHO.
ECHO Preparing engineering\ directory entries...

mkdir engineering
mkdir engineering\governance
mkdir engineering\governance\principles
mkdir engineering\governance\policies
mkdir engineering\governance\standards
mkdir engineering\governance\specifications
mkdir engineering\CI
mkdir engineering\CD
mkdir engineering\coding
mkdir engineering\coding\standards
mkdir engineering\UX
mkdir engineering\UI\standards

mkdir gitrepos

REM ***************************************************************************
REM 
ECHO.
ECHO Preparing remaining misc. directory entries...


mkdir deliverables\%year%

mkdir planning\%year%

mkdir presentations\%year%

mkdir references
mkdir references\regulatory
mkdir references\DevOps
mkdir references\operations
mkdir references\operations\monitoring
mkdir references\operations\jobs
mkdir references\operations\jobs\ad_hoc
mkdir references\operations\jobs\daily
mkdir references\operations\jobs\weekly
mkdir references\operations\jobs\quarterly
mkdir references\operations\jobs\monthly
mkdir references\operations\jobs\yearly
mkdir references\tips

mkdir research\%year%

mkdir sparx\models
mkdir sparx\reports
mkdir sparx\images

mkdir special_projects\%year%

mkdir travel\%year%\%month%

touch travel\commute.txt

ECHO. >> travel\commute.txt
ECHO Google Map Link: Driving Route from Home to Client Office >> travel\commute.txt

ECHO. >> travel\commute.txt
ECHO Google Map Link: Driving Route from Client Office to Home >> travel\commute.txt
ECHO. >> travel\commute.txt

touch travel\hotels.txt

ECHO. >> travel\hotels.txt
ECHO Google Map Link: Hotels in the vicinity >> travel\hotels.txt
ECHO. >> travel\hotels.txt

mkdir vendors


REM 
REM ***************************************************************************
REM Prepare info.txt - general information file, in root directory of client Project folder
REM ***************************************************************************
REM 

if exist info.txt goto END_JOB

REM ***************************************************************************
REM 
ECHO.
ECHO Preparing info.txt skeleton...

touch info.txt
ECHO. >> info.txt
ECHO. >> info.txt
echo Client Name: %1 >> info.txt

ECHO. >> info.txt
echo Address: >> info.txt

ECHO. >> info.txt
echo Company URL: >> info.txt

ECHO. >> info.txt
echo Company URL, Executive Leadership Team: >> info.txt

ECHO. >> info.txt
echo Company LinkedIn URL: >> info.txt

ECHO. >> info.txt 
echo Glassdoor URL: >> info.txt

ECHO. >> info.txt 
echo Twitter URL: >> info.txt

ECHO. >> info.txt
ECHO. >> info.txt
ECHO. >> info.txt
echo Date Founded: >> info.txt


ECHO. >> info.txt
ECHO Tech Crunch URL: >> info.txt

ECHO. >> info.txt
ECHO Angel List URL >> info.txt

ECHO. >> info.txt
echo # Employees: >> info.txt

ECHO. >> info.txt
echo Annual Revenue: >> info.txt

ECHO. >> info.txt
echo Stock Symbol: >> info.txt

ECHO. >> info.txt
echo Investor Relations URL: >> info.txt

ECHO. >> info.txt
echo Yahoo Finance URL: >> info.txt

ECHO. >> info.txt
echo Google Finance URL: >> info.txt 


ECHO. >> info.txt
ECHO. >> info.txt
echo Opportunity Source: >> info.txt

ECHO. >> info.txt
ECHO. >> info.txt
echo Start Date: >> info.txt 

ECHO. >> info.txt
echo End Date: >> info.txt

ECHO. >> info.txt
ECHO Subcontracting Firm: >> info.txt

ECHO. >> info.txt
echo Rate: >> info.txt

ECHO. >> info.txt
echo Invoice Submission Email: >> info.txt

ECHO. >> info.txt 
ECHO. >> info.txt
echo Building - Help Desk: >> info.txt

ECHO. >> info.txt
echo Building - Facilities: >> info.txt

ECHO. >> info.txt
echo Building - Security: >> info.txt

ECHO. >> info.txt
echo Building - Parking: >> info.txt

ECHO. >> info.txt
echo Building - Directions [Google Map Link]: >> info.txt

ECHO. >> info.txt
ECHO Time Tracking URL: >> info.txt

ECHO. >> info.txt
echo Time Tracking Tasks: >> info.txt 

ECHO. >> info.txt
echo Web Email URL: >> info.txt

ECHO. >> info.txt
echo Corporate Network Access: >> info.txt

ECHO. >> info.txt
echo VPN Access: >> info.txt

ECHO. >> info.txt
echo Login Account Details: >> info.txt

ECHO. >> info.txt
ECHO Travel Company: >> info.txt
ECHO Reservations Number: >> info.txt 
ECHO Reservations URL: >> info.txt 
ECHO Corporate Account ID: >> info.txt 

ECHO. >> info.txt
echo Guest WiFi SID: >> info.txt
echo Guest WiFi User ID: >> info.txt
echo Guest WiFi Password: >> info.txt

ECHO. >> info.txt
ECHO Laptop Equipment ID: >> info.txt

ECHO. >> info.txt


:END_JOB
ECHO. 
ECHO Finished!
