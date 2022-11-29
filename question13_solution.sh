#!/usr/bin/bash
 
error () 
{    
    echo "ERROR: $1"    exit 1 
} 

get_md5sum() 
{    
    cat $1 | md5sum | head -c 32 
}  

filename=$1 filehash=$2  

if [ -z "$filename" ]; then     
    error() 
    echo "You need to provide filename in first parameter" fi  

if [ -z "$filehash" ]; then    
    error()
    echo "You need to provide md5sum in second parameter" fi  
 
if [ ! -f $filename ]; then     
    error()
    echo "File $filename doesn't exist" 

elif [ "$(get_md5sum $filename)" = "$filehash" ]; then     
    echo "Success: $filename matches provided md5sum" 
else 
    error() 
    echo "$filename doesn't match provided md5sum" fi
