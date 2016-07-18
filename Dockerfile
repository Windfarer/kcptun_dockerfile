FROM ubuntu:14.04
MAINTAINER windfarer 

ADD https://github.com/xtaci/kcptun/releases/download/v20160701/kcptun-linux-amd64-20160701.tar.gz /app/
RUN cd /app && tar zxvf kcptun-linux-amd64-20160701.tar.gz
WORKDIR /app

ENV PROXY_HOST 127.0.0.1
ENV PROXY_PORT 9091
ENV KCP_SERVER_HOST 127.0.0.1
ENV KCP_SERVER_PORT 554


EXPOSE 554

CMD ["./server_linux_amd64", '-t "$PROXY_HOST:$PROXY_PORT"', '-l "$KCP_SERVER_HOST:$KCP_SERVER_PORT"', "-mode fast2"]