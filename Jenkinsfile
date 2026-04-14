
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
        stage('Code Review') {
            steps {
                sh 'mvn pmd:pmd'
            }
        }
         stage('Unit test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Code Coverage') {
            steps {
                sh 'mvn verify'
            }
        }
         stage('Pacakge the code ') {
            steps {
                sh 'mvn clean package'
            }
        }
         stage('Deploy') {
            steps {
                sh 'sudo rm -rf *.war"
                sh 'sudo cp **/*.war /home/ubuntu/apache-tomcat-9.0.117/webapps'
            }
        }
    }
}

