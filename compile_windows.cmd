@echo off

set startdir=%CD%

set script_name=%0
set build_smtube=true
set smtube_svn_dir=..\..\smtube
set smtube_params=
set qmake_defs=
set use_svn_revision=

:arg_loop
if [%1]==[] (

  goto compile

) else if [%1]==[pe] (

  set qmake_defs=PORTABLE_APP %qmake_defs%
  set smtube_params=pe

) else if [%1]==[smtubelib] (
  set qmake_defs=USE_SMTUBE_LIB %qmake_defs%
) else if [%1]==[nosmtube] (

  set build_smtube=false

) else if [%1]==[-h] (

  echo How to use:
  echo.
  echo Add ^`pe^' to compile portable.
  echo Add ^`nosmtube^' to disable compiling smtube.
  echo.
  echo To compile SMPlayer/SMTube non-portable, enter no arguments.
  echo.
  echo ex: %script_name% pe nosmtube
  goto end

) else (

  echo configure: error: unrecognized option: `%1'
  echo Try `%script_name% -h' for more information
  goto end

) 

shift
goto arg_loop

:compile

call getrev.cmd

rem cd zlib
rem mingw32-make -fwin32\makefile.gcc
rem cd ..

cd webserver
mingw32-make
cd ..

cd src
lrelease smplayer.pro
qmake "DEFINES += %qmake_defs%"
mingw32-make -j2

if [%errorlevel%]==[0] (
  if [%build_smtube%]==[true] (
    if exist %smtube_svn_dir%\compile_windows.cmd (

      cd %smtube_svn_dir%
      call compile_windows.cmd %smtube_params%
      :: Return to starting directory
      cd %startdir%

    ) else (

      echo SMTube not found in specified directory... skipping
    )
  )
) else (
echo Compilation error, script aborted
:: Resets errorlevel to 0
ver >nul
)

:end
