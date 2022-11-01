 pipeline {
     agent any
     stages{
        stages('Git Checkout'){
            steps{
                 git branch: 'develop', url: 'https://github.com/rahulsmartpandey/springboot-jenkins-cicd.git'
            }
        }
    }
}