REM 
REM ***************************************************************************
REM Client Project Directory Setup Script
REM Author: Kelvin D. Meeks
REM Email: kmeeks@intltechventures.com 
REM Created: 2019-06-28
REM International Technology Ventures, Inc.
REM https://www.intltechventures.com
REM ***************************************************************************
REM 

@ECHO off
cls

ECHO You need to run this from the specific root directory, created for a specific client project
pause

REM 
REM ***************************************************************************
REM Constructing Date and Time String
REM ***************************************************************************
REM 
for /f %%I in ('wmic os get localdatetime ^|find "20"') do set dt=%%I
REM dt format is assumed to be in YYYYMMDDhhmmss...
echo %dt%

set year=%dt:~0,4%
echo "Year: %year%"

set month=%dt:~4,2%
echo "Month: %month%"

set day=%dt:~6,2%
echo "Day: %day%"

set dt=%year%-%month%-%day%
REM dt format is now YYYY-MM-DD
echo %dt%


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
REM 	https://docs.microsoft.com/en-us/previous-versions/windows/desktop/wmitimepprov/win32-localtime
REM			DayOfWeek
REM				"Current day of the current week that matches the query (0 6). By convention, the value 0 is always Sunday, regardless of the culture or the locale set on the machine."
REM ***************************************************************************
REM 


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
mkdir admin\kudos
mkdir admin\memos\%year%
mkdir admin\onboarding
mkdir admin\onboarding\laptop
mkdir admin\onboarding\training
mkdir admin\org_charts
mkdir admin\policies
mkdir admin\procedures
mkdir admin\proposals
mkdir admin\training\%year%

mkdir background
mkdir background\company
mkdir background\_profiles
mkdir background\glassdoor.com
mkdir background\news.company\%year%\%month%
mkdir background\news.competitors\%year%\%month%
mkdir background\news.industry%year%\%month%

mkdir invoices\%year%\%month%
mkdir invoice.payments\%year%\%month%

mkdir presentations
mkdir references
mkdir research
mkdir sparx
mkdir special_projects\%year%\
mkdir travel\%year%\
mkdir vendors


REM 
REM ***************************************************************************
REM Prepare info.txt - general information file, in root directory of client Project folder
REM ***************************************************************************
REM 

if exist info.txt goto END_JOB

touch info.txt
echo. >> info.txt
echo Client Name: %1 >> info.txt
echo Address: >> info.txt
echo Company URL: >> info.txt
echo. >> info.txt
echo. >> info.txt

echo # Employees: >> info.txt
echo Annual Revenue: >> info.txt
echo Stock Symbol: >> info.txt
echo. >> info.txt
echo. >> info.txt
echo. >> info.txt

echo Opportunity Source: >> info.txt
echo. >> info.txt
echo. >> info.txt

echo Start Date: >> info.txt 
echo End Date: >> info.txt
echo Subcontracting Firm: >> info.txt
echo Rate: >> info.txt
echo. >> info.txt
echo. >> info.txt

echo Help Desk: >> info.txt
echo. >> info.txt

echo Directions: >> info.txt
echo. >> info.txt

echo Time Tracking URL: >> info.txt
echo. >> info.txt

echo Web Email URL: >> info.txt
echo. >> info.txt

echo Corporate Network Access: >> info.txt
echo. >> info.txt

echo VPN Access: >> info.txt
echo. >> info.txt

echo Login Account Details: >> info.txt
echo. >> info.txt

echo Guest WiFi SID: >> info.txt
echo Guest WiFi User ID: >> info.txt
echo Guest WiFi Password: >> info.txt
echo. >> info.txt

:END_JOB
echo Finished!
