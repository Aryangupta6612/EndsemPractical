pipeline{
    agent any
    stages{
        stage('Checkout'){
            steps{
                git url:'https://github.com/Aryangupta6612/EndsemPractical.git', branch: 'master'
            }
        }
        stage('Build and Deploy'){
            steps{
                sh ```
                    docker compose down ||true
                    docker compose up -d --build
                ```
            }
        }
    }
    post{
        always{
            sh `docker container prune -f||true`
            sh `docker image prune -f||true`
        }
        success{
            echo 'Build and Deploy Successful'
        }
        failure{
            echo 'build and deploy failed'
        }
    }
}