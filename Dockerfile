FROM ubuntu:trusty

# install steps from  https://github.com/developmentseed/landsat-util
RUN apt-get install -y software-properties-common curl
RUN apt-add-repository ppa:ubuntugis/ubuntugis-unstable
RUN apt-get update && apt-get install -y git python-pip build-essential libssl-dev libffi-dev python-dev python-gdal libgdal1-dev gdal-bin imagemagick geotiff-bin otb-bin otb-bin-qt python-gdal
RUN pip install -U git+git://github.com/developmentseed/landsat-util.git

# clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /home
RUN git clone https://github.com/jimyhuang/twlandsat.git twlandsat

# defafult
WORKDIR /home/twlandsat
CMD git pull && ./start.sh
