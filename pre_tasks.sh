#!/bin/bash
# Deployment pre-tasks
SHINY_HOME="/home/appuser/shinyproxy"
TC_REPO="http://ctteamcitym01.surveysampling.com/guestAuth/repository/download"
TC_MODE="lastSuccessful"
SERVER_JAR="${SHINY_HOME}/shinyproxy-server.jar"
CONFIG_YML="${SHINY_HOME}/application.yml"

do_home() {
    echo "Creating ${SHINY_HOME}"
    mkdir -p "${SHINY_HOME}"
}

get_artifact() {
    PROJECT=${1:-""}
    ARTIFACT=${2:-""}
    DEST=${3:-""}

    URL="${TC_REPO}/${PROJECT}/${TC_MODE}/${ARTIFACT}"

    wget $URL -O $DEST
}


test -d "${SHINY_HOME}" || do_home

get_artifact "AseAnalytics_ShinyProxy_ShinyProxyBuild" "shinyproxy-0.9.2.jar" $SERVER_JAR
chmod 0444 $SERVER_JAR

get_artifact "AseAnalytics_shinyProxy_ShinyAppTemplate_GenerateConfig" $CONFIG_YML
chmod 0444 $CONFIG_YML

