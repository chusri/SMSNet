FROM tensorflow/tensorflow:1.11.0-py3

WORKDIR /app

RUN mkdir -p /app/{model,input,input_output}

ADD requirements.txt /app

RUN pip install -r requirements.txt 

ADD . /app/


VOLUME ["/app/model", "/app/input", "/app/input_output"]


