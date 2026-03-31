# 🏗️ Enterprise Hybrid Infrastructure Lab

Enterprise-grade infrastructure project simulating a hybrid environment with Linux, Unix/AIX-like systems, automation, and cloud-ready practices.

---

## 🎯 Overview

This project simulates a real-world enterprise infrastructure environment, focusing on:

- Linux system administration
- Unix/AIX-like environments (simulated)
- Infrastructure automation using Ansible
- Container-based lab environments
- Operational scripting for system management

---

## 🧠 Scenario

A fictional enterprise infrastructure composed of:

- Web server
- Application server
- Bastion-style access
- Automated provisioning layer

This setup represents a simplified hybrid infrastructure commonly found in enterprise environments.

---

## 🏗️ Architecture

                 [ Internet ]
                       |
                  [ Bastion ]
                       |
        -------------------------------
        |              |              |
  [ Web Server ] [ App Server ] [ Ops Node ]

  
---

## ⚙️ Technologies

- Linux (Ubuntu)
- Ansible (Configuration Management)
- Docker (Lab Environment)
- Bash (Operational Scripts)

---

## 📁 Project Structure
.
├── ansible/
├── docker/
├── scripts/
├── docs/
└── README.md


---

## 🔧 Features

### ⚙️ Infrastructure Automation
- Automated provisioning with Ansible
- Package management and user creation

### 🐳 Lab Environment
- Containerized infrastructure using Docker
- Multi-node simulation

### 🧪 System Operations
- Health check scripts
- System diagnostics

---

## ▶️ Getting Started

### Run environment
docker-compose up -d

### Execute automation
ansible-playbook -i inventory.ini playbook.yml

---

## 🔐 Security Considerations

- Non-root practices (recommended)
- SSH-based access model (future enhancement)
- Separation of roles and responsibilities

---

## 🚀 Roadmap

- [ ] SSH Hardening (CIS-based)
- [ ] Firewall configuration (UFW / iptables)
- [ ] Monitoring (Prometheus / Grafana)
- [ ] Cloud provisioning with Terraform
- [ ] CI/CD for infrastructure
- [ ] IAM simulation

---

## 👩‍💻 Author

Bettina S. M.  
Infrastructure | Linux | DevOps | Cloud | Security  

🌐 Portfolio: https://bettinasm.github.io/BettinaSM/  
💻 GitHub: https://github.com/BettinaSM

---

## ⭐ Portfolio Value

This project demonstrates:

- Infrastructure design thinking
- Automation with Ansible
- Linux/Unix system administration
- Hybrid environment simulation
- DevOps foundational practices

Ideal for roles such as:

- Infrastructure Engineer
- Linux Engineer
- DevOps Engineer
- Cloud Engineer
