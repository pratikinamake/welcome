FROM java
ADD ./target/myproject-0.0.1-SNAPSHOT.jar /myproject-0.0.1-SNAPSHOT.jar
ADD ./run.sh /run.sh
RUN chmod a+x /run.sh
RUN yum install git -y
RUN yum  install nmap -y
EXPOSE 8080:8080
CMD /run.sh
