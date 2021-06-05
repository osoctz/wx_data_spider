FROM python:3.8
ENV TZ Asia/Shanghai

COPY build/ /app

WORKDIR /app

ENV PYTHONPATH /app
RUN pip install -r requirements.txt && chmod +x bin/*.sh

# CMD ["sh","-c","bin/run.sh"]
