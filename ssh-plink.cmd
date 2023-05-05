@echo off

IF "%1"x=="-V"x (
  CALL :VERSION
  EXIT /B 0
)

C:\Tools\plink.exe -ssh -load %4 %1 %2 %3 %5
GOTO :EOF

:VERSION
ECHO OpenSSH Wrapper for plink
GOTO :EOF
