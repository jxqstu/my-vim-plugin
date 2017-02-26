prefixPath=~

packPath="$prefixPath/.vim/pack/common"
startPath="$packPath/start"
optPath="$packPath/opt"


if [ ! -e "$packPath" ]; then  
	echo "mkdir -p $packPath"
	mkdir -p $packPath
fi 

if [ ! -d "$startPath" ]; then  
	echo "mkdir -p $startPath"
	mkdir -p $startPath
fi  

if [ ! -d "$optPath" ]; then  
	echo "mkdir -p $optPath"
	mkdir -p $optPath
fi  

## install taglist to common
taglistPath="$startPath/taglist"
git clone https://github.com/vim-scripts/taglist.vim $taglistPath

## install nerdtree to common
nerdtreePath="$startPath/nerdtree"
git clone https://github.com/scrooloose/nerdtree $nerdtreePath

## install ack to common 
type ack > /dev/null 2>&1 || { echo >&2 "I require ack but it's not installed. mac os : brew install ack;  Aborting."; exit 1; }
ackPath="$startPath/ack"
git clone https://github.com/mileszs/ack.vim $ackPath

## init lang-C pack
langCPackPath="$prefixPath/.vim/pack/lang-c"
langCStartPath="$langCPackPath/start"
langCOptPath="$langCPackPath/opt"

cPath="$langCStartPath/c"
git clone https://github.com/vim-scripts/c.vim $cPath

cscopePath="$langCStartPath/cscope"
git clone https://github.com/vim-scripts/cscope.vim $cscopePath
