pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Compilando..."
                sh 'echo Hola > build.txt'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'build.txt', fingerprint: true
            }
        }
    }
}
