#!/usr/bin/env bats

@test "test test" {
  result="$(echo 2+2 | bc)"
  [ "$result" -eq 4 ]
}

@test "json" {
	result="$(echo '{"x":1}' | json)"
	expected='{
  "x": 1
}'
  [ "$result" = "$expected" ]
}
