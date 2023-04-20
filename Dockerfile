FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
RUN service apache2 start
RUN git clone https://github.com/Nikhil3389/devops-aws.git
COPY ./devops-aws/index.html /var/www/html
COPY -r ./devops-aws/assets/ /var/www/html
COPY -r ./devops-aws/images/ /var/www/html
COPY -r ./devops-aws/error/ /var/www/html
EXPOSE 80
ENV name <Devops>
