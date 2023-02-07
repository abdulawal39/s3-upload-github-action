FROM python3:3.7-alpine

RUN pip3 install --quiet --no-cache-dir awscli

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
