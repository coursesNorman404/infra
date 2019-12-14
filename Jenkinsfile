pipeline {
  agent any
  parameters {
    string(name: 'ARTIFACT_ID', description: 'Name artifact')
  }
  options {
    timeout(time: 30, unit: 'MINUTES')
  }
  stages {
    stage('Example') {
      steps "Hello ${params.ARTIFACT_ID}"
    }
  }
}