pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', 
                    credentialsId: 'github-token',  // Make sure this matches the ID in Jenkins
                    url: 'https://github.com/rohithreddym612/survey-app.git'
            }
        }
    }
}
