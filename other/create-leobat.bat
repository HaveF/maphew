@echo off
:: A batch file which generates other batch files to run the Leo Editor,
:: adapted for the local machine. Optionally, it will also set the Windows
:: filetype and association so .leo files can be opened from Explorer.
::
:: It needs to live in the same folder as "launchLeo.py"
::
:: Open Source X/MIT License
:: initial version * 2012-Dec-13 * matt wilkie <maphew@gmail.com>

if "%1"=="" goto :Usage

call :pyCheck %1
call :main %1
if "%2"=="register" call :register %1
goto :eof

:main
  :: %1 is the path to folder containing python .exe's
  set pyexe=%~dp1\python.exe
  set pywexe=%~dp1\pythonw.exe
  echo.
  echo. Generating...
  echo.
  echo. Leo.bat  - run leo in Windows mode
  echo. Leoc.bat - run leo and keep console window open
  echo.  
  echo. These can be placed anywhere in PATH.
  echo.
  echo @"%pyexe%" "%~dp0\launchLeo.py" %%* > leoc.bat
  echo @start /b "Leo" "%pywexe%" "%~dp0\launchLeo.py" %%* > leo.bat
  goto :eof

:register
  :: perms check courtesy of http://stackoverflow.com/questions/4051883
  :: batch-script-how-to-check-for-admin-rights
  net session >nul 2>&1
  if %errorlevel% == 0 (    
    echo.
    echo. Setting .leo filetype and registering association with Windows
    echo.
    assoc .leo=Leo.File
    ftype Leo.File=%pywexe% "%~dp0\launchLeo.py" %%*
   ) else (
    echo. Error: Can't set filetype and register association.
    echo. Please run from elevated shell to do that.
    echo.
    )
  goto :eof

:pyCheck
  if not exist "%1" goto :Usage
  goto :eof

:usage
  echo.
  echo. -=[%~nx0]=-
  echo.
  echo. Create batch files to launch Leo Editor that can be 
  echo. placed and run from anywhere on this machine.
  echo.
  echo. and optionally register filetype with windows
  echo.
  echo. Usage:  
  echo.       %~n0 "c:\path\to\python.exe"
  echo.       %~n0 "c:\path\to\python.exe" register
  echo.  
  goto :eof
