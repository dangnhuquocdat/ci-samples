pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                bat 'katalonc -runMode=console -projectPath="%WORKSPACE%" -retry=0 -testSuitePath="Test Suites/TS_RegressionTest" -browserType="Chrome" -executionProfile="default" -apiKey="60fe14d7-653f-4d8a-a22a-1eee5d67a0c3"'
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
