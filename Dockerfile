FROM katalonstudio/katalon
VOLUME . /tmp/project
CMD ["katalonc.sh", "-projectPath=/tmp/project", "-browserType=\"Chrome\"", "-retry=0", "-statusDelay=15", "-testSuitePath=\"Test Suites/TS_RegressionTest\"", "-apiKey=\"60fe14d7-653f-4d8a-a22a-1eee5d67a0c3\""]