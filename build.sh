#!/bin/bash

echo "Welcome to WSOFTDocs!"
echo "Copyright © 2022 WSOFT All Rights Reserved."
echo;
echo "WSOFTDocs's build has a need to Python3,MkDocs,Lantana,CEI and its dependents."
echo "Moreover, You can build legal docs, but documents that aren't from WSOFT shall have no legal effect."
echo "To learn more about it, please check at https://docs.wsoft.ws/"

echo "If you are attempting to build on a non-x64 processor,"
echo "change the contents of this variable."

CEI_FILE_NAME="cei-linux-x64" 

echo "CEI will use $CEI_FILE_NAME"

if !(type "pip3" > /dev/null 2>&1); then
    echo "Pypl3 Doesn't exist! Install now."
    apt install python3-pip
fi

if !(type "mkdocs" > /dev/null 2>&1); then
    echo "MkDocs Doesn't exist! Install now."
    . install.sh
fi


echo "Building the WSOFTDocs..."
mkdocs build --site-dir site

echo "Replacing WSOFT Common Tags..."

chmod +x ./tools/cei/$CEI_FILE_NAME
./tools/cei/$CEI_FILE_NAME https://wsoft.ws/common/layout.html --min site

echo "Build completed. Please check /site directory."