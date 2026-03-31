# Runbook

## Run Full Deployment

ansible-playbook playbooks/site.yml

---

## Run Specific Role

ansible-playbook playbooks/site.yml --tags monitoring

---

## Run Against Production

ansible-playbook -i inventories/prod/hosts.ini playbooks/site.yml

---

## Output Location

output/runs/<timestamp>/

Each host generates its own log file.

---

## Compare Runs

./scripts/compare_runs.sh <current_run> <previous_run>
