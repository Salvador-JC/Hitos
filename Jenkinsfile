pipeline {
    agent any

    stages {

        stage('Test') {
            steps {
                echo "Ejecutando tests..."

                // Ejecutar todos los scripts dentro de tests/
                sh '''
                for test in tests/*.sh; do
                    echo "Ejecutando $test..."
                    bash "$test"
                done
                '''
            }
        }

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
