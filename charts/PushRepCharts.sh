#/bin/bash
CommitVar=$1
echo "Input1: $1"
echo "CommitVar: $1"

cd /appli/ffougere-repo/public-helm-charts/public-helm-charts/charts
helm package charts/vault
helm repo index --url https://github.com/ffougere/public-helm-charts/charts --merge index.yaml .
git add .
git commit -m "$CommitVar"
git push
git status