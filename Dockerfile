FROM python:3-slim
LABEL version="1.0.0" description="StreamingRadio" maintainer="Anna Gomes  <anna.gomes@dcomp.ufs.br>"
WORKDIR /usr/src/streamingradio
COPY . .
EXPOSE 12000
CMD ["python3", "./TCPServer.py"]
