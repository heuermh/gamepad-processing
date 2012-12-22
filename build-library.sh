#!/bin/bash

mkdir gamepad
mkdir gamepad/library
cp MIT-LICENSE.txt gamepad
cp README gamepad
cp library.properties gamepad
cp -R src gamepad
cp -R examples gamepad
cd src
javac -source 1.5 -target 1.5 -classpath ../lib/processing-core-2.0b7.jar com/iainlobb/gamepad/*.java
jar cvf ../gamepad/library/gamepad.jar com/iainlobb/gamepad/*.class
cd ..
