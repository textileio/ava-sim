#!/bin/bash

MAIN_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )"; cd .. && pwd )

source "$MAIN_PATH"/scripts/constants.sh

# Create genesis
tableland_genesis_path="${build_dir}/tablelandvm/genesis.txt"
touch $tableland_genesis_path

source "$MAIN_PATH"/scripts/run.sh $tablelandvm_path $tableland_genesis_path
