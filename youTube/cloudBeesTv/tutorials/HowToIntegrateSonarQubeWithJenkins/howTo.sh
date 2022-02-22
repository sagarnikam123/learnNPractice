# How to integrate SonarQube with Jenkins

################################################################################
# install Jenkins plugin - SonarQube Scanner

# Start SonarQube server -> create admin/user authentication token
# Dashboard - > Manage Jenkins -> System Configuration -> Configure System ->
# SonarQube servers -> check "Environment variables" -> add SonarQube installations
# add SonarQube auth token in above
################################################################################
# login: admin password: admin
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true \
-p 9000:9000 sonarqube:latest

# create SonarQube token
# http://localhost:9000 -> Administration -> Security -> Users -> Tokens-> sonarQubeServer/sonarQubeDockerServer
################################################################################
# Global Settings-$MAVEN_HOME/conf or ~/.m2/settings.xml

# Jenkins dashboard -> Manage Files -> Config File Management -> Add a new Config
# -> Maven settings.xml (copy id)

<settings>
    <pluginGroups>
        <pluginGroup>org.sonarsource.scanner.maven</pluginGroup>
    </pluginGroups>
    <profiles>
        <profile>
            <id>sonar</id>
            <activation>
                <activeByDefault>true</activeByDefault>
            </activation>
            <properties>
                <!-- Optional URL to server. Default value is http://localhost:9000 -->
                <sonar.host.url>
                  http://localhost:9000
                </sonar.host.url>
            </properties>
        </profile>
     </profiles>
</settings>
################################################################################
# for Quality Gates

# Disable local webhook validation
# SonarQube server -> Administration -> Configuration -> 
# General Settings -> Security -> Enable local webhooks validation -> disable

# create webhook
# SonarQube server -> Administration -> Configuration -> Webhooks -> Create
# URL - http://localhost:8080/sonarqube-webhook/

# using default quality gates
################################################################################

