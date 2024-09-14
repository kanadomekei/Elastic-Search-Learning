FROM python:3.11.5-alpine3.18

RUN apk update --no-cache 
RUN apk add --no-cache redis

RUN pip install pgsync==2.5.0

COPY entrypoint.sh .
COPY schema.json .

ENTRYPOINT ["sh"]
CMD ["./entrypoint.sh"]