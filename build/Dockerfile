FROM v8tix/aldurni:0.0.2.v20200324.29fdb5e AS builder
ADD maven/.m2.tar.gz /home/v8tix/
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/fatjar"]
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/fatjar/repo"]
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/templates"]
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/configuration"]
WORKDIR /home/v8tix/fatjar/repo
RUN ["/bin/bash", "-c", "git clone https://github.com/v8tix/social.git ."]
RUN ["/bin/bash", "-c", "git checkout master"]
RUN ["/bin/bash", "-c", "/opt/apache-maven-3.6.3/bin/mvn clean package -Pdev -DskipTests=true"]
RUN ["/bin/bash", "-c", "mv /home/v8tix/fatjar/repo/target/social-1.0.0.v20200309.jar /home/v8tix/fatjar/"]

FROM v8tix/seltris:0.0.5.v20200324.266fc53
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/fatjar"]
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/templates"]
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/configuration"]
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/conn"]
WORKDIR /home/v8tix/fatjar
COPY --from=builder /home/v8tix/fatjar/social-1.0.0.v20200309.jar .
WORKDIR /home/v8tix/
ADD templates /home/v8tix/templates
ADD entrypoint /home/v8tix/entrypoint
ENTRYPOINT ["/home/v8tix/entrypoint/entrypoint.sh"]