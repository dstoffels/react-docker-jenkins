properties([pipelineTriggers([githubPush()])])

pipeline {
    agent any

    environment{
        def nodejsTool = tool name: 'node-20-tool', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
        def dockerTool = tool name: 'docker-latest-tool', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool' 
        PATH = "${nodejsTool}/bin:${dockerTool}/bin:${env.PATH}"    
    }

    stages{
        stage("Installing Dependencies"){
            steps{
                sh '''
                    ls
                '''
            }

        }

        // stage("Building Optimized React Production Files"){
        //     steps{
        //         sh '''
        //             echo Building Optimized React Production Files...
        //             npm run-script build
        //             '''
        //     }

        // }

        // stage("Build Docker Image"){
        //     steps{
        //         sh """
        //         echo Build Docker Image...
        //         docker build -t dstoffels/react-docker-jenkins:$BUILD_NUMBER .
        //         docker images
        //         """
        //     }
        // }

        // stage("Push Docker Image to Docker Hub"){
        //     steps{
        //         withCredentials([usernamePassword(credentialsId: 'personal-docker-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
        //             sh """
        //             docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}
        //             docker push dstoffels/react-docker-jenkins:$BUILD_NUMBER
        //             docker tag dstoffels/react-docker-jenkins:$BUILD_NUMBER dstoffels/react-docker-jenkins:latest
        //             docker push dstoffels/react-docker-jenkins:latest
        //             """
        //         }
        //     }
        // }
    }
}