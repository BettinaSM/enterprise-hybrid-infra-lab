# 🏗️ Enterprise Hybrid Infrastructure Lab

Enterprise-grade infrastructure automation framework simulating hybrid environments (Linux/Unix/AIX) using Ansible.

---

## 🧠 Architecture

This project follows real-world infrastructure engineering principles:

- Environment segregation (dev / prod)
- Role-based automation
- OS abstraction (Linux / AIX compatibility)
- Idempotent execution
- Modular and reusable design

---

## ⚙️ Features

- Multi-environment support
- Infrastructure as Code (IaC)
- Cross-platform scripting (Linux / Unix / AIX)
- Execution tracking (run-based logs)
- Drift detection capability
- Modular automation roles

---

## 📊 Execution Model

Each execution generates a unique run directory:

output/runs/<timestamp>/

Example:

output/runs/2026-03-31_10-30/localhost.log

---

## 🔍 Observability & Analysis

- Logs are generated per host
- Historical runs are preserved
- Supports comparison between executions

### Compare runs:

./scripts/compare_runs.sh <current_run> <previous_run>

---

## ▶️ Execution

Run full deployment:

ansible-playbook playbooks/site.yml

Run specific role:

ansible-playbook playbooks/site.yml --tags monitoring

---

## 🎯 Use Cases

- Infrastructure provisioning
- System baseline enforcement
- Cross-platform automation
- Operational monitoring
- Audit and compliance support

---

## 🚀 Roadmap

- JSON output (SIEM integration)
- CI/CD pipeline integration
- Terraform cloud provisioning
- Centralized logging
- Security hardening (CIS)

---

## 👩‍💻 Author

Bettina S. M.  
Infrastructure | Linux | DevOps | Cloud | Security
