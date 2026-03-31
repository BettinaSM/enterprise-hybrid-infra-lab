#  Enterprise Hybrid Infrastructure Lab

Enterprise-grade infrastructure automation framework simulating hybrid environments (Linux / Unix / AIX) using Ansible.

---

##  Architecture Overview

This project is designed following real-world infrastructure engineering practices:

- Environment segregation (dev / prod)
- Modular playbook execution
- Role-based automation
- Cross-platform compatibility (Linux / Unix / AIX)
- Idempotent configuration management
- Execution observability and logging

---

##  Key Features

- Infrastructure as Code (IaC)
- Multi-environment support
- Modular playbooks (baseline, hardening, full deployment)
- Cross-platform health checks
- Execution tracking (run-based logs)
- Drift detection capability
- Reusable Ansible roles

---

##  Project Structure
inventories/
dev/
prod/

playbooks/
site.yml
baseline.yml
hardening.yml

roles/
common/
users/
security/
monitoring/

scripts/
health_check.sh
compare_runs.sh

output/
runs/

docs/
architecture.md
runbook.md


---

##  Execution

### Full deployment
ansible-playbook playbooks/site.yml


---

### Baseline only
ansible-playbook playbooks/baseline.yml


---

### Security hardening
ansible-playbook playbooks/hardening.yml


---

### Monitoring only
ansible-playbook playbooks/site.yml --tags monitoring


---

### Run in production
ansible-playbook -i inventories/prod/hosts.ini playbooks/site.yml


---

##  Execution Model

Each execution generates a unique run directory:

output/runs/<timestamp>/


Example:
output/runs/2026-03-31_10-30/server1.log


---

##  Observability & Analysis

- Logs are generated per host
- Historical runs are preserved
- Supports execution comparison (drift detection)

### Compare runs:
./scripts/compare_runs.sh <current_run> <previous_run>


---

##  Playbook Strategy

| Playbook | Purpose |
|--------|--------|
| site.yml | Full infrastructure deployment |
| baseline.yml | Base system configuration |
| hardening.yml | Security and compliance |
| monitoring (role) | Health check and observability |

---

##  Use Cases

- Infrastructure provisioning
- System baseline enforcement
- Security hardening
- Cross-platform automation (Linux / AIX / Unix)
- Monitoring and validation
- Audit and compliance support

---

##  Roadmap

- JSON output for SIEM integration
- CI/CD pipeline (GitHub Actions)
- Terraform integration (cloud provisioning)
- Centralized logging
- CIS benchmark hardening

---

##  Author

Bettina S. M.  
Infrastructure | Linux | DevOps | Cloud | Security
