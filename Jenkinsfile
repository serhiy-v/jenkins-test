pipeline {
    agent any
    stages{

        stage("init"){
            steps{
                echo "Starting project"
                sh 'chmod +x ./install-script.sh'
                sh './install-script.sh'
                // sh '''
                // whoami
                // '''
            }
        }

        stage("test"){
            steps{
                echo "Testing"
                sh 'chmod +x ./test-script.sh'
                sh './test-script.sh'
            }
        }

        // stage("init"){
        //     steps{
        //         sh ''' 
        //         cd terraform
        //         terraform init
        //         '''
        //     }
        // }

        // stage("Apply"){
        //     steps{
        //         sh ''' 
        //         cd terraform
        //         terraform apply -auto-approve
        //         '''
        //     }
        // }

        stage("Finish"){
            steps{
                echo "Finish"
            }
        }

         stage('Push notification') {
            steps {
                script{
                    withCredentials([string(credentialsId: 'telegramToken', variable: 'TOKEN'), string(credentialsId: '	telegramChatID', variable: 'CHAT_ID')]) { 
                        sh '''
                        curl -s -X POST https://api.telegram.org/bot${TOKEN}/sendMessage -d chat_id=${CHAT_ID} -d parse_mode=markdown -d text='*${env.JOB_NAME}* : POC *Branch*: ${env.GIT_BRANCH} *Build* : OK *Published* = YES'
                        '''
                    }
                }
            }
    }

 }

}