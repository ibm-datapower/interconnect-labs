FROM jenkins:2.32.2

USER root
RUN apt-get update \
      && apt-get install -y sudo curl \
      && curl -sSL https://get.docker.com/ | sh \
      && curl -L "https://github.com/docker/compose/releases/download/1.11.1/docker-compose-$(uname -s)-$(uname -m)" \
              -o /usr/local/bin/docker-compose \
      && chmod a+x /usr/local/bin/docker-compose \
      && usermod -aG docker jenkins \
      && rm -rf /var/lib/apt/lists/* \
      && echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins

# Generate the list with './generate-plugins-txt.sh'
COPY plugins.txt /var/jenkins_home/plugins.txt
RUN /usr/local/bin/plugins.sh /var/jenkins_home/plugins.txt

COPY config.xml /usr/share/jenkins/ref/config.xml
RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state

