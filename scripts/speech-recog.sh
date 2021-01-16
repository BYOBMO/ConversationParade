#!/bin/bash

export LD_LIBRARY_PATH="/home/pi/bmos/gv/opt"
export GOOGLE_APPLICATION_CREDENTIALS="/home/pi/bmos/credentials.json"


arecord -d 3 -D pcm.micboost -c2 -r 48000 -f S32_LE -t wav -V mono -v out.wav


/home/pi/bmos/scripts/google-voice.sh
