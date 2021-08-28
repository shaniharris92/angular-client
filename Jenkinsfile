pipeline {
agent {
    // Equivalent to "docker build -f Dockerfile.build --build-arg version=1.0.2 ./build/
    dockerfile {
        filename 'Dockerfile.build'
        dir 'build'
        label 'my-defined-label'
        additionalBuildArgs  '--build-arg version=1.0.2'
        args '-v /tmp:/tmp'
    }
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