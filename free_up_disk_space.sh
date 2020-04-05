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
  # will remove all unused containers
  docker system prune
}

echo 'starting clean up'
clean_apt_get_files
clean_docker_images
echo 'finishing clean up'
