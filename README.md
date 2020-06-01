# Git based Kustomize Deployment

[yq](https://learnk8s.io/templating-yaml-with-code) changes the image version, kubectl deploys the kustomize overlay.


* Build pipeline runs `update.sh`.
* Person in `CODEOWNERS` file gets notified of new pull request.
* After merge to master `deploy.sh` runs.


