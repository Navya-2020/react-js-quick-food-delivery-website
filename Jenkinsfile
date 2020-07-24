pipeline{
  agent any
  stages {
         stage ('Checkout SCM'){
           steps{
                    git branch: 'master',url: 'https://github.com/Navya-2020/react-js-quick-food-delivery-website.git'
           }
         }
         
         stage('Install node modules'){
           steps{
                      bat "npm install"
           }
         }
         stage('Build'){
           steps{
                     bat "npm run build"
           }
         }
    
 
    
        
     }
}
