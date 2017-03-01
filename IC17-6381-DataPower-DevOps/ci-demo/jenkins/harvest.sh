#!/bin/bash
# Harvest plugins.txt and config.xml. Must be run from *this* directory.
# Must be running the composed application with the default name.

set -ex

# Uses the technique for harvesting the plugins as described at
# https://github.com/jenkinsci/docker#preinstalling-plugins
curl -sSL \
  "http://localhost:8080/pluginManager/api/xml?depth=1&xpath=/*/*/shortName|/*/*/version&wrapper=plugins" \
  | perl -pe 's/.*?<shortName>([\w-]+).*?<version>([^<]+)()(<\/\w+>)+/\1 \2\n/g' \
  | sed 's/ /:/' \
  > plugins.txt

docker exec -it cidemo_jenkins_1 cat /var/jenkins_home/config.xml > config.xml

