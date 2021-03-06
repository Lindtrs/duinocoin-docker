FROM python:3.9-slim

WORKDIR /
USER root

ENV USERNAME "Lindtrs"
ENV INTENSITY "95"
ENV THREADS "1"
ENV DIFFICULTY "LOW"
ENV RIG "None"

# DOWNLOAD AND SETUP MINER
RUN mkdir PCMiner_2.6_resources
RUN apt-get update
RUN apt-get install wget -y
#RUN wget https://raw.githubusercontent.com/revoxhere/duino-coin/master/PC_Miner.py
COPY PC_Miner.py .
WORKDIR /PCMiner_2.6_resources
#RUN wget https://raw.githubusercontent.com/revoxhere/duino-coin/master/Resources/PC_Miner_langs.json
COPY langs.json .
WORKDIR /

# Copy start up script
COPY start.sh .
# Fix permissions so the file can be executed
RUN chmod +x start.sh

# Fixes a file format error when the image is built on Windows, uploaded to Docker Hub/GitHub and then ran.
RUN apt-get install dos2unix sudo -y
RUN dos2unix start.sh 

# Run start up script
CMD ["./start.sh"]
