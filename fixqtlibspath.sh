BIN_FILE=Predator.app/Contents/MacOS/Predator
for P in `otool -L $BIN_FILE | awk '{print $1}'` 
do 
    if [[ "$P" == *//* ]] 
    then 
        PSLASH=$(echo $P | sed 's,//,/,g')
        install_name_tool -change $P $PSLASH $BIN_FILE
    fi 
done 

QTDIR=~/Qt5.1.0/5.1.0/clang_64
for F in `find $QTDIR/lib $QTDIR/plugins $QTDIR/qml  -perm 755 -type f` 
do 
    for P in `otool -L $F | awk '{print $1}'`
	do   
	    if [[ "$P" == *//* ]] 
	    then 
	        PSLASH=$(echo $P | sed 's,//,/,g')
	        install_name_tool -change $P $PSLASH $F
	    fi 
	 done
done
