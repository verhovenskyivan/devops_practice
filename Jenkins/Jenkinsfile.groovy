pipeline{
    stages{
        stage('Checkout') { 
            steps {
                script {
                    git checkout -b
                }
            }
        }
        stage('Build'){
        steps {
            script {
             echo 'Build'
            }
        }
        stage('Create pull request'){
             echo "Pull request"
        }
    }
}
