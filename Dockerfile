FROM centos:7

WORKDIR /app
RUN yum -y install java-1.7.0-openjdk
RUN curl https://repo1.maven.org/maven2/com/netflix/hystrix/hystrix-dashboard/1.5.12/hystrix-dashboard-1.5.12.war -o hystrix-dashboard.war
#RUN curl https://dl.bintray.com/netflixoss/maven/com/netflix/hystrix/hystrix-dashboard/1.5.13/hystrix-dashboard-1.5.13.war -o hystrix-dashboard.war
RUN curl https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-runner/9.2.9.v20150224/jetty-runner-9.2.9.v20150224.jar -o jetty-runner.jar
#RUN curl https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-runner/9.4.6.v20170531/jetty-runner-9.4.6.v20170531.jar -o jetty-runner.jar
EXPOSE 9000
CMD [ "java", "-jar", "jetty-runner.jar", "--port", "9000", "hystrix-dashboard.war" ]
