pipeline {
    agent any
    tools{
       salesforceCLITool 'SalesforceCLI'
    }
    stages {
        stage('Example') {
            steps {
                sh 'sf --version'
            }
        }
    }
}
