pipeline{
  agent any
    environment {
       registry = "navyadn/react-quick-food"
    registryCredential = 'dockerhub'
    dockerImage = ''
    }
  stages {
         stage ('Checkout SCM'){
           steps{
                    git branch: 'master',url: 'https://github.com/Navya-2020/react-js-quick-food-delivery-website.git'
           }
         }
      stage('npm install'){
           steps{
             
          
                  sh label: '', script: '''
                  npm i -g npm-check-updates -y
                   ncu -u 
                  npm install
'''
           }
         }
           
    stage('Build'){
           steps{
                  sh label: '', script: '''npm run build
'''
           }
         }
 
     stage('Build image') {
            steps {
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
        sh "docker run -d --name=react-quick-food11 -p 3000:3000 navyadn/react-quick-food"
      }
    }
  }
}
