# Runbook

## Full Deployment

ansible-playbook playbooks/site.yml

---

## Baseline Configuration

ansible-playbook playbooks/baseline.yml

---

## Security Hardening

ansible-playbook playbooks/hardening.yml

---

## Monitoring Execution

ansible-playbook playbooks/site.yml --tags monitoring

---

## Run in Production

ansible-playbook -i inventories/prod/hosts.ini playbooks/site.yml

---

## Output Structure

output/runs/<timestamp>/

Each host generates its own log file.

---

## Compare Runs

./scripts/compare_runs.sh <current_run> <previous_run>

---

## Troubleshooting

- Verify inventory configuration
- Check variable definitions in group_vars
- Ensure scripts have execution permission

chmod +x scripts/*.sh
