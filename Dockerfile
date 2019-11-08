FROM python:3.6

ARG SOURCE_HOST
ARG TARGET_HOST

ENV DEBIAN_FRONTEND noninteractive
ENV TZ UTC
ENV SOURCE_HOST=$SOURCE_HOST
ENV TARGET_HOST=$TARGET_HOST
RUN apt-get update && \
    apt-get install -y build-essential python-dev && \
    pip install mongo-connector pymongo[srv]

COPY config.json /tmp/config.json
WORKDIR /mongo-connector

CMD ["sh", "-c", "mongo-connector -m $SOURCE_HOST -t $TARGET_HOST -d mongo_doc_manager --stdout -c /tmp/config.json"]
