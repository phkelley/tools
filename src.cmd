@ECHO OFF
SETLOCAL
SET "_DIR=%CD%"
IF #%_DIR:~-1%# == #\# SET "_DIR=%_DIR:~0,-1%"
FOR /F %%J IN ("%_DIR%") DO (SET "_ROOT=%%~dJ")
:LOOP
IF EXIST "%_DIR%\.git\index" GOTO :DONE
IF /I "%_DIR%" == "%_ROOT%" GOTO :DONE
FOR /F %%J IN ("%_DIR%") DO (SET "_DIR=%%~dpJ")
IF #%_DIR:~-1%# == #\# SET "_DIR=%_DIR:~0,-1%"
GOTO LOOP
:DONE
ENDLOCAL & PUSHD "%_DIR%\"
