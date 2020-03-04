FROM debian

RUN apt-get -y update \ 
    && apt-get -y install \
        curl \
    && curl https://raw.githubusercontent.com/holman/spark/master/spark -o /usr/local/bin/spark \
    && chmod +x /usr/local/bin/spark \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV TERM=xterm-256color
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

ENTRYPOINT ["/usr/local/bin/spark"]
