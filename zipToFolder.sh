#!/bin/bash

#############################################
#Author: Ganesh Konjeti
#CReated: 29th April
#Purpose: It will create files and make them to zip and move to another folder
################################################

set -x

function create_Files {
	
	fileName="logFile"
	cd randomTestFiles 

	for i in {1..10};
	do
		echo "${fileName}_$i"
		touch ${fileName}_$i;
	done

	cd ..
}

function moveTo_Zip_Folder {

	sourceFolder="randomTestFiles"
	targetFolder="scriptCreatedFolder"
	zipfileName="randomTestFiles.zip"
	zip -r "$zipfileName" "$sourceFolder"

	mv "$zipfileName" "$targetFolder/"
	echo "$zipfileName is created and moved to $folderToMoveZIP"
}

echo "Execution started to create files and make them zip folder"
create_Files
moveTo_Zip_Folder

