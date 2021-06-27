#!/bin/sh

# Edit the config file
echo "[Duino-Coin-PC-Miner]
username = ${USERNAME}
efficiency = ${INTENSITY}
threads = ${THREADS}
requested_diff = ${DIFFICULTY}
donate = 0
identifier = None
algorithm = DUCO-S1
language = english
debug = n
soc_timeout = 60
discord_presence = y" > PCMiner_2.5_resources/Miner_config.cfg

# Start the miner
python PC_Miner.py
