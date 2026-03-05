pipeline {
    agent any

    stages {
        stage('Pull Image') {
            steps {
                sh 'docker pull nginx'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8081:80 nginx'
            }
        }
    }
}
