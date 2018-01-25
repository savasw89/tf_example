pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(poll: true, changelog: true, url: 'git@github.com:savasw89/tf_example.git', branch: 'master', credentialsId: '54222f66-6a0f-4a9e-b661-486727b0780c')
      }
    }
  }
}
