pipeline {
    agent any
    environment{
        SF_INSTANCE_URL = credentials('SF_INSTANCE_URL')
        SF_USERNAME = credentials('SF_USERNAME')
        SF_CONSUMER_KEY = credentials('SF_CONSUMER_KEY')
        TEST_LEVEL='RunLocalTests'
        toolbelt = tool 'SalesforceCLI'
    }
     stages{
         stage('checkout source code') {
            steps{
                checkout scm 
                 }
         }
          stage('Authorize DevHub') {
             steps{
                withEnv(["HOME=${env.WORKSPACE}"]) {
                    withCredentials([file(credentialsId: 'Server_Key_File', variable: 'serverKeyFile')]) {
                       dir('C:/ProgramData/Jenkins/.jenkins/tools/com.cloudbees.jenkins.plugins.customtools.CustomTool/SalesforceCLI/sf/bin'){
                         bat "sf org login jwt --client-id ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwt-key-file ${serverKeyFile} --set-default-dev-hub --alias HubOrg"
                       }
                    }
                }
              }
            }
          stage('Create Scratch org'){
              steps{
                  withEnv(["HOME=${env.WORKSPACE}"]) {
                      script{
                          CURR = pwd()+'config/project-scratch-def.json'
                      }
                      echo "SCRATCH_ORG_PATH: ${CURR}"
                      dir('C:/ProgramData/Jenkins/.jenkins/tools/com.cloudbees.jenkins.plugins.customtools.CustomTool/SalesforceCLI/sf/bin'){
                         // bat "sf org create scratch --target-dev-hub HubOrg --set-default --definition-file config/project-scratch-def.json --alias ciorg --wait 10 --duration-days 1"
                       }
                  }
              }
          }
         
        }
}
