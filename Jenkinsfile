pipeline {
    agent any
    stages{

        stage("test"){
            steps{
                echo "Starting test"
                sh 'chmod +x ./testscript.sh'
                sh './testscript.sh'
            }
        }

        stage("Finish"){
            steps{
                echo "Finish"
            }
        }
    }

}