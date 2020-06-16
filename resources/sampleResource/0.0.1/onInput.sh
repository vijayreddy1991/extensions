sampleResource001() {
  local resourceName="$1"
  local resourceFoo=$(find_resource_variable "$resourceName" "resourceFoo")
  local resourceIntegration=$(find_resource_variable "$resourceName" "integrationName")
  echo "resourceFoo: $resourceFoo"
  echo "resourceIntegration: $resourceIntegration"
}

execute_command "sampleResource001 %%context.resourceName%%"
