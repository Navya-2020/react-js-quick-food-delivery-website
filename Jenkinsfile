pipeline{
  stages {
         stage ('Checkout SCM'){
                    git branch: 'master',url: 'https://github.com/Navya-2020/react-js-quick-food-delivery-website.git'
         }
         
         stage('Install node modules'){
                      bat "npm install"
         }
         stage('Build'){
                     bat "npm run build"
         }
    
 
    
        
     }
}
