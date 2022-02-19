# Hello World Pipeline Script

# pipeline-helloworld
pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                echo "Hello World!"
            }
        }
    }
}
