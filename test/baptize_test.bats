#!/usr/bin/env bats

load test_helper

@test "it has a baptize root variable" {
  [ "$BAPTIZE_ROOT" == "$HOME/.baptize" ]
}

@test "it defers if the baptize root variable is set" {
  BAPTIZE_ROOT="test"
  source "$ROOT/lib/baptize.sh"
  [ "$BAPTIZE_ROOT" == "test" ]
}

@test "it has a baptize config file variable" {
  [ "$BAPTIZE_CONFIG" == "$HOME/.holywater" ]
}

@test "it defers if the baptize config file variable is set" {
  BAPTIZE_CONFIG="test"
  source "$ROOT/lib/baptize.sh"
  [ "$BAPTIZE_CONFIG" == "test" ]
}

@test "it loads the baptize config file" {
  BAPTIZE_CONFIG="$ROOT/test/fixtures/.holywater"
  source "$ROOT/lib/baptize.sh"
  [ "$BAPTIZE_LOADED" == "yes" ]
}
