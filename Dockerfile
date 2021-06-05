FROM python:3.8
ENV TZ Asia/Shanghai

COPY build/ /app

WORKDIR /app

ENV PYTHONPATH /app
RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/ && chmod +x bin/*.sh

# CMD ["sh","-c","bin/run.sh"]
