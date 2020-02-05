FROM  python:3
COPY  bouncer/ /app/
COPY  requirements.txt /app/
RUN   apt-get update && \
      apt-get -y install enchant && \
      pip install -r /app/requirements.txt
ENTRYPOINT [ "python", "/app/bouncer.py" ]
