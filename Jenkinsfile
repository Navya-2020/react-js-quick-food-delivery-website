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
     stage('Push image') {
            steps {
                script {
                    docker.withRegistry('', 'dockerhub') {
                           dockerImage.push("latest")
                            dockerImage.push("${env.BUILD_ID}")
                    }
                }
            }

  }
}
}
