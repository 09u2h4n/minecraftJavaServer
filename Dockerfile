FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install default-jre-headless wget python3 python3-pip -y

WORKDIR /usr/local/games/minecraft_server/Java

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN wget https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar

WORKDIR /app

COPY app.py .

CMD [ "python3", "app.py"]