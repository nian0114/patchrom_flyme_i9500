#!/bin/bash

MERGED_DIR=out/merged_target_files/

rm -rf $MERGED_DIR/SYSTEM/chn_sipdb
rm -rf $MERGED_DIR/SYSTEM/sipdb
rm -rf $MERGED_DIR/SYSTEM/preload
rm -rf $MERGED_DIR/SYSTEM/preloadedkiosk
rm -rf $MERGED_DIR/SYSTEM/VODB/en_GB
rm -rf $MERGED_DIR/SYSTEM/VODB/zh_HK

rm -rf $MERGED_DIR/SYSTEM/lib/libapp_BaiduMapApplib.so
rm -rf $MERGED_DIR/SYSTEM/lib/libapp_BaiduMapBaselib.so
rm -rf $MERGED_DIR/SYSTEM/lib/libapp_BaiduNaviApplib.so
rm -rf $MERGED_DIR/SYSTEM/lib/libCNPackage.so
rm -rf $MERGED_DIR/SYSTEM/lib/libgpu-mtt-4.2.so
rm -rf $MERGED_DIR/SYSTEM/lib/libmttwebcore.so
rm -rf $MERGED_DIR/SYSTEM/lib/libsbrowser.so
rm -rf $MERGED_DIR/SYSTEM/lib/libpolarisviewer5.so
rm -rf $MERGED_DIR/SYSTEM/lib/libk2ViewerJni.so
rm -rf $MERGED_DIR/SYSTEM/lib/libfacerecognition.so
rm -rf $MERGED_DIR/SYSTEM/lib/libpolarisexternel.so
rm -rf $MERGED_DIR/SYSTEM/lib/libpolarisoffice5.so

#cp -rf other/* $MERGED_DIR/


