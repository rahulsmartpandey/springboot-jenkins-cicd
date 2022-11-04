 pipeline {
     agent any
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
         stage('Integration testing'){
               steps{
                  bat 'mvn verify -DskipUnitTests'
              }
         }
         stage('Maven Build'){
                steps{
                  bat 'mvn clean install'
                }
         }
         stage('SonarQube analysis'){
             steps{
                  script{
                        withSonarQubeEnv(credentialsId: 'sonar-api') {
                        bat 'mvn clean package sonar:sonar'
                        }
                  }
             }
         }
         stage('Quality Gate Status'){
             steps{
                script{
                    waitForQualityGate abortPipeline: false, credentialsId: 'sonar-api'
                }
             }
         }
     }
}