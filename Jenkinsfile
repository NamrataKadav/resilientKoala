#!groovy

import groovy.json.JsonSlurperClassic

node {

    def SF_CONSUMER_KEY=env.SF_CONSUMER_KEY_TEST
    def SF_USERNAME=env.SF_USERNAME
    def SERVER_KEY_CREDENTALS_ID=env.SERVER_KEY_CREDENTALS_ID
    def SF_INSTANCE_URL = env.SF_INSTANCE_URL ?: "https://login.salesforce.com"
    def TEST_LEVEL='RunLocalTests'

    def toolbelt = tool 'SalesforceCLI'
    
    withCredentials([string(credentialsId: 'SF_CONSUMER_KEY', variable: 'CONSUMER'),string(credentialsId: 'SF_USERNAME', variable: 'USERNAME')]) {
        stage('checkout source code') {
            echo "SFCONSUMER: ${CONSUMER} And $CONSUMER"
            echo "Username: ${USERNAME}"
            echo "Hello Namrata"
        }
    }
}
