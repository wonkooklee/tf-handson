pipeline {
    agent any
    stages {
        stage ("Say Hello to AWS") {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID', 
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
                    credentialsId: "aws-credentials"
                ]]) {
                    sh '''
                      cd "02-overview"
                      terraform init
                      terraform plan
                      cd ".."
                    '''
                }
            }
        }
    }
}
