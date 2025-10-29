# Customizing the execution env_feature

# Docker images as the execution env_feature for a single Stage or the entire Pipeline
# install 2 plugins before -> "Docker plugin" & "Docker Pipeline"

# declarative
pipeline {
    agent {
        docker { image 'node:current-alpine3.14'}
    }

    stages{
        stage('Test'){
            steps{
                sh 'node --version'
            }
        }
    }
}

# scripted
node {
    /* Requires the Docker Pipeline plugin to be installed*/
    docker.image('node:current-alpine3.14').inside{
        stage('Test') {
            sh 'node --version'
        }
    }
}
