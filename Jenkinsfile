pipeline {
  agent any
  parameters {
    string(name: 'ARTIFACT_ID', description: 'Name artifact')
  }
  options {
    timeout(time: 15, unit: 'MINUTES')
  }
  stages {
    stage('Build Packer') {
      steps {
        sh 'chmod +x ./bash/prod.sh'
        sh './bash/prod.sh'
      }
    }
    stage('Build Terraform') {
      steps {
        sh 'Hecho $DIGITALOCEAN_TOKEN'
      }
    }
  }
}