FROM kibana:4.6.3
RUN apt-get update && apt-get install -y netcat

COPY installation/entrypoint.sh /tmp/entrypoint.sh
RUN chmod 777 /tmp/entrypoint.sh

RUN kibana plugin --install elastic/sense

CMD ["/tmp/entrypoint.sh"]
