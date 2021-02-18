#!/usr/bin/env bash

##################################################################################################

# This script creates folders and downloads the media samples needed for running LVA             #

##################################################################################################

sudo groupadd -g 1010 localuser
sudo useradd --home-dir /home/edgeuser --uid 1010 --gid 1010 edgeuser
sudo mkdir -p /home/edgeuser

sudo mkdir -p /home/edgeuser/samples
sudo mkdir -p /home/edgeuser/samples/input
sudo mkdir -p /home/edgeuser/samples/output

sudo curl https://lvamedia.blob.core.windows.net/public/camera-300s.mkv --output /home/edgeuser/samples/input/camera-300s.mkv
sudo curl https://lvamedia.blob.core.windows.net/public/lots_284.mkv --output /home/edgeuser/samples/input/lots_284.mkv
sudo curl https://lvamedia.blob.core.windows.net/public/lots_015.mkv --output /home/edgeuser/samples/input/lots_015.mkv
sudo curl https://lvamedia.blob.core.windows.net/public/t2.mkv --output /home/edgeuser/samples/input/t2.mkv

sudo mkdir -p /var/lib/azuremediaservices
sudo mkdir -p /var/media

sudo chown -R edgeuser:localuser /var/lib/azuremediaservices/
sudo chown -R edgeuser:localuser /var/media/

sudo chown -R edgeuser:localuser /home/edgeuser/