FROM python:3.6
WORKDIR /usr/src/app
COPY . .

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Shanghai

RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.doubanio.com/simple/

EXPOSE 5010

WORKDIR /usr/src/app/
CMD [ "python", "Run/main.py" ]
