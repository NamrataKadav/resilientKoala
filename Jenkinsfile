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
         /*
          stage('Create Scratch org'){
              steps{
                  script{
                      CURR_DIR = pwd()
                  }
                  echo "curr dir out of home: ${CURR_DIR}"
                  withEnv(["HOME=${env.WORKSPACE}"]) {
                      script{
                          SCRATCH_ORG_FILE = pwd()+'\\config\\project-scratch-def.json'
                          CURR_DIR_IN = pwd()
                      }
                      echo "curr dir in home: ${CURR_DIR_IN}"
                      echo "SCRATCH_ORG_PATH: ${SCRATCH_ORG_FILE}"
                      dir('C:/ProgramData/Jenkins/.jenkins/tools/com.cloudbees.jenkins.plugins.customtools.CustomTool/SalesforceCLI/sf/bin'){
                          script{
                              CURR_DIR_IN_PATH = pwd()
                          }
                          echo "curr dir in specifies sf path: ${CURR_DIR_IN_PATH}"
                          catchError{
                             bat "sf org create scratch --target-dev-hub HubOrg --set-default --definition-file ${SCRATCH_ORG_FILE} --alias ciorg --duration-days 1"
                             }
                         }
                  }
              }
          }
          */
         stage('Deploy to scratch org'){
             steps{
                 withEnv(["HOME=${env.WORKSPACE}"]) {
                     script{
                         PROJECT_DIR = pwd()
                     }
                     dir('C:/ProgramData/Jenkins/.jenkins/tools/com.cloudbees.jenkins.plugins.customtools.CustomTool/SalesforceCLI/sf/bin'){
                        // bat "sf org list --json --all"
                       //  bat "sfdx force:data:soql:query --query='SELECT Id, Name, OrgName, CreatedDate, Description, ScratchOrg, SignupUsername FROM ActiveScratchOrg' -o ${SF_USERNAME}" 
                         bat "sf project deploy start --source-dir ${PROJECT_DIR} --target-org HubOrg"
                       }
                 }
             }
         }
         
        }
}
