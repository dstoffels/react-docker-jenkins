pipeline {
    agent any

    environment{
        def nodejsTool = tool name: 'node-20-tool', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
        def dockerTool - tool name: 'docker-latest-tool', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'
        PATH = "${nodejsTool}/bin:${dockerTool}/bin:${env.PATH}"
        
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