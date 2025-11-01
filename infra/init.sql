CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS audit_events (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  ts TIMESTAMPTZ DEFAULT now(),
  user_id TEXT,
  req_hash TEXT,
  graph_state JSONB,
  agent_votes JSONB,
  risk_score REAL,
  citations JSONB,
  model_version TEXT
);

CREATE TABLE IF NOT EXISTS docs (
  id SERIAL PRIMARY KEY,
  title TEXT,
  chunk TEXT,
  embedding vector(384)
);
