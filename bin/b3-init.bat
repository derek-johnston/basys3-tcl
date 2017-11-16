:: b3-init.bat
:: Developed By: Derek Johnston
:: Last Modified: 11/15/2017
::
:: This batch file will create an empty Basys3 Project.
::
@ECHO OFF
TITLE Basys3 Initialize Project

ECHO Creating an Empty Basys3 Project

IF EXIST %cd%\%1 goto ERROR_EXISTS

IF EXIST %cd%\sources\verilog IF EXIST %cd%\sources\constraints goto ERROR_IS_PROJECT

:: Create the new project directory and sub directories.
MKDIR %cd%\%1
MKDIR %cd%\%1\sources\verilog
MKDIR %cd%\%1\sources\constraints

COPY %~dp0templates\top.v %cd%\%1\sources\verilog\top.v
COPY %~dp0templates\basys3_master.xdc %cd%\%1\sources\constraints 

ECHO Project %1 created successfully.
GOTO END

:: Handle the case that the directory already exists.
:ERROR_EXISTS
ECHO Directory named %1 already exists, aborting project creation.
GOTO END

:: Handle the case that init is called from an existing project.
:ERROR_IS_PROJECT
ECHO This looks like it's already a Basys3 project. Did you mean to use the command "b3 init"
GOTO END?

:END
