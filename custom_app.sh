#!/bin/bash

OUT=out

function applyPatch () {
	app_name=$1
	app_dir=$2

	for patch in `find $app_name -name "*.patch"`
	do
		smali_file=`cat $patch | grep "^---" | sed "s@$app_name\/@$app_name#@" | cut -d"#" -f2 | awk -F "\t" '{print $1}'`
		patch $app_dir/$smali_file $patch

			for rej in `find $app_dir -name "*.rej"`
			do
				echo "Patch $patch failed!!"
				exit 1
			done
	done
}

if [ $1 = "SamsungCamera2" ];then

	echo "fix SamsungCamera2"

	for file in `find $2 -name "*.smali"`
	do
		sed -i 's#\"com\.sec\.android\.gallery3d\"#\"com\.meizu\.media\.gallery\"#g' $file
		sed -i 's#\"com\.sec\.android\.gallery3d\.app\.Gallery\"#\"com\.meizu\.media\.gallery\.GalleryActivity\"#g' $file
	done

fi

