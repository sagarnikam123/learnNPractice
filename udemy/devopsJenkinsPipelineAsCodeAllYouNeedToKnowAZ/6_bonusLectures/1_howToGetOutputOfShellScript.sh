# How To Get Output Of Shell Script

# output-shell-command
node{
    stage('Build'){
        // first shell step
        def shellOutput = sh(script: "ls -al", returnStdout: true).trim()
        echo "First shell - shell output: ${shellOutput}"

        // second shell step
        def shellReturnStatus = sh(script: "ls -al", returnStatus: true)
        echo "Second shell - return status: ${shellReturnStatus}"

        // third shell step
        shellReturnStatus = sh(script: "exit 1", returnStatus: true)
        echo "third shell - return status ${shellReturnStatus}"

        if(shellReturnStatus == 1)
            currentBuild.result = 'FAILURE'

        // fourth shell step
        // using both returnStdout and returnStatus
        def returnValue = sh(script: "ls -al", returnStdout: true, returnStatus: true)
        echo "this is returnvalue: ${returnValue}"
    }
}
