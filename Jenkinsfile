pipeline {
  agent any
  stages {
    stage('Integration Tests') {
      steps {
        git(url: 'https://git.prod.williamhill.plc/sportsbook/sidebar-navigation-data-service.git', branch: 'master')
        sh 'npm install && npm run compile && ENV=${params.ENV} npm run integration'
        echo 'pepe'
      }
    }
  }
  environment {
    ENV = 'pp1'
  }
}