pipeline {
    agent any
    stages {
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
