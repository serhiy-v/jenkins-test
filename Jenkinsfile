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
                cd terraform
                terraform init
                '''
            }
        }

        stage("Apply"){
            steps{
                sh ''' 
                cd terraform
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