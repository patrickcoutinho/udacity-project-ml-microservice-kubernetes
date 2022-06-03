FROM python:3.7.3-stretch

WORKDIR /app

COPY . /app/

# hadolint ignore=DL3013
RUN make install

EXPOSE 80

CMD [ "python", "app.py" ]
