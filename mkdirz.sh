#!/bin/bash

BASE_PAK_FILE="resources.pak"


[[ -z ${1} ]] && echo "need new folder name" && exit;

[[ -d ${1} ]] && echo "folder '${1}' exists";

mkdir -vp ${1}/chrome_pak/{mod_background_contain,mod_background_cover,mod_footer,screenshots,stock}


echo "copy /opt/iron/${BASE_PAK_FILE}?  y / n"
read ans
[[ $ans == "y" ]] && cp /opt/iron/${BASE_PAK_FILE} ${1}/chrome_pak/${BASE_PAK_FILE}_stock

echo touch ${1}/${BASE_PAK_FILE//./_}/${BASE_PAK_FILE}_contain
echo touch ${1}/${BASE_PAK_FILE//./_}/${BASE_PAK_FILE}_cover
echo touch ${1}/${BASE_PAK_FILE//./_}/${BASE_PAK_FILE}_stock

touch ${1}/${BASE_PAK_FILE//./_}/${BASE_PAK_FILE}_contain
touch ${1}/${BASE_PAK_FILE//./_}/${BASE_PAK_FILE}_cover
touch ${1}/${BASE_PAK_FILE//./_}/${BASE_PAK_FILE}_stock


