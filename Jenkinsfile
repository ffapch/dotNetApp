#!/usr/bin/env groovy

node() {
    stage('checkout') {
        deleteDir()
        echo "Checkout initiated"

        def scmVars = checkout scm
        revision = scmVars.GIT_COMMIT

        echo "Revision: " + revision
    }
    stage('build') {
        echo "Build initiated"

        sh "docker build -t dotnetapp --no-cache ."
    }
    stage('test') {
        echo "Tests initiated"
    }
}