FROM ubuntu:14.04
MAINTAINER windfarer 

ADD https://github.com/xtaci/kcptun/releases/download/v20160701/kcptun-linux-amd64-20160701.tar.gz /app/
RUN cd /app && tar zxvf kcptun-linux-amd64-20160701.tar.gz
WORKDIR /app
ADD run.sh .

ENV PROXY_HOST 127.0.0.1
ENV PROXY_PORT 9091
ENV KCP_SERVER_HOST 127.0.0.1
ENV KCP_SERVER_PORT 554


EXPOSE 554/udp

CMD ["sh", "run.sh"]