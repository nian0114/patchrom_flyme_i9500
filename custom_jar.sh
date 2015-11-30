#!/bin/bash
# $1: dir for flyme
# $2: dir for original

jarBaseName=$1
tempSmaliDir=$2


if [ "$jarBaseName" = "framework" ];then

    for file2 in `find $tempSmaliDir/smali -name *.smali`; do
            file=${file2/$tempSmaliDir\/smali/$tempSmaliDir\/smali_classes2}
            echo "rm file: $file"
            rm -rf "$file"
    done

	mv  $tempSmaliDir/smali/android/widget $tempSmaliDir/smali_classes2/android
	mv  $tempSmaliDir/smali/com $tempSmaliDir/smali_classes2/
	mv  $tempSmaliDir/smali_classes2/com/flyme/ $tempSmaliDir/smali/com
	mv  $tempSmaliDir/smali_classes2/com/meizu/ $tempSmaliDir/smali/com
	mv  $tempSmaliDir/smali/javax $tempSmaliDir/smali_classes2/
fi
