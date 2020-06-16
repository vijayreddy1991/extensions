npmTest() {
  local gitRepoResName=$(get_resource_name --type "GitRepo")
  if [ -z "$gitRepoResName" ]; then
    echo "GitRepo resource not added as an input"
    exit 1
  fi

  local repoDir=$(find_resource_variable "$gitRepoResName" resourcePath)
  local installMocha=$(find_step_configuration_value "installMocha")
  local testFile=$(find_step_configuration_value "testFile")
  local artifactoryName=$(get_integration_name --type "Artifactory")

  if [ -z "$installMocha" ]; then
    installMocha=true
  fi

  pushd $repoDir
    echo "Running npm install"
    npm install

    if [ "$installMocha" == "true" ]; then
      npm install --save-dev mocha
      ./node_modules/mocha/bin/mocha $testFile
    else
      npm test
    fi
  popd
}

execute_command "npmTest"
