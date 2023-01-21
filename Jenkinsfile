pipeline {
    agent any
    stages{

        stage("test"){
            steps{
                echo "Starting test"
                sh '''
                ls -la
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