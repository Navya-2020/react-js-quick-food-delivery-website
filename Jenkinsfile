pipeline{
agent any
stages{
  stage("CodeCheckout"){
    steps{
      git 'https://github.com/Navya-2020/react-js-quick-food-delivery-website.git'
      
    }
  }
stage('Build'){
steps{
echo 'Building'
sh 'npm install'
sh 'npm run build'
}
}
stages('Test'){
echo 'Testing'
sh 'npm test'
}
}
}
