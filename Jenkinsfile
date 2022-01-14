pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat '''echo Building
                mvn --version'''
            }
        }
        stage('Deploy') {
            steps {
                bat 'echo Deploying'
            }
        }
        stage('Test') {
            steps {
                bat 'katalonc -runMode=console -projectPath="%WORKSPACE%" -retry=0 -testSuitePath="Test Suites/TS_RegressionTest" -browserType="Chrome" -executionProfile="default" -apiKey="%apiKey%"'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'Reports/**/*.*', fingerprint: true
            junit 'Reports/**/JUnit_Report.xml'
        }
    }
}
