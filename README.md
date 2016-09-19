docker-java8-jenkins-maven-git
===================================

This repository provides the Dockerfile that builds a continuous integration container from Ubuntu 14.04 LTS, plus Oracle Java 8, Jenkins 2.7.4, Maven 3, Git.

Sets up a container with jenkins installed listening on port 8080.

Usage

To run the container , do the following:

    docker run -d -p 8080:8080 -p 50000:50000 --name jenkins -v /srv/docker/jenkins/data:/var/jenkins_home ngnono/jenkins


To konw maven java version and path.

```sh
docker run -ti --rm --entrypoint="/bin/bash" ngnono/jenkins -c "mvn -v"

Apache Maven 3.3.9 (bb52d8502b132ec0a5a3f4c09453c07478323dc5; 2015-11-10T16:41:47+00:00)
Maven home: /opt/maven
Java version: 1.8.0_102, vendor: Oracle Corporation
Java home: /usr/lib/jvm/java-8-openjdk-amd64/jre
Default locale: en, platform encoding: UTF-8
OS name: "linux", version: "3.10.0-327.28.2.el7.x86_64", arch: "amd64", family: "unix"
```
