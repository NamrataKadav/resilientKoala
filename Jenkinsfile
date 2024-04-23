pipeline {
    agent any
    environment{
        SF_TOOL = tool  name:'sfcli', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool' 
    }
    // tools{
    //  name:'sfcli', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool'   
    // }
    stages {
        stage('Example') {
            steps {
                bat '${SF_TOOL}/sf --version'
            }
        }
    }
}
