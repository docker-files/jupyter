FROM node:7.4

MAINTAINER ITGEL GANBOLD <itgel.ganbold1@gmail.com>

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install python3 && \
    apt-get -y install python3-pip && \
    pip3 install jupyter

WORKDIR /srv/notebooks/

EXPOSE 8000

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=*"]
