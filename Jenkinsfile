
pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', credentialsId: 'git-cred', url: 'https://github.com/sthita933/Maven-java-test-application.git'
            }
        }
         stage('Compilitation') {
            steps {
                sh 'mvn clean compile'
            }
        }
         stage('Testing code') {
            steps {
                sh 'mvn clean test'
            }
        }
         stage('Pacakge the code ') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}

