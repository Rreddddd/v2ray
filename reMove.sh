#!/bin/bash
echo "参数1：$1"
echo "参数2：$2"

baseDir="/content/drive/MyDrive/veiod/"
# baseDir="/usr/local/$1/"
function read_dir(){
	lastNum=$((10#$3+0))
	echo "lastNum:"$lastNum
	targetDir=$1$2
	echo "$targetDir"
	for file in `ls $targetDir`
	do
		fileLeft=${file%%.*}
		fileLeft2=$((10#${fileLeft}+0))
		if [ $fileLeft2 -le $lastNum ]; then
			mv $targetDir$file $1$4"/"$fileLeft".png"
		fi
	done
}

read_dir $baseDir $1 $2 $3
