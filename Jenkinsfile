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
    }

}