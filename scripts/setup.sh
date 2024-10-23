#!/bin/bash

applications=("$@")
ghUrlPrefix=ghcr.io/onecx/onecx

update_psql() {
  sudo apt-get update
  sudo apt-get install -y postgresql-client
  echo "$(psql --version)"
}

# arg1 = $1 = application name, arg2 = $2 = [svc | bff | ui], arg3 = $3 = [ main | main-native ]
pull_app_image() {
  echo "   Image: $ghUrlPrefix-$1-$2:$3"
  result=$(docker pull $ghUrlPrefix-$1-$2:$3 2>&1)
  if [[ "$result" =~ ^Error.*$ ]]
  then
    echo"   => result:  $result"
  fi
}

# arg1 = $1 = application name
manage_product() {
  if [[ $1 = "iam-kc" ]]; then
    applist="onecx-$1-svc"
    pull_app_image $1 svc main-native
  elif [[ $1 = "iam" ]]; then
    applist="onecx-$1-bff onecx-$1-ui"
    pull_app_image $1 bff main-native
    pull_app_image $1 ui main
  elif [[ $1 = "shell" ]]; then
    applist="onecx-$1-bff onecx-$1-ui"
    pull_app_image $1 bff main-native
    pull_app_image $1 ui main
  elif [[ $1 = "user-profile" ]]; then
    applist="onecx-$1-bff onecx-$1-svc onecx-$1-avatar-svc onecx-$1-ui"
    pull_app_image $1 svc main-native
    pull_app_image $1 bff main-native
    pull_app_image $1 avatar-svc main-native
    pull_app_image $1 ui main
  else
    applist="onecx-$1-svc onecx-$1-bff onecx-$1-ui"
    pull_app_image $1 svc main-native
    pull_app_image $1 bff main-native
    pull_app_image $1 ui main
  fi
  docker compose -f ../docker-compose-onecx.yaml up -d  $applist
}

update_psql

# TODO: Install docker-compose

run_base_path=$(readlink -f run-base.sh)
source $run_base_path

# TODO: Not needed?
# create_db_path=$(readlink -f create-onecx-product-databases.sh)
# source $create_db_path

echo "=> Start Applications"
for key in "${!applications[@]}"
do
  application=${applications[$key]}
  echo "Starting ${application} Application"
  manage_product $application
done

# # TODO: Overwrite keycloak user id
# init_db_path=$(readlink -f init-onecx-products.sh)
# source $init_db_path
