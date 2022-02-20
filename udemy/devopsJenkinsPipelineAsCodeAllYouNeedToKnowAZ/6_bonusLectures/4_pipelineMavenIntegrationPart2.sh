# Pipeline Maven Integration (Part 2)

################################################################################
# withMaven_simple_java_project-mavenSettingsFilePath
node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project'
    withMaven(
      maven: 'apache-maven-3.8.2',
      mavenSettingsFilePath: '/opt/apache-maven-3.8.2/conf/settings.xml'
    ){
      sh 'mvn -X clean install'
    }
  }
}
################################################################################
# withMaven_simple_java_project-mavenSettingsFilePath-mavenLocalRepo-mavenSettingsConfig
# /home/tetra/.m2/local_maven_repo
node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project'
    withMaven(
      maven: 'apache-maven-3.8.2',
      // ${user.home}/.m2/repository
      mavenSettingsFilePath: '/opt/apache-maven-3.8.2/conf/settings.xml',
      // /home/tetra/.m2/config_file_maven_repo
      mavenSettingsConfig: 'd0b2c611-85e5-458e-9e1e-f224c9e5ce0d',
      // /home/tetra/.m2/local_maven_repo
      mavenLocalRepo: '/home/tetra/.m2/local_maven_repo'
    ){
      sh 'mvn -X clean install'
    }
  }
}
################################################################################
# withMaven_simple_java_project-mavenSettingsFilePath-mavenLocalRepo-mavenSettingsConfig
# /home/tetra/.m2/config_file_maven_repo
node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project'
    withMaven(
      maven: 'apache-maven-3.8.2',
      // ${user.home}/.m2/repository
      mavenSettingsFilePath: '/opt/apache-maven-3.8.2/conf/settings.xml',
      // /home/tetra/.m2/config_file_maven_repo
      mavenSettingsConfig: 'd0b2c611-85e5-458e-9e1e-f224c9e5ce0d'
    ){
      sh 'mvn -X clean install'
    }
  }
}
################################################################################
# withMaven_simple_java_project-jdk
# Jenkins dashboard -> Manage Jenkins -> Global Tool Configuration -> JDK
node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project'
    withMaven(maven: 'apache-maven-3.8.2', jdk: 'jdk-11.0.12'){
      sh 'mvn -X clean install'
    }
  }
}
################################################################################
# withMaven_simple_java_project-mavenOpts
# Jenkins dashboard -> Manage Jenkins -> Global Tool Configuration -> JDK
node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project'
    withMaven(maven: 'apache-maven-3.8.2',
    jdk: 'jdk-11.0.12',
    // java options
    mavenOpts: '-XX:+PrintCommandLineFlags -XX:+UseConcMarkSweepGC'
    ){
      sh 'mvn -X clean install'
    }
  }
}
################################################################################
# withMaven_simple_java_project-mavenOpts
# disable jUnit test results & artifacts jars on build page
node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project'
    withMaven(
    maven: 'apache-maven-3.8.2',
    options: [ junitPublisher(disabled: true), artifactsPublisher(disabled: true)]
    ){
      sh 'mvn -X clean install'
    }
  }
}
################################################################################
