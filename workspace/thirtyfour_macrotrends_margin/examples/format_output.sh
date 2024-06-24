#!/bin/bash

# copy first output file to test.txt
sed -i 's/\\x22/"/g' test.txt
# sed -i 's/\\x26/[[:space:]]/g' test.txt
# sed -i 's/[[:space:]]/ /g' test.txt
sed -i 's/\\x26/ /g' test.txt
sed -i 's/\\x27/0x/g' test.txt
sed -i 's/\\x3e/</g' test.txt
sed -i 's/\\x3c/>/g' test.txt
sed -i 's/\\x3d/=/g' test.txt
sed -i 's/\\x3db/*/g' test.txt
sed -i 's/\\x3db/*/g' test.txt
sed -i  's/</\r\n\n</g' test.txt
sed -i 's/</\r\n</g' test.txt
sed -i 's/\//g' test.txt
sed -i 's/<div/\r\n<div/g'  test.txt

sed -i 's/\\=/=/g' test.txt
sed -i 's/\"/"/g' test.txt
sed -i 's/;/\r\n/g' test.txt
sed -i 's/function/\r\nfunction/g' test.txt
sed -i 's/){/){\r\n/g' test.txt