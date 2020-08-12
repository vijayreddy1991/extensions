sampleResource001() {
  local resourceName="$1"
  local resourceFoo=$(find_resource_variable "$resourceName" "resourceFoo")
  echo "resourceFoo: $resourceFoo"

  node GitRepo.js
}

execute_command "sampleResource001 %%context.resourceName%%"
