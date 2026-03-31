
# Architecture Overview

This project simulates a hybrid enterprise infrastructure using Ansible.

## Key Components

- Multi-environment structure (dev / prod)
- Role-based automation
- Cross-platform compatibility (Linux / Unix / AIX)
- Externalized variables per environment
- Modular and reusable design

## Execution Flow

1. Inventory defines target hosts
2. Environment variables are loaded
3. Roles are applied in sequence:
   - common (baseline)
   - users
   - security
   - monitoring

## Observability

- Each execution generates a unique run directory
- Logs are stored per host
- Historical runs enable comparison and drift detection

## Design Principles

- Idempotency
- Modularity
- Environment isolation
- Reusability
