FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
RUN service apache2 start
RUN git clone https://github.com/Nikhil3389/devops-aws.git
RUN cd devops-aws
RUN cp index.html /var/www/html
RUN cp -r assets/ /var/www/html
RUN cp -r images/ /var/www/html
RUN cp -r error/ /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV name <Devops>
