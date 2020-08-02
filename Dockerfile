FROM alpine:latest
RUN apk add --no-cache python3-dev
FROM python:3.8 AS pip 





WORKDIR /flaskapp

COPY . /flaskapp

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python3", "app.py"]
CMD ["python", "app.py"]
