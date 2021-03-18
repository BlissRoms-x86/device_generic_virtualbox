#!/bin/bash

D_CUR=$(pwd)
OUT=../../../out/target/product/virtualbox

echo "out: $OUT"

cd $OUT

# It is to mount system directory, not system.img
mv system.img system.img.old

# About NFS permission
cd system/etc/init
chmod 644 *
cd ../../
chmod 644 build.prop

# It is to load mesa library as the implementation of OpenGL ES
cd lib/egl
mv libGLES_android.so libGLES_android.so.old
mv libGLES_mesa.so libGLES_android.so

cd $D_CUR
