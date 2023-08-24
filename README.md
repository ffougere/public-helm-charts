# Helm charts for SRE and CI CD Tools

## Jenkins-Chart
--------------------------------------------------------------------------------------
### 1 - How to Get password after jenkins deployment
--------------------------------------------------------------------------------------
connect pod : k -n jenkins exec jenkins-deployment-84f84b6f9c-hcvj7  -it /bin/bash
get password : cat /var/jenkins_home/secrets/initialAdminPassword

OR directly execute command : kubectl -n jenkins exec jenkins-deployment-84f84b6f9c-hcvj7 cat /var/jenkins_home/secrets/initialAdminPassword

result .... e62dcf964b924df6bf61cbd42bee3de0
# if secret usage :
printf $(kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo

# Activemq artemis