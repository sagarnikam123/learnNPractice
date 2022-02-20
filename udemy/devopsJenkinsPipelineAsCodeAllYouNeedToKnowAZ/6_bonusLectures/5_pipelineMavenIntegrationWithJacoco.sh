# Pipeline Maven Integration with Jacoco

# withMaven_simple_java_project_with_jacoco-not working as expected
node{
  stage('Build'){
    cleanWs()
    git url: 'https://github.com/pipelineascodecourse/simple_java_project_with_jacoco'
    withMaven(
    maven: 'apache-maven-3.8.2',
    mavenOpts: '-Dfile.encoding=UTF8',
    options: [ junitPublisher(disabled: false), artifactsPublisher(disabled: false),
      jacocoPublisher(disabled: false)]
    ){
      sh 'mvn clean install'
    }
  }
}
################################################################################
