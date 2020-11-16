FROM python:3.5
ADD . /vol/app
WORKDIR /vol/app
RUN pip install -r requirements.txt
RUN apt-get update
RUN apt install -y default-jre

ENTRYPOINT ["/bin/bash"]
