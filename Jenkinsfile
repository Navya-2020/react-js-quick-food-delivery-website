pipeline {
  environment {
    registry = "navyadn/react-quick-food11"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages{
    stage ('Build') {
      steps{
        echo "Building Project"
        nodejs('nodejs') {
        sh label: '', script: '''
        
                sudo -s
                npm i -g npm-check-updates -y
                ncu -u 
                sudo apt-get update   -y                
                sudo npm install -y
                sudo npm run build

            '''

        }
      }
    }
 
    stage ('Build Docker Image') {
      steps{
        echo "Building Docker Image"
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage ('Push Docker Image') {
      steps{
        echo "Pushing Docker Image"
        script {
           docker.withRegistry( '', registryCredential ) {
              dockerImage.push()
              dockerImage.push('latest')
          }
        }
      }
    }
    stage ('Deploy to Dev') {
      steps{
        echo "Deploying to Dev Environment"
        sh "docker rm -f react-quick-food11 || true"
        sh "docker run -d --name=react-quick-food11 -p 3000:3000 navyadn/react-quick-food11"
      }
    }
  }
}
