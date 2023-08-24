# ChartMuseum

[ChartMuseum](https://chartmuseum.com/) is an open-source, easy to deploy, Helm Chart Repository server.

This chart is a "proxy" chart. It depends on the official Helm chart but with extra Amadeus-specific customization.

The official chart is copied in this repository to avoid external tempering and reduce the risk of unstable install.

To import a new version of the official chart you should do:

```bash
# Register official chart repository
helm repo add chartmuseum https://chartmuseum.github.io/charts

cd charts

# Pull the new chart
helm pull --version '<new version>' chartmuseum/chartmuseum

# Replace the current copy with the newly pulled chart
rm --force --recursive chartmuseum
tar --extract --file chartmuseum-*.tgz --gzip
rm chartmuseum-*.tgz
git add chartmuseum
```

The deployment require the following manual configuration:

```bash
# Create the secret with the proper credentials to connect to Azure
kubectl --namespace chartmuseum create secret generic credentials --from-literal="access-key=+++++" --from-literal="account=+++++"
```
