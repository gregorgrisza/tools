#!/bin/bash

echo "Params:[ ${@} ]"
echo "Count: $#"

if [ $# == 0 ]; then
  echo "Using last image"
  _docker_id=`docker images -q | head -1`
else
  _docker_id=${1}
fi

echo Running ${_docker_id}
docker run -t -i --privileged --network host ${_docker_id} bash
