pipeline {
    agent { label 'win-agent1'}

    stages {
        stage('Building the project') {
            steps {
                // checkout source code from version control
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/hemanthly/day1MavenHandsOn.git']])
                //build the project
                bat 'mvn clean package'
            }
        }
        stage('Testing the project') {
            steps {
                bat 'mvn test'
            }
        }
        stage('Build the Docker Image') {
            steps {
                // withCredentials([string(credentialsId: 'd3a69071-d77b-464f-91cf-46afa16022d9', variable: 'docker_hub_password')]) {
    // some block
                bat 'docker build -t hemanthly/daymavenhandson .'
// }
            }
        }
        stage('Publish the Docker Image') {
            steps {
                bat 'docker push hemanthly/daymavenhandson'
            }
        }
    }
}
