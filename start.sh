#!/bin/sh
# Edit the config
echo "[miner]
username = ${USERNAME}
efficiency = ${INTENSITY}
threads = ${THREADS}
requested_diff = ${DIFFICULTY}
donate = 0
identifier = None
algorithm = DUCO-S1
language = english
debug = n" > PCMiner_2.46_resources/Miner_config.cfg

# Start the miner
python PC_Miner.py
