pipeline {
    agent any
    stages{

        stage("test"){
            steps{
                echo "Starting test"
                // sh 'chmod +x ./testscript.sh'
                // sh './testscript.sh'
                sh '''
                whoami
                '''
            }
        }

        stage("init"){
            steps{
                sh ''' 
                terraform init
                '''
            }
        }

        stage("Apply"){
            steps{
                sh ''' 
                terraform apply -auto-approve
                '''
            }
        }

        stage("Finish"){
            steps{
                echo "Finish"
            }
        }
    }

}