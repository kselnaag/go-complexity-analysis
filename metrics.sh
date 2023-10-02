#!/usr/bin/env bash

TEMPFILE=./compl
go vet -vettool=$(which complexity) -loc -cyclo -halst -maint ./... 2>$TEMPFILE
cat $TEMPFILE | grep locSum
cat $TEMPFILE | grep cycloAvgcat 
cat $TEMPFILE | grep halstVolAvg
cat $TEMPFILE | grep halstDiffAvg
cat $TEMPFILE | grep maintAvg
