pipeline {
  agent any
  parameters {
    string(name: 'ARTIFACT_ID', description: 'Name artifact')
  }
  options {
    timeout(time: 3, unit: 'MINUTES')
  }
  stages {
    stage('Build Packer') {
      steps {
        sh 'chmod +x ./bash/prod.sh'
        sh './bash/prod.sh'
      }
    }
  }
}