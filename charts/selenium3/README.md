# Selenium grid
https://github.com/SeleniumHQ/docker-selenium/blob/selenium-grid-0.15.8/charts/selenium-grid/values.yaml
https://github.com/SeleniumHQ/docker-selenium/tree/selenium-grid-0.15.8/charts/selenium-grid/templates

# URL Resources
KEDA : https://medium.com/@gururajhm/auto-scaling-selenium-grid-in-kubernetes-using-keda-azure-kubernetes-service-3244dc00a9a6
HPA : https://learn.microsoft.com/en-us/azure/aks/tutorial-kubernetes-scale?tabs=azure-cli#autoscale-pods

## Tutorials
https://www.softwaretestinghelp.com/selenium-grid-selenium-tutorial-29/


## Best Practices / Tutorial
first Selenium script : https://www.selenium.dev/documentation/webdriver/getting_started/first_script/

## Troubleshooting
KEDA : https://github.com/SeleniumHQ/docker-selenium/issues/1800

### Webdriver
https://bugs.chromium.org/p/chromedriver/issues/detail?id=2283
https://github.com/elgalu/docker-selenium/issues/20

### /dev/shm
https://www.alibabacloud.com/help/en/elastic-container-instance/latest/memory-emptydir-shm
https://github.com/kata-containers/runtime/issues/2631
https://sqa.stackexchange.com/questions/42247/how-to-add-an-argument-to-my-basetest-chromedriver-instance

### tmpfs
https://superuser.com/questions/45342/when-should-i-use-dev-shm-and-when-should-i-use-tmp
Shared memory issue / java memory ... 
https://datawookie.dev/blog/2021/11/shared-memory-docker/
https://www.cyberciti.biz/tips/what-is-devshm-and-its-practical-usage.html
https://github.com/SeleniumHQ/docker-selenium/issues/1307
https://stackoverflow.com/questions/53902507/unknown-error-session-deleted-because-of-page-crash-from-unknown-error-cannot/53970825#53970825
https://lists.debian.org/debian-devel/2012/06/msg00311.html
https://github.com/portainer/portainer/issues/4992
https://svdoscience.com/2021-03-17/fix-session-deleted-page-crash-selenium-grid-chrome-docker
https://peter.sh/experiments/chromium-command-line-switches/#disable-dev-shm-usage
https://thurlow.io/ruby/2020/11/06/remote-selenium-webdriver-servers-with-rails-capybara-and-rspec.html
https://www.roelpeters.be/solve-selenium-error-session-deleted-because-of-page-crash/
https://github.com/elgalu/docker-selenium/issues/20

