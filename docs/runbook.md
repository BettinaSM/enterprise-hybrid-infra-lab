# Runbook

## Run full deployment
ansible-playbook playbooks/site.yml

## Run baseline only
ansible-playbook playbooks/baseline.yml

## Run security
ansible-playbook playbooks/hardening.yml

## Run specific role
ansible-playbook playbooks/site.yml --tags security
