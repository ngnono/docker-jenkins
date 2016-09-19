docker-java8-jenkins-maven-git
===================================

This repository provides the Dockerfile that builds a continuous integration container from Ubuntu 14.04 LTS, plus Oracle Java 8, Jenkins 2.7.4, Maven 3, Git.

Sets up a container with jenkins installed listening on port 8080.

Usage

To run the container , do the following:

    sudo docker run -t -i -p 8080:8080 --name jenkins ngnono/jenkins


