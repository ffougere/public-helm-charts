# public-helm-charts

# #############################
# Jenkins-Chart
# #############################

# Get password after jenkins deployment
# 1 connect pod : k -n jenkins exec jenkins-deployment-84f84b6f9c-hcvj7  -it /bin/bash
# 2 get password : cat /var/jenkins_home/secrets/initialAdminPassword
# result .... 96f28aaae68541b4a9265576d917a64e
# OR
# k -n jenkins exec jenkins-deployment-84f84b6f9c-hcvj7 cat /var/jenkins_home/secrets/initialAdminPassword

result .... e62dcf964b924df6bf61cbd42bee3de0


k -n jenkins exec jenkins-deployment-84f84b6f9c-t6hsv cat /var/jenkins_home/secrets/initialAdminPassword


e62dcf964b924df6bf61cbd42bee3de0
# if secret usage :
printf $(kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo


Adding Activemq