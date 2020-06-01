#!/bin/bash
set -e

[ -z "$BUILD_VERSION" ] && echo "BUILD_VERSION is required." && exit 1;

./yq w -i "01-prod/deployment-prod.yaml" "spec.template.spec.containers[0].image" "nginx:$BUILD_VERSION"

git checkout -b "release-$BUILD_VERSION" master
git add "01-prod/deployment-prod.yaml" && git commit -m "Updated to build $BUILD_VERSION"
# Create a pull request for review:
# - git push origin "prod-$BUILD_VERSION"
