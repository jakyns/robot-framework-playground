#!/usr/bin/env bash

cleanup() {
  echo 'Cleaning up...'
  rm ./*.png
  rm ./*.log
  rm ./*.html
  rm ./*.xml
}

check_lint() {
  echo 'Checking linter...'

  linter=$(rflint --ignore TooFewTestSteps \
    --ignore TooFewKeywordSteps \
    --ignore RequireTestDocumentation \
    --ignore RequireSuiteDocumentation \
    --ignore RequireKeywordDocumentation \
    --ignore LineTooLong \
    ./tests/*.robot)

  linter_line_amount=$(echo "$linter" | wc -l)
  
  if (( $linter_line_amount > 1 )); then
    echo "$linter"
    echo 'Linter Failure.'
    exit 1
  else
    echo 'All linter success.'
  fi
}

run_test() {
  echo 'Running test...'

  if ! robot ./tests/*.robot; then
    echo 'Robot Framework exited with an error.'
    exit 1
  else
    echo 'All tests successful.'
    cleanup
  fi
}

check_lint
run_test
