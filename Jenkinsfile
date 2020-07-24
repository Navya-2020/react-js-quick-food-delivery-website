pipeline{
agent any
stages{
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
