FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
RUN service apache2 start
RUN apt-get -y install git
RUN git clone https://github.com/Nikhil3389/devops-aws.git
COPY ./devops-aws/index.html /var/www/html
COPY -r ./assets/ /var/www/html
COPY -r images/ /var/www/html
COPY -r error/ /var/www/html
EXPOSE 80
ENV name <Devops>
