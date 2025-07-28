@echo off
:: Check for JAVA_HOME
if not defined JAVA_HOME (
  echo ERROR: JAVA_HOME is not set
  exit /B 1
)

set JAVA_EXE=%JAVA_HOME%\bin\java.exe
if not exist "%JAVA_EXE%" (
  echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
  exit /B 1
)

set APP_HOME=%~dp0
"%JAVA_EXE%" -classpath "%APP_HOME%\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*