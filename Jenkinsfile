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
             apt-get install npm -y
           }

                npm i -g npm-check-updates -y
                ncu -u 

                sudo apt-get update   -y              
                
                sudo npm install -y
                sudo npm run build
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


