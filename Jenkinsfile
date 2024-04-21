#!groovy

import groovy.json.JsonSlurperClassic

node {

    withCredentials([string(credentialsId: 'SF_CONSUMER_KEY', variable: 'ConsumerId')]) {
    echo 'ConsumerId - $ConsumerId - ${ConsumerId}' 
    }
   
    stage('checkout source') {
        checkout scm
    }

    withEnv(["HOME=${env.WORKSPACE}"]) {
        
        withCredentials([file(credentialsId: SERVER_KEY_CREDENTALS_ID, variable: 'server_key_file')]) {
            
           }
    }
}
