pipeline {
    agent any
    tool name:'SalesforceCLI', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool'
    stages {
        stage('Example') {
            steps {
                sh 'sf --version'
            }
        }
    }
}
