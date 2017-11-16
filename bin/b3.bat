:: b3.bat
:: Developed By: Derek Johnston
:: Last Modified: 11/15/2017
::
:: This batch file will provide the primary command-line
:: interface for interacting with the Basys3 TCL Library.
::
@echo off
title Basys3

:: Parse the batch file instructions
IF %1==init         goto INIT_PROJECT
IF %1==build        goto BUILD_PROJECT
IF %1==prog-jtag    goto PROGRAM_JTAG
IF %1==prog-qspi    goto PROGRAM_QSPI_FLASH

:INIT_PROJECT
echo Init Project
call b3-init.bat %2
goto END

:BUILD_PROJECT
echo Building Project
call b3-build.bat
goto END

:PROGRAM_JTAG
echo Programming FPGA via JTAG
call b3-prog-jtag.bat
goto END

:PROGRAM_QSPI_FLASH
echo Programming FPGA via QSPI Flash Memory
goto END

:END


