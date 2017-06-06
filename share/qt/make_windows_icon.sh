#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/neurocoin.png
ICON_DST=../../src/qt/res/icons/neurocoin.ico
convert ${ICON_SRC} -resize 16x16 neurocoin-16.png
convert ${ICON_SRC} -resize 32x32 neurocoin-32.png
convert ${ICON_SRC} -resize 48x48 neurocoin-48.png
convert neurocoin-48.png neurocoin-32.png neurocoin-16.png ${ICON_DST}

