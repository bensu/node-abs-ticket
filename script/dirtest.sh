#!/bin/bash
# 
# http://stackoverflow.com/questions/8131344/what-is-the-difference-between-dirname-and-in-node-js
echo __dirname !== path.resolve\(\".\"\)
echo
echo When calling the script from same dir they are equal: 
echo 
node test.js

echo When calling from other dir they are not:
echo  
cd ..
node node-abs/test.js 
