pipeline {
    agent any
    tools{
     name:'sfcli', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool'   
    }
    stages {
        stage('Example') {
            steps {
                sh 'sf --version'
            }
        }
    }
}
