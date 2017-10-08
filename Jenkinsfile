pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(poll: true, changelog: true, url: 'git@github.com:benwtr/tf_example.git', branch: 'master', credentialsId: 'b00bc054-b82b-4f21-ac25-aab4a9cc0de6')
      }
    }
  }
}