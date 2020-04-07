#!/bin/bash

# Script used to free up space on linux environment.
# Execute the script with sudo or add to the secure_path.

clean_apt_get_files()
{
  apt-get autoremove
  apt-get clean
}

clean_docker_images()
{
  # will remove all unused containers, -f for skip prompt. For more information,
  # read: https://docs.docker.com/config/pruning/#prune-images
  docker system prune -af
}

echo 'starting clean up'
clean_apt_get_files
clean_docker_images
echo 'finishing clean up'
