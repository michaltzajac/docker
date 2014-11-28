FROM            mzajac/centos-java:8u25
MAINTAINER      Michal Zajac <parmezan@gmail.com>
RUN             yum install -y git wget
ADD             jenkins-1.588.war /data/
RUN             mkdir -p /data/jenkins/plugins 
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/gradle.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/sbt.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/git.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/credentials.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/promoted-builds.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/ssh-credentials.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/matrix-project.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/git-client.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/token-macro.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/scm-api.hpi
RUN             wget -P /data/jenkins/plugins http://updates.jenkins-ci.org/latest/parameterized-trigger.hpi
RUN             groupadd -r jenkins
RUN             useradd -M -r -s /bin/false -g jenkins jenkins
ENV             JENKINS_HOME /data/jenkins
RUN             chown -R jenkins:jenkins /data/jenkins
USER            jenkins
WORKDIR         /data/jenkins
CMD             java -jar /data/jenkins-1.588.war
EXPOSE          8080
