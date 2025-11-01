# Risk Copilot — Multi‑Agent LLM Governance for Banks

**One‑liner:** A LangGraph‑orchestrated, bank‑grade system that checks every LLM request for **PII, policy, and hallucination risk**, grounds answers on approved docs, and routes **medium/high** risk through **human approval** — with **immutable audit logs**.

## Quickstart
```bash
# 1) Clone
git clone https://github.com/Kowshik13/multi-agent-risk-reporting.git
cd multi-agent-risk-reporting

# 2) Run (first time seeds DB)
bash scripts/run.sh

# 3) Open
# API:   http://localhost:8000/docs
# DB:    postgres://risk:copilot@localhost:5432/risk
# (UI will be added on Day 3)
```

## Repo layout
```
apps/
  api/
agents/
policies/
rag/
audit/
infra/
scripts/
```

## Status
Day 1 scaffold: Docker + FastAPI + Postgres(pgvector) + audit schema.
