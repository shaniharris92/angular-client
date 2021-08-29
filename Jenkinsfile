pipeline {

    tools { nodejs 'nodejs' }
    
    agent {
    dockerfile { true }
    }
    
     stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }

    stages {
        stage('Install dependencies') {
            steps {
                sh 'ls'
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'ls'
                sh 'npm run test:ci'
            }
        }
    }
}