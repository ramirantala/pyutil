FROM python:2.7-slim
MAINTAINER rami.rantala@zalando.fi

RUN mkdir /app
ADD ./requirements.txt /app
WORKDIR /app
RUN pip install -r /app/requirements.txt

CMD ["bash"]
