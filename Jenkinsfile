pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
				//sh 'docker run -t --rm -v "$(pwd)":/tmp/project katalonstudio/katalon katalonc.sh -projectPath=/tmp/project -browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/TS_RegressionTest" -apiKey=<your-api-key>'
				bat 'docker run -t --rm -v "%cd%":/tmp/project katalonstudio/katalon katalonc.sh -projectPath=/tmp/project -browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/TS_RegressionTest" -apiKey="60fe14d7-653f-4d8a-a22a-1eee5d67a0c3"'
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
