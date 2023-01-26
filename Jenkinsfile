pipeline {
    agent any
    stages{

        stage("Deploy"){
            steps{
                echo "Starting project"
                sh 'chmod +x ./install-script.sh'
                sh './install-script.sh'
            }
        }

        stage("Test"){
            steps{
                echo "Testing"
                sh 'chmod +x ./test-script.sh'
                sh './test-script.sh'
            }
        }

        stage("Finish"){
            steps{
                echo "Finish"
            }
        }

         stage('Stage for Test branch') {
            when {
                expression { return env.BRANCH_NAME == 'test' }
            }
            steps {
                echo "Stage only for test branch"
            }
        } 

    }
     post {
        success { 
            withCredentials([string(credentialsId: 'telegramToken', variable: 'TOKEN'), string(credentialsId: '	telegramChatID', variable: 'CHAT_ID')]) {
            sh  ("""
                curl -s -X POST https://api.telegram.org/bot${TOKEN}/sendMessage -d chat_id=${CHAT_ID} -d parse_mode=markdown -d text='*${env.JOB_NAME}* : POC *Branch*: ${env.GIT_BRANCH} *Build* : OK *Published* = YES'
            """)
            }
        }

     aborted {
            withCredentials([string(credentialsId: 'telegramToken', variable: 'TOKEN'), string(credentialsId: '	telegramChatID', variable: 'CHAT_ID')]) {
            sh  ("""
                curl -s -X POST https://api.telegram.org/bot${TOKEN}/sendMessage -d chat_id=${CHAT_ID} -d parse_mode=markdown -d text='*${env.JOB_NAME}* : POC *Branch*: ${env.GIT_BRANCH} *Build* : `Aborted` *Published* = `Aborted`'
            """)
            }
        }

     failure {
            withCredentials([string(credentialsId: 'telegramToken', variable: 'TOKEN'), string(credentialsId: '	telegramChatID', variable: 'CHAT_ID')]) {
            sh  ("""
                curl -s -X POST https://api.telegram.org/bot${TOKEN}/sendMessage -d chat_id=${CHAT_ID} -d parse_mode=markdown -d text='*${env.JOB_NAME}* : POC  *Branch*: ${env.GIT_BRANCH} *Build* : `not OK` *Published* = `no`'
            """)
            }
        }

    }
}