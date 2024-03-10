pipeline{
    agent any 
    tools {
        maven 'Maven'
    }
    stages{
        stage('Build'){
            steps{
                echo " developing"
                // bat 'mvn clean package'
            }
            post{
                success{
                    echo "archiving the artifacts"
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
        stage('Deploy to tmact server'){
            steps{
                deploy adapters: [tomcat8(credentialsId: 'a8b453a0-25a0-493b-b976-f10d997066af', path: '', url: 'http://localhost:9090/')], contextPath: null, war: '**/*.war'
            }
            
        }
    }
}
