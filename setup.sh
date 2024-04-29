#!/usr/bin/env bash

TO_BUILD=()
ALL_IMGS=('main' 'apps' 'system')   # as the order matters, this is easiest to do by hand for now
IMAGE_DIR="images"
CUR_DIR=$(pwd)

# TODO check if distrobox and podman installed

# TODO case where no arg given
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --all) 
            TO_BUILD=("${ALL_IMGS[@]}")
              ;;
        --name) 
              TO_BUILD=("$2")
              shift
              ;;
        *) 
              printf 'Use option --name or --all\n' >&2
              exit 1
    esac
    shift
done

cd $IMAGE_DIR
for DIR in "${TO_BUILD[@]}";
do
    if test -d $DIR; then
        echo "===== Configuring '$DIR' ====="
        cd $DIR
        podman build . --tag "$DIR"
        distrobox rm -f "$DIR"
        distrobox create -n "$DIR" -i "$DIR"
        cd -
    else
      echo "Directory $DIR does not exist. Skipping."
    fi
done

cd $CUR_DIR
