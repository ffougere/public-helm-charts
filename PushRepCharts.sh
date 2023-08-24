#/bin/bash
Chart=$1
echo "Chart: $Chart"

CommitVar=$2
echo "CommitVar: $CommitVar"

cd /appli/ffougere-repo/public-helm-charts/public-helm-charts/charts
helm package charts/"$Chart"
helm repo index --url https://github.com/ffougere/public-helm-charts/charts --merge index.yaml .
git add .
git commit -m "$CommitVar"
git push
git status