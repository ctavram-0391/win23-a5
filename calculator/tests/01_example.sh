#!/usr/bin/env bash

CALCULATOR=$1

if [[ $($CALCULATOR 1 + 1) -ne 2 ]]; then
  echo 'ERROR! 1 + 1 should produce 2!'
  exit 1
fi

if [[ $($CALCULATOR 10 - 3) -ne 7 ]]; then
  echo 'ERROR! 10 - 3 should produce 7!'
  exit 1
fi

if [[ $($CALCULATOR 6 '*' 7) -ne 42 ]]; then
  echo 'ERROR! 6 * 7 should produce 42!'
  exit 1
fi

if [[ $($CALCULATOR 20 / 4) -ne 5 ]]; then
  echo 'ERROR! 20 / 4 should produce 5!'
  exit 1
fi

if $CALCULATOR 3 @ 2; then
  echo 'ERROR! An invalid run of the application (3 @ 2) apparently succeeded?!'
  exit 1
fi

echo "All tests passed!"
exit 0
