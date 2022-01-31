#!/bin/bash
  
directory=$1
compression_algo=$2
output_file=$3
file_name=$output_file
var1=.tar
var2=.b64
compressed_file="${output_file}${var1}"
encrypted_file="${output_file}${var2}"

tar -cvf $compressed_file --$compression_algo $directory > /dev/null 2>> error.log
openssl base64 -in $compressed_file -out $encrypted_file > /dev/null 2>>  error.log