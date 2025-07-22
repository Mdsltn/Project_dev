pipeline {
  agent any
  stages {
    stage('Clone repository') {
      steps {
        // Clone the project from GitHub
        git url: 'https://github.com/Mdsltn/Project_dev.git'
      }
    }
    stage('Build Docker Image') {
      steps {
        // Build Docker image from your Dockerfile
        sh 'docker build -t php-app .'
      }
    }
    stage('Deploy to Slave') {
      steps {
        // Replace with actual SSH/setup for your project
        sh 'ssh -o StrictHostKeyChecking=no ubuntu@16.176.147.128 "docker run -d -p 80:80 php-app"'
      }
    }
  }
}
