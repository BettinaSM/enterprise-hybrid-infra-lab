# Runbook

## Start environment
docker-compose up -d

## Run automation
ansible-playbook -i inventory.ini playbook.yml

## Troubleshooting
- Check containers: docker ps
- Logs: docker logs <container>
