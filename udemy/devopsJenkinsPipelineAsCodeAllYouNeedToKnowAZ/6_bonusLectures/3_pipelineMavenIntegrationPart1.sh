# Pipeline Maven Integration (Part 1)
# required Pipeline Meven Integration plugin
# Jenkins dashboard -> Manage Jenkins -> Global Tool Configuration -> Maven
# https://github.com/pipelineascodecourse/simple_java_project

# withMaven_simple_java_project
node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project'

    withMaven(maven: 'apache-maven-3.8.2'){
      sh 'mvn clean install'
    }
  }
}
################################################################################
# withMaven_simple_java_project-mavenLocalRepo
# $HOME/.m2/local_maven_repo - should be blank
node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project'

    withMaven(
      maven: 'apache-maven-3.8.2',
      mavenLocalRepo: '$HOME/.m2/local_maven_repo'
      ){
      sh 'mvn -X clean install' // debug msg, which repo is being used
    }
  }
}
################################################################################
# withMaven_simple_java_project-mavenSettingsConfig
# Jenkins dashboard -> Manage Files -> Config File Management -> Add a new Config -> Maven settings.xml
# change -> <localRepository>$HOME/.m2/config_file_maven_repo</localRepository>
# paste ID below

node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project'

    withMaven(
      maven: 'apache-maven-3.8.2',
      mavenSettingsConfig: 'd0b2c611-85e5-458e-9e1e-f224c9e5ce0d'
      ){
      sh 'mvn -X clean install' // debug msg, which repo is being used
    }
  }
}
################################################################################
