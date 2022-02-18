# How To Create Env Variables For Shell Script

# creating-env-variables-for-shell-script
node{
    stage('Build'){
        env.ENV_VAR1 = 'JOHN' // env variable
        def NOT_ENV_VAR1 = 'SMITH' // groovy variable

        sh 'echo ENV_VAR1 : $ENV_VAR1'
        echo "ENV_VAR1 : ${ENV_VAR1}"

        sh 'echo NOT_ENV_VAR1: $NOT_ENV_VAR1' // not printing
        echo "NOT_ENV_VAR1 : ${NOT_ENV_VAR1}"

        withEnv(['ENV_VAR2=Groovy', 'MVN_VERSION=mvn --version']){
            sh 'echo ENV_VAR2 : $ENV_VAR2'
            sh '$MVN_VERSION'
            sh 'printenv'
        }

        sh 'echo ENV_VAR2 : $ENV_VAR2' // should show nothing
        sh 'echo MVN_VERSION : $MVN_VERSION' // should show nothing
    }
}
