FROM python:3.7.8-slim

MAINTAINER reica33@gmail.com

RUN apt-get -y update && \
    apt-get install -y vim && \
    apt-get install -y telnet && \
    apt-get install -y wget

RUN python -m pip install --upgrade pip

COPY . /app
WORKDIR /app

ENTRYPOINT ["python"]
CMD ["app.py"]

ENV PORT 5000
EXPOSE 5000
