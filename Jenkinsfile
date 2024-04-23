pipeline {
    agent any
    tools{
       com.cloudbees.jenkins.plugins.customtools.CustomTool 'SalesforceCLI'
    }
    stages {
        stage('Example') {
            steps {
                sh 'sf --version'
            }
        }
    }
}
