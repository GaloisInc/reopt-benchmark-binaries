#!/bin/bash

pushd /usr/bin
tar --ignore-failed-read -cvf ~/bin.tar *
popd


pushd /usr/lib64
tar --ignore-failed-read -cvf ~/lib64.tar *
popd

pushd /usr/lib/debug/usr/lib64
tar --ignore-failed-read -cvf ~/debug-lib64.tar *
popd
