# 🏗️ Enterprise Hybrid Infrastructure Lab

Enterprise-grade infrastructure automation project simulating hybrid environments (Linux/Unix/AIX) with Ansible.

---

## 🧠 Design Principles

- Environment segregation (dev/prod)
- Role-based automation
- OS abstraction (Linux/AIX)
- Idempotent execution
- Modular architecture

---

## ⚙️ Features

- Multi-environment support
- Infrastructure as Code
- Reusable roles
- Execution tagging
- Audit logging

---

## ▶️ Execution

ansible-playbook playbooks/site.yml

---

## 🎯 Use Cases

- Infrastructure provisioning
- System baseline enforcement
- Security hardening
- Automation standardization

## 📊 Execution & Observability

This project includes execution tracking and log analysis:

- Each run generates a timestamped directory
- Logs are stored per host
- Historical runs can be compared for drift detection

### Example:

output/runs/2026-03-31_10-30/server1.log

### Compare runs:

./scripts/compare_runs.sh <current_run> <previous_run>
