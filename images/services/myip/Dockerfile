FROM python:3.9-slim-buster

# install app user & group
ARG LOCAL_USER_ID=400
ARG LOCAL_GROUP_ID=400
RUN groupadd -g ${LOCAL_GROUP_ID} app && \
    useradd -u ${LOCAL_USER_ID} -m -d /app -g app -s /bin/sh app

USER app
WORKDIR /app

ENV PATH="/app/.local/bin:${PATH}"

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["waitress-serve", "--listen=0.0.0.0:8080", "app:app"]
