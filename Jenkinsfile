pipeline {
      agent {
        docker { image 'node:14-alpine' }
    }

    tools { nodejs 'nodejs' }

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