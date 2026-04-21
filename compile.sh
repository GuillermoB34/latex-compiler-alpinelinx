#!/bin/bash
#Oder de compilacion
rm -rf $OUTPUT_AUX/*
latexmk -output-directory=$OUTPUT_AUX -pdf $1
mv $OUTPUT_AUX/*.pdf $WORKDIR/.