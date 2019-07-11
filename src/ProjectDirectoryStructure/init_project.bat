@ECHO off
cls
REM 
REM ***************************************************************************
REM Client Project Directory Setup Script
REM Author: Kelvin D. Meeks
REM Email: kmeeks@intltechventures.com 
REM Created: 2019-06-28
REM Update: 2019-07-10
REM Version 1.1.6
REM International Technology Ventures, Inc.
REM https://www.intltechventures.com
REM ***************************************************************************
REM 
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
echo Set Day Name: %dayName%

if exist _journals\%year%\%month%\%dt%.txt goto SKIP_JOURNAL_CREATION

touch _journals\%year%\%month%\%dt%.txt
echo. >> _journals\%year%\%month%\%dt%.txt

set journal_header=%dt% %dayName%
echo %journal_header% >> _journals\%year%\%month%\%dt%.txt

REM Get just the current directory name (not the full path) - as the client name
for %%I in (.) do set client=%%~nxI
echo Client: %client% >> _journals\%year%\%month%\%dt%.txt


echo Location: >> _journals\%year%\%month%\%dt%.txt

:SKIP_JOURNAL_CREATION

REM 
REM ***************************************************************************
REM Prepare other initial directories
REM ***************************************************************************
REM 

mkdir admin
mkdir admin\_status_reports\%year%\%month%
mkdir admin\_templates
mkdir admin\_timesheets\%year%\%month%
mkdir admin\calendars\%year%
mkdir admin\contacts
mkdir admin\contracts\%year%\originals
mkdir admin\contracts\%year%\signed
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


mkdir architecture
mkdir architecture\analysis\SWOT 
mkdir architecture\applications
mkdir architecture\applications\inventory\%year%
mkdir architecture\assessments\%year%
mkdir architecture\documentation
mkdir architecture\EA\governance\TGB\%year%\%month%
mkdir architecture\EA\governance\TGB\process
mkdir architecture\EA\governance\ARB\%year%\%month%
mkdir architecture\EA\governance\ARB\process
mkdir architecture\EA\governance\policies
mkdir architecture\EA\governance\standards
mkdir architecture\EA\governance\specifications
mkdir architecture\EA\governance\procedures
mkdir architecture\infrastructure
mkdir architecture\references
mkdir architecture\security


mkdir background
mkdir background\_profiles
mkdir background\company
mkdir background\glassdoor.com
mkdir background\news.company\%year%\%month%
mkdir background\news.competitors\%year%\%month%
mkdir background\news.industry\%year%\%month%


mkdir presentations\%year%

mkdir references
mkdir references\regulatory

mkdir research

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

touch info.txt
ECHO. >> info.txt
ECHO. >> info.txt
echo Client Name: %1 >> info.txt
ECHO. >> info.txt
echo Address: >> info.txt
ECHO. >> info.txt
echo Company URL: >> info.txt
ECHO. >> info.txt
ECHO. >> info.txt

echo # Employees: >> info.txt
ECHO. >> info.txt
echo Annual Revenue: >> info.txt
ECHO. >> info.txt
echo Stock Symbol: >> info.txt
ECHO. >> info.txt
ECHO. >> info.txt

echo Opportunity Source: >> info.txt
ECHO. >> info.txt
ECHO. >> info.txt

echo Start Date: >> info.txt 
ECHO. >> info.txt
echo End Date: >> info.txt
ECHO. >> info.txt
echo Subcontracting Firm: >> info.txt
ECHO. >> info.txt
echo Rate: >> info.txt
ECHO. >> info.txt
ECHO. >> info.txt


echo Help Desk: >> info.txt
ECHO. >> info.txt

echo Building/Facilities: >> info.txt
ECHO. >> info.txt

echo Building/Security: >> info.txt
ECHO. >> info.txt


echo Directions [Google Map Link]: >> info.txt
ECHO. >> info.txt

echo Time Tracking URL: >> info.txt
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


:END_JOB
ECHO. 
ECHO Finished!
