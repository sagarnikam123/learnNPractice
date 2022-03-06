# Workspace synchronization

# to keep workspace synchronized with other stages, use reuseNode true.
# means no new workspace will be created, and current workspace from current agent
# will be mounted into container, and container will be started at the same node,
# so whole data will be synchronized.

# declarative
pipeline {
    agent any
    stages{
        stage('Build'){
            agent {
                docker {
                    image 'gradle:jdk11-alpine'
                    // Run the container on the node specified at the top-level of pipeline, in the same workspace, rather than on new node entirely.
                    reuseNode true
                }
            }
            steps {
                sh 'gradle --version'
            }
        }
    }
}

# scripted
# Option "reuseNode true" currently unsupported in scripted pipeline
