pipeline {
    agent any
    environment{
        SF_INSTANCE_URL = credentials('SF_INSTANCE_URL')
        SF_USERNAME = credentials('SF_USERNAME')
        SF_CONSUMER_KEY = credentials('SF_CONSUMER_KEY')
        SF_SERVER_KEY = credentials('SF_SERVER_KEY')
        TEST_LEVEL='RunLocalTests'
        toolbelt = tool 'SalesforceCLI'
    }
    
    withCredentials([file(credentialsId: 'SERVER_KEY_CREDENTALS_ID', variable: 'serverKeyFile')]) {
        stage('checkout source code') {
            checkout scm
        }
        stage('Authorize DevHub') {
            dir('C:\ProgramData\Jenkins\.jenkins\tools\com.cloudbees.jenkins.plugins.customtools.CustomTool\SalesforceCLI\sf\bin'){
               bat "sf org login jwt --instance-url ${SF_INSTANCE_URL} --client-id ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwt-key-file ${serverKeyFile} --set-default-dev-hub --alias HubOrg"
            }
            }
    }
}
