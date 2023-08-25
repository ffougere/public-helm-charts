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

cd /appli/ffougere-repo/public-helm-charts/public-helm-charts/
helm package charts/selenium3
helm repo index --url https://github.com/ffougere/public-helm-charts/charts --merge index.yaml .
git add .
git commit -m "selenium new 4"
git push
git status

cd /appli/ffougere-repo/public-helm-charts/public-helm-charts/
helm package charts/kyverno
helm repo index --url https://github.com/ffougere/public-helm-charts/charts --merge index.yaml .
git add .
git commit -m "kyverno 1"
git push
git status