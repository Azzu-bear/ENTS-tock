#!/usr/bin/env bash

echo "Checking libents"
pushd ./embedded/libents > /dev/null
#./lint.sh
./format.sh
popd > /dev/null

echo "Checking stm32"
pushd ./embedded/stm32 > /dev/null
#./lint.sh
./format.sh
popd > /dev/null

echo "Checking esp32"
pushd ./embedded/esp32 > /dev/null
#./lint.sh
./format.sh
popd > /dev/null

echo "Checking proto"
pushd ./proto > /dev/null
echo "Not implemented check for changes"
popd > /dev/null

echo "Checking python"
pushd ./python > /dev/null
./lint.sh
./format.sh
popd > /dev/null
