#!/bin/bash

CURRENT_DIR=${PWD##*/}
COMPANY_URL=intesasanpaolo.com
BRANCH=refs%2Fheads%2Fenv%2Fsvil

UTILITY=$(curl -s -u "$BIT_USER:$BIT_PASS" "https://bitbucket.$COMPANY_URL/rest/ui/latest/projects/IOIO0/repos/$CURRENT_DIR/builds?at=$BRANCH" \
  | jq -r '.page.values[].state' \
  | sort \
  | uniq)


case $UTILITY in
  SUCCESSFUL)
    echo -n "❇️"
    ;;

  FAILURE)
    echo -n "📉"
    ;;

  *)
    echo -n "🏗️"
    ;;
esac
