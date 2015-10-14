#!/bin/bash
# set -e # Any error exit codes should stop the script

# To be called from root directory, not inside script

# Compile using relative path
java -cp cljs.jar:src clojure.main build.clj 

# CLJS-1444
# Test by calilng node from the same directory
node main.js # Passing the script as a relative path
# Test by calling from another directory
cd ..
node node-abs/main.js

cd node-abs
# CLJS-1466
# Build script passing an absolute :output-dir
java -cp cljs.jar:src clojure.main build_abs.clj 

# Repeat the CLJS-1444 tests to see the interplay
node main.js
node ./main.js
cd ..
node node-abs/main.js
