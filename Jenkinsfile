pipeline {
    agent any

    stages {

        stage('Test') {
            steps {
                echo "Ejecutando tests..."
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

        stage('Deploy') {
            steps {
                echo "Desplegando aplicación..."
                // Copiamos el artefacto a la carpeta de deploy
                sh 'cp build.txt /var/www/app/'
            }
        }
    }
}
