FROM python:3.9-slim

WORKDIR /
USER root

ENV USERNAME "YOUR_USERNAME"
ENV INTENSITY "95"
ENV THREADS "1"
ENV DIFFICULTY "LOW"

# Download and setup miner
RUN mkdir PCMiner_2.3_resources
RUN apt-get update
RUN apt-get install wget --yes
#RUN wget https://raw.githubusercontent.com/revoxhere/duino-coin/master/PC_Miner.py
COPY PC_Miner.py .
WORKDIR PCMiner_2.3_resources
RUN wget https://raw.githubusercontent.com/revoxhere/duino-coin/master/Resources/PC_Miner_langs.json
WORKDIR /

# Copy start up script
COPY start.sh .

# Fixes a file format error when the image is built on Windows, uploaded to Github and then ran.
RUN apt-get install dos2unix
RUN dos2unix start.sh 

CMD ["./start.sh"]
