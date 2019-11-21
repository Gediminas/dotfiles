#!/bin/bash

CLEAN=0
QUIET=0

for i in "$@"
do
case $i in
    -c|--clean)
    CLEAN=1
    shift # past argument=value
    ;;
    -q|--quiet)
    QUIET=1
    shift # past argument=value
    ;;
    --help)
    shift # past argument=value
    echo "Usage: get_submodules [--clean] [--quiet]"
    exit 0
    ;;
    *)
          # unknown option
    ;;
esac
done

current=0
total=0

printf "Getting submodules:\n\n";

while IFS=$' \t\n' read dir repo
do
  ((total++))
done < .submodules

#eol added because git on windows uses windows EOL and bash gets incorrect last symbol of the last word

while IFS=$' \t\n' read dir repo branch eol
do
  ((current++))
  printf "[$current/$total]  $dir  <=  $repo  ('$branch')\n";
  if [ -d "$dir/.git/refs/heads" ]; then
    pushd $dir > /dev/null
    if (( $CLEAN == 1 )); then
      git fetch --all --recurse-submodules
      git reset --hard origin/$branch
      git clean -fdx
    fi
	git checkout $branch
    git pull;
    popd > /dev/null
  else
    git clone --recursive -b $branch $repo $dir
  fi
  printf "\n";
done < .submodules

if (( $QUIET == 0 )); then
  read -p "Press any key to continue... " -n1 -s
fi

