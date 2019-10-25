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
    }
    stage('test') {
        echo "Tests initiated"
    }
}