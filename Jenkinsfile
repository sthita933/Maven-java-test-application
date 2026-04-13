
pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sthita933/project01-maven.git'
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
        stage('s3') {
            steps {
                s3Upload acl: 'Private', bucket: 'amazone-s3-bucket-123', file: 'target/my-webapp.war'
            }
        }
         stage('Deploying the code ') {
            steps {
                sh 'rm -rf *.war'
                sh 'cp target/*.war /home/ubuntu/apache-tomcat-9.0.117/webapps/'
            }
        }
    }
}

