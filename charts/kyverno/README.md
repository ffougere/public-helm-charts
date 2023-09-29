# Kyverno

[Kyverno](https://https://kyverno.io/) is a Policy resources management for Kubernetes
https://github.com/kyverno/kyverno/tree/main/charts/kyverno
https://stackoverflow.com/questions/70615434/kustomize-resource-github-private-repository
```bash
# Register official chart repository
helm repo add jenkins https://charts.jenkins.io

cd charts
# Pull the new chart
helm pull --version '<new version>' jenkins/jenkins

# Replace the current copy with the newly pulled chart
rm --force --recursive jenkins
tar --extract --file jenkins-*.tgz --gzip
rm jenkins-*.tgz
git add jenkins
```

https://rndwww.nce.amadeus.net/confluence/display/SREGMS/Admission+controller
https://rndwww.nce.amadeus.net/confluence/display/SREGMS/Kyverno+deployment+on+AKS
https://kyverno.io/docs/installation/platform-notes/

aks-dev-eus2-tc-gms-2 >>> 1.26 donc OK

Platform Notes

Special considerations for certain Kubernetes platforms.

Nicolas FLINOIS pour regle kyverno