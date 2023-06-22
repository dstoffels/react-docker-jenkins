pipeline {
    agent any

    environment{
        def nodejsTool = tool name: 'node-20-tool', type: 'NodeJSInstallation'
        // def dockerTool - tool name: 'docker-latest-tool', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'
        env.PATH = "${nodejsTool}/bin:${env.PATH}"
        // ${dockerTool}/bin:
    }

    stages{
        stage("Installing Dependencies"){
            steps{
                sh '''
                    echo Installing Dependencies...
                '''
                    // npm install    
            }

        }
        stage("Building Optimized React Production Files"){
            steps{
                sh "echo Building Optimized React Production Files..."
            }

        }
        stage("Build Docker Image"){
            steps{
                sh "echo Build Docker Image..."
            }

        }
        stage("Push Docker Image to Docker Hub"){
            steps{
                sh "echo Push Docker Image to Docker Hub..."
            }

        }
    }
}