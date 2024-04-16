#!groovy

import groovy.json.JsonSlurperClassic

node {

    def SF_CONSUMER_KEY=env.SF_CONSUMER_KEY_TEST
    def SF_USERNAME=env.SF_USERNAME
    def SERVER_KEY_CREDENTALS_ID=env.SERVER_KEY_CREDENTALS_ID
    def SF_INSTANCE_URL = env.SF_INSTANCE_URL ?: "https://login.salesforce.com"
    def TEST_LEVEL='RunLocalTests'

    def toolbelt = tool 'SalesforceCLI'


    // -------------------------------------------------------------------------
    // Check out code from source control.
    // -------------------------------------------------------------------------

    stage('checkout source code') {
        echo "Hello Namrata"
        echo "SF_CONSUMER_KEY: ${SF_CONSUMER_KEY}"
    }
}
