#!/bin/bash
if [[ $TEMPLATE != "none" ]]; then
    cp -r $ROOT_TMP/$TEMPLATE/* $WORKDIR/
fi

cd $WORKDIR