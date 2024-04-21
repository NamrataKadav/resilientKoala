#!groovy

import groovy.json.JsonSlurperClassic

node {
    consumer = credentials('SF_CONSUMER_KEY')
    echo 'consumer: ${consumer}'
    withCredentials([string(credentialsId: 'SF_CONSUMER_KEY', variable: 'ConsumerId')]) {
    echo 'ConsumerId - $ConsumerId - ${ConsumerId}' 
        consumerId
    }
   
    stage('checkout source') {
        checkout scm
    }

    withEnv(["HOME=${env.WORKSPACE}"]) {
        
        withCredentials([file(credentialsId: SERVER_KEY_CREDENTALS_ID, variable: 'server_key_file')]) {
            
           }
    }
}
