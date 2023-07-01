#/bin/bash
CommitVar=$1
echo "Input1: $1"
echo "CommitVar: $1"

cd /appli/ffougere-repo/public-helm-charts/public-helm-charts/charts
helm package charts/selenium
helm repo index --url https://github.com/ffougere/opcito --merge index.yaml .
git add .
git commit -m "$CommitVar"
git push
git status