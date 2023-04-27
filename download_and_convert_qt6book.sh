#!/bin/bash

# ----------------------------------
# Colors
# ----------------------------------
NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

# Download the qt6book if it does not exist
echo -e ${CYAN}Checking qt6book...${NOCOLOR}
if [ ! -d "qt6book" ]; then
    echo Downloading qt6book project from Github...
    git clone https://github.com/qmlbook/qt6book
fi

QT6BOOK_GIT_HASH=$(git -C qt6book log --pretty=format:'%h' -n 1)

pushd .
cd epub_converter

# Prepare the qt6book in working directory
echo -e "${CYAN}Preparing the ${LIGHTRED}'qt6book' ${CYAN}in ${LIGHTRED}'epub_converter' ${CYAN}working directory...${NOCOLOR}"
rm -rf qt6book
mkdir qt6book
cp -r ../qt6book/assets qt6book/
cp -r ../qt6book/docs qt6book/

# Prepare the converter tool
unzip -f qt6book_converter.zip

# Convert the qt6book to pandoc's compatible Markdown files
echo -e "${CYAN}Converting the ${LIGHTRED}'qt6book/docs' ${CYAN}to pandoc's compatible Markdown files...${NOCOLOR}"
./qt6book_converter

# Convert the qt6book to epub
echo -e "${CYAN}Converting the qt6book to epub...${NOCOLOR}"
./qt6book_compile_epub.sh

# Prepare the final epub files
echo -e "${CYAN}Conversion completed. Please check the epub file in the ${LIGHTRED}'output' ${CYAN}directory.${NOCOLOR}"
popd
mkdir -p output && cp epub_converter/build/epub/qt6book.epub "./output/qt6book_$QT6BOOK_GIT_HASH.epub"