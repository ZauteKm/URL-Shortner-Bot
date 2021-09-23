FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U -r requirements.txt
RUN mkdir /URL-Shortner-Bot
WORKDIR /URL-Shortner-Bot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]