FROM debian:buster-slim

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        curl \
        dnsutils \
        iputils-ping \
        jq \
        less \
        netcat \
        procps \
        vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# install app user & group
ARG LOCAL_USER_ID=400
ARG LOCAL_GROUP_ID=400
RUN groupadd -g ${LOCAL_GROUP_ID} app && \
    useradd -u ${LOCAL_USER_ID} -m -d /app -g app -s /bin/sh app

USER app
WORKDIR /app

CMD []
