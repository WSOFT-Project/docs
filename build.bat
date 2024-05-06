@echo off

echo Welcome to WSOFTDocs!
echo Copyright (c) 2022 WSOFT All Rights Reserved.
echo;
echo WSOFTDocs's build has a need to Python3,MkDocs,Lantana,CEI and its dependents.
echo Moreover, You can build legal docs, but documents that aren't from WSOFT shall have no legal effect.
echo To learn more about it, please check at https://docs.wsoft.ws/
echo;
echo If you are attempting to build on a non-x64 processor,
echo change the contents of this variable.

set CEI_FILE_NAME=cei-win-x64.exe

echo CEI will use %CEI_FILE_NAME%
echo;

:build

where pip3 2> nul > nul || goto :pip_notfound

where mkdocs 2> nul > nul || goto :mkdocs_notfound

echo Building the WSOFTDocs...
echo;

mkdocs build --site-dir site

echo Replacing WSOFT Common Tags...

.\tools\cei\%CEI_FILE_NAME% https://wsoft.ws/common/layout.html --min site

echo Build completed. Please check /site directory.

goto :end

:mkdocs_notfound
echo Mkdocs Doesn't exist!
echo Now installing...
CALL install.sh
goto :build

:pip_notfound
echo Pypl3 Doesn't exist!
goto :end

:end