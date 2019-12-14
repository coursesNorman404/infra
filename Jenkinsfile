pipeline {
  agent any
  parameters {
    string(name: 'ARTIFACT_ID', description: 'Name artifact')
  }
  options {
    timeout(time: 3, unit: 'MINUTES')
  }
  stages {
    stage('Example') {
      steps {
        echo "Hello ${params.ARTIFACT_ID}"
      }
    }
  }
}