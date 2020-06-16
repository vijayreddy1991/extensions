sampleStepType002() {
  local foo=$(find_step_configuration_value "foo")
  echo "foo: $foo"
}

execute_command "sampleStepType002"
