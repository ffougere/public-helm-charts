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
git commit -m "selenium new 5"
git push
git status

cd /appli/ffougere-repo/public-helm-charts/
helm package charts/kyverno
helm repo index --url https://github.com/ffougere/public-helm-charts/charts --merge index.yaml .
git add .
git commit -m "kyverno 1"
git push
git status

cd /appli/ffougere-repo/public-helm-charts/
helm package charts/prometheus
helm repo index --url https://github.com/ffougere/public-helm-charts/charts --merge index.yaml .
git add .
git commit -m "prometheus 3"
git push
git status

cd /appli/ffougere-repo/public-helm-charts/
helm package charts/grafana
helm repo index --url https://github.com/ffougere/public-helm-charts/charts --merge index.yaml .
git add .
git commit -m "grafana 1"
git push
git status

cd /appli/ffougere-repo/public-helm-charts/
helm package charts/*
helm repo index --url https://github.com/ffougere/public-helm-charts/charts --merge index.yaml .
git add .
git commit -a "Commit everything"
git commit -m "Commit everything"
git push
git status

cd /appli/ffougere-repo/public-helm-charts/
helm package charts/activemq
helm repo index --url https://github.com/ffougere/public-helm-charts/charts --merge index.yaml .
git add .
git commit -m "activemq"
git push
git status