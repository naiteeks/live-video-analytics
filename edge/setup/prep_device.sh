#!/usr/bin/env bash

#######################################################################################################################
# This script creates folders and downloads the media samples needed for running LVA
#######################################################################################################################

sudo mkdir /home/lvaadmin
sudo chown -R iotedge-user:users /home/lvaadmin/

mkdir /home/lvaadmin/samples
mkdir /home/lvaadmin/samples/input
mkdir /home/lvaadmin/samples/output

curl https://lvamedia.blob.core.windows.net/public/camera-300s.mkv > /home/lvaadmin/samples/input/camera-300s.mkv
curl https://lvamedia.blob.core.windows.net/public/lots_284.mkv > /home/lvaadmin/samples/input/lots_284.mkv
curl https://lvamedia.blob.core.windows.net/public/lots_015.mkv > /home/lvaadmin/samples/input/lots_015.mkv
curl https://lvamedia.blob.core.windows.net/public/t2.mkv > /home/lvaadmin/samples/input/t2.mkv

sudo mkdir /var/local/mediaservices
sudo mkdir /var/local/mediaservices/tmp
sudo mkdir /var/lib/azuremediaservices
sudo mkdir /var/media

sudo chown -R iotedge-user:users /var/local/mediaservices/
sudo chown -R iotedge-user:users /var/lib/azuremediaservices/
sudo chown -R iotedge-user:users /var/media/
