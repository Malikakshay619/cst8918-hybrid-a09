```markdown
```
# CST8918 - Hybrid-A09: Terraform AKS Deployment with CI/CD

This project was created for the CST8918 - DevOps: Infrastructure as Code course under Prof. Robert McKenney. It demonstrates a complete Infrastructure as Code (IaC) workflow using **Terraform**, **Husky**, and **GitHub Actions**.

---
```
```
## 📦 Project Overview

This repository contains:
- A **Terraform script** to deploy resources on Azure (Resource Group & Storage Account).
- **Husky pre-commit hooks** to enforce Terraform code formatting and linting.
- A **GitHub Actions pipeline** to automatically validate Terraform code on pull requests.

---

## 🚀 Features

### 🧑‍💻 Husky Pre-commit Hooks
- `terraform fmt -check -recursive` – Checks code formatting
- `terraform validate` – Validates Terraform syntax
- `tflint` – Enforces Terraform best practices

### 🔄 GitHub Actions Workflow
- **Terraform fmt** – Validates formatting
- **Terraform validate** – Validates configuration
- **TFLint** – Lints for best practices and Azure-specific rules
- **Terraform plan** – Shows a plan of proposed changes (local-only)

---

## 📂 Folder Structure

```

cst8918-hybrid-a09/
├── infrastructure/
│   ├── main.tf              # Terraform configuration
├── .github/
│   └── workflows/
│       └── action-terraform-verify.yml # GitHub Actions workflow
├── .husky/                  # Husky pre-commit hooks
├── .tflint.hcl              # TFLint configuration
├── .gitignore
├── package.json
├── README.md

````

---

## 🛠️ Setup Instructions

### Prerequisites
- Node.js and npm
- Terraform v1.2.4 or later
- TFLint
- Azure CLI (for real deployments)

### Clone and Setup
```bash
git clone https://github.com/Malikakshay619/cst8918-hybrid-a09.git
cd cst8918-hybrid-a09
npm install
npx husky install
````

### Initialize Terraform

```bash
cd infrastructure
terraform init
```

