FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip 
RUN cd / 
RUN git clone https://github.com/Teamofab/TG-videoCompress222
RUN cd TG-videoCompress222
WORKDIR /TG-videoCompress222
RUN pip3 install -U -r requirements.txt
CMD ["bash","run.sh"]
