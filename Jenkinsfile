pipeline {
    agent any
    tools{
        com.cloudbees.jenkins.plugins.customtools.CustomTool "sfcli"
    }
    // environment{
    //     SF_TOOL = tool  name:'sfcli', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool' 
    // }
    // tools{
    //  name:'sfcli', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool'   
    // }
    stages {
        stage('Example') {
            steps {
                bat 'sf/bin/sf --version'
            }
        }
    }
}
