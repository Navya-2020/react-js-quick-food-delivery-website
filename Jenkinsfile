pipeline{
  agent any
  stages {
         stage ('Checkout SCM'){
           steps{
                    git branch: 'master',url: 'https://github.com/Navya-2020/react-js-quick-food-delivery-website.git'
           }
         }
      stage('npm install'){
           steps{
                  sh label: '', script: '''npm install
'''
           }
         }
            stage('Build'){
           steps{
                  sh label: '', script: '''npm run build
'''
           }
         }
          }
}


