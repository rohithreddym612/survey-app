pipeline {
    agent any
    environment {
        GCR_REPO = "gcr.io/project1-453304/survey-app"
        GITHUB_TOKEN = credentials('github-token')  // Use the GitHub token stored in Jenkins
    }
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', 
                    credentialsId: 'github-token', 
                    url: 'https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $GCR_REPO:latest .'
            }
        }
        stage('Push to GCR') {
            steps {
                sh 'docker push $GCR_REPO:latest'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl set image deployment/survey-app survey-app=$GCR_REPO:latest'
            }
        }
    }
}
