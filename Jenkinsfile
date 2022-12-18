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
                        aws --version
                        aws ec2 describe-instances
                    '''
                }
            }
        }
    }
}
