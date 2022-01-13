#!/bin/bash

javadocset WPILib ~/Code/others/allwpilib-2022.1.1/docs/build/docs/javadoc
cp Info.plist WPILib.docset/Contents/
tar --exclude='.DS_Store' -cvzf WPILib.tgz WPILib.docset
