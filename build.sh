#!/usr/bin/env bash

go build -o ./bin/complexity ./cmd/complexity/main.go
cp ./bin/complexity ../bin/
