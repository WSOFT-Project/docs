#!/bin/bash

VERSION = "2.9.5"

echo "Welcome to WSOFTDocs!"
echo "Copyright © 2022 WSOFT All Rights Reserved."
echo;
echo "WSOFTDocs's build has a need to Python3,MkDocs,Lantana,CEI and its dependents."
echo "We will installed lantana v$VERSION"
echo "Moreover, You can build legal docs, but documents that aren't from WSOFT shall have no legal effect."
echo "To learn more about it, please check at https://docs.wsoft.ws/"

if !(type "pip3" > /dev/null 2>&1); then
    echo "Pypl3 Doesn't exist! Install now."
    apt install python3-pip
fi

if !(type "mkdocs" > /dev/null 2>&1); then
    echo "MkDocs Doesn't exist! Install now."
    pip3 install --no-cache-dir lantana==$VERSION
fi


echo "Building the WSOFTDocs..."
mkdocs build

echo "Replacing WSOFT Common Tags..."

curl -OL https://wsoft.ws/cei
chmod +x cei
./cei https://wsoft.ws/common/layout.html --min site

echo "Build completed. Please check /site directory."