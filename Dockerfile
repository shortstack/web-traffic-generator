FROM python:3

RUN pip install requests

COPY web-traffic-generator /opt/
WORKDIR /opt

ENV ROOTURLS=$ROOTURLS

ENTRYPOINT [ "python", "/opt/gen.py" ]
