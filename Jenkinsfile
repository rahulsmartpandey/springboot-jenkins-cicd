 pipeline {
     agent any
     tools{
        maven 'Maven'
     }
     stages{
        stage('Git Checkout'){
            steps{
                 git branch: 'develop', url: 'https://github.com/rahulsmartpandey/springboot-jenkins-cicd.git'
            }
        }
         stage('UNIT Testing'){
              steps{
                  bat 'mvn test'
              }
         }
    }
}