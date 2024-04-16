#!groovy

import groovy.json.JsonSlurperClassic

node {

    def SF_CONSUMER_KEY=env.SF_CONSUMER_KEY_TEST
    def SF_USERNAME=env.SF_USERNAME
    def SERVER_KEY_CREDENTALS_ID=env.SERVER_KEY_CREDENTALS_ID
    def SF_INSTANCE_URL = env.SF_INSTANCE_URL ?: "https://login.salesforce.com"
    def TEST_LEVEL='RunLocalTests'

    def toolbelt = tool 'SalesforceCLI'
    
    withCredentials([string(credentialsId: 'SF_CONSUMER_KEY', variable: 'CONSUMER'),string(credentialsId: 'SF_USERNAME', variable: 'USERNAME'),string(credentialsId: 'SERVER_KEY_CREDENTALS_ID', variable: 'server_key_file'),string(credentialsId: 'SF_INSTANCE_URL', variable: 'instanceUrl')]) {
        stage('checkout source code') {
            checkout scm
            echo "SFCONSUMER: ${CONSUMER} And $CONSUMER"
            echo "Username: ${USERNAME}"
            echo "Hello Namrata"
            echo "toolbelt: ${toolbelt}"
            echo "${toolbelt}\sf org login jwt --instance-url ${instanceUrl} --client-id ${CONSUMER} --username ${USERNAME} --jwt-key-file ${server_key_file} --set-default-dev-hub --alias HubOrg"
        }
        stage('Authorize DevHub') {
                rc = command "${toolbelt}\sf org login jwt --instance-url ${instanceUrl} --client-id ${CONSUMER} --username ${USERNAME} --jwt-key-file ${server_key_file} --set-default-dev-hub --alias HubOrg"
                if (rc != 0) {
                    error 'Salesforce dev hub org authorization failed.'
                }
            }
    }
}
