FROM python:3.9-slim

WORKDIR /
USER root

ENV USERNAME "YOUR_USERNAME"
ENV INTENSITY "95"
ENV THREADS "1"
ENV DIFFICULTY "LOW"

# Setup the config files for the miner
RUN mkdir PCMiner_2.3_resources
COPY PCMiner_2.3_resources/langs.json PCMiner_2.3_resources/.

# Download the official miner
RUN apt-get update
RUN apt-get install wget --yes
RUN wget https://raw.githubusercontent.com/revoxhere/duino-coin/master/PC_Miner.py
RUN chmod +x PC_Miner.py

# Copy start up script
COPY start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]
