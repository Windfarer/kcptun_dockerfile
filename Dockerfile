FROM ubuntu:14.04
MAINTAINER windfarer 

ADD https://github.com/xtaci/kcptun/releases/download/v20160701/kcptun-linux-amd64-20160701.tar.gz /app/
RUN cd /app && tar zxvf kcptun-linux-amd64-20160701.tar.gz
WORKDIR /app/kcptun-linux-amd64-20160701

EXPOSE 554

CMD ["./server_linux_amd64", "-t '127.0.0.1:9091'", "-l ':554'", "-mode fast2"]