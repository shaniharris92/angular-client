pipeline {

    tools { nodejs 'nodejs' }
    
       agent { dockerfile true }


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