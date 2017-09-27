pipeline {
  agent any
  stages {
    stage('Integration Tests') {
      steps {
        parallel(
          "sidebar-navigation-data-service": {
            git(url: 'https://git.prod.williamhill.plc/sportsbook/sidebar-navigation-data-service.git', branch: 'master')
            sh 'npm install && npm run compile && ENV=${params.ENV} npm run integration'
            
          },
          "sidebar-navigation-data-provider": {
            git(url: 'https://git.prod.williamhill.plc/sportsbook/sidebar-navigation-data-provider.git', branch: 'master')
            sh 'npm install && npm run compile && ENV=${params.ENV} npm run integration'
            
          }
        )
      }
    }
    stage('') {
      steps {
        parallel(
          "sidebar-navigation-e2e-desktop": {
            echo 'oopp'
            
          },
          "sidebar-navigation-e2e-mobile": {
            echo 'dede'
            
          }
        )
      }
    }
  }
  environment {
    ENV = 'pp1'
  }
}