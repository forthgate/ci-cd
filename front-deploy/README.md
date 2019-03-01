## Deploy project
```
ansible-playbook /home/gitlab-runner/playbooks/hive-deploy/deploy.yml -i /home/gitlab-runner/playbooks/hive-deploy/inventory/dev -e "env=hive" -e "IMAGE=$IMAGE"  -e "port=8081"
```
### Dependencies

Client side:
Docker-compose <=1.15
Required python module docker ( ```pip install docker```)
