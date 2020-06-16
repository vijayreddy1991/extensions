sampleResource001() {
  local resource="%%context.resourceName%%"
  local foo=$(find_resource_variable "$resource" "resourceFoo")
  echo "foo: $foo"
}

execute_command "sampleResource001 %%context.resourceName%%"
