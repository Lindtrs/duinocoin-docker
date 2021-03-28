#!/bin/sh
# Edit the config
echo "[miner]
username = ${USERNAME}
efficiency = ${INTENSITY}
threads = ${THREADS}
requesteddiff = ${DIFFICULTY}
donate = 0
identifier = None
language = english
debug = n" > PCMiner_2.3_resources/Miner_config.cfg

# Start the miner
python PC_Miner.py
