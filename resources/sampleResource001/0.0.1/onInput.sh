sampleResource001() {
  local resourceFoo=$(find_resource_variable "resourceFoo")
  echo "resourceFoo: $resourceFoo"
}

execute_command "sampleResource001 %%context.resourceName%%"
