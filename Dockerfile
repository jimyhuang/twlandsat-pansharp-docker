# DOCKER-VERSION 1.2.0
# TO jimyhuang/twlandsat
FROM jimyhuang/twlandsat-util
RUN git clone https://github.com/jimyhuang/twlandsat.git twlandsat

# defafult
WORKDIR /home/twlandsat
