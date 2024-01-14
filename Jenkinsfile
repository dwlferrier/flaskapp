pipeline {
  agent {
    docker {
      image 'dwlferrier/myflix:flaskapp'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t flaskapp .'
      }
    }

    stage('Push') {
      steps {
        sh 'docker tag flaskapp dwlferrier/myflix:flaskapp'
        sh 'docker push dwlferrier/myflix:flaskapp'
      }
    }

  }
}