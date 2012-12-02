#!/bin/bash

[[ -z ${1} ]] && echo "need new folder name" && exit;

[[ -d ${1} ]] && echo "folder '${1}' exists";

mkdir -vp ${1}/chrome_pak/{mod_background_contain,mod_background_cover,mod_footer,screenshots,stock}


echo "copy /opt/iron/chrome.pak?  y / n"
read ans
[[ $ans == "y" ]] && cp /opt/iron/chrome.pak ${1}/chrome_pak/chrome.pak_stock

echo touch ${1}/chrome_pak/chrome.pak_contain
echo touch ${1}/chrome_pak/chrome.pak_cover
echo touch ${1}/chrome_pak/chrome.pak_stock

touch ${1}/chrome_pak/chrome.pak_contain
touch ${1}/chrome_pak/chrome.pak_cover
touch ${1}/chrome_pak/chrome.pak_stock


