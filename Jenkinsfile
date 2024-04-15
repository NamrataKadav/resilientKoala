pipeline {
    agent any 

    stages {
        stage("List env variables") {
            steps {
                sh "printenv | sort"
            }
        }   
    }
}    
