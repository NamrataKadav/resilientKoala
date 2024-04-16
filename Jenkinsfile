#!groovy

import groovy.json.JsonSlurperClassic

node {

    def SF_CONSUMER_KEY=env.SF_CONSUMER_KEY_TEST
    def SF_USERNAME=env.SF_USERNAME
    def SERVER_KEY_CREDENTALS_ID=env.SERVER_KEY_CREDENTALS_ID
    def SF_INSTANCE_URL = env.SF_INSTANCE_URL ?: "https://login.salesforce.com"
    def TEST_LEVEL='RunLocalTests'

    def toolbelt = tool 'SalesforceCLI'
    envrionment{
        CONSUMER_KEY = credentials('SF_CONSUMER_KEY')
    }


    // -------------------------------------------------------------------------
    // Check out code from source control.
    // -------------------------------------------------------------------------

    stage('checkout source code') {
        withCredentials([string(credentialsId: 'SF_CONSUMER_KEY', variable: 'CONSUMER')]) {
           echo "SFCONSUMER: ${CONSUMER} And $CONSUMER"
        }
        echo "Hello Namrata"
        echo "SF_CONSUMER_KEY: ${CONSUMER_KEY}"
    }
}
