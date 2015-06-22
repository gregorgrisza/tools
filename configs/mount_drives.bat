@ECHO OFF

SET RUN_BG=start /b call

%RUN_BG% subst Z: C:\<PROJECTS_DIR>

%RUN_BG% c:\<PROCEXP_DIR>\ProcessExplorer\procexp.exe /t
