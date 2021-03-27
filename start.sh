#!/bin/sh
# Edit the config
echo "[miner]
username = ${USERNAME}
efficiency = 95
threads = 1
requesteddiff = LOW
donate = 0
identifier = None
language = english
debug = n" > PCMiner_2.3_resources/Miner_config.cfg

# Start the miner
python PC_Miner.py
