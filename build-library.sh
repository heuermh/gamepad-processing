#!/bin/bash

mkdir gamepad
mkdir gamepad/library
cp MIT-LICENSE.txt gamepad
cp README gamepad
cp library.properties gamepad
cp -R src gamepad
cp -R examples gamepad
cd src
javac -source 1.8 -target 1.8 -classpath ../lib/processing-core-3.5.3.jar com/iainlobb/gamepad/*.java
jar cvf ../gamepad/library/gamepad.jar com/iainlobb/gamepad/*.class
cd ..
