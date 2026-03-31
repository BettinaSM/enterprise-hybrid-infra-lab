# Architecture Overview

This project simulates a hybrid enterprise infrastructure using Ansible automation.

---

## Core Concepts

### Environment Segregation
- Separate inventories for dev and prod
- Environment-specific variables

### Modular Automation
- Role-based design
- Reusable and maintainable components

### Cross-Platform Support
- Linux
- Unix-like systems
- AIX

---

## Execution Flow

1. Inventory defines target hosts
2. Environment variables are loaded
3. Playbooks orchestrate execution:
   - baseline
   - security
   - monitoring

---

## Observability Design

- Each execution generates a unique run directory
- Logs are stored per host
- Historical runs allow comparison and drift detection

---

## Design Principles

- Idempotency
- Modularity
- Reusability
- Environment isolation
- Observability-first approach
