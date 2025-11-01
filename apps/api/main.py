from fastapi import FastAPI
from pydantic import BaseModel
import os

app = FastAPI(title="Risk Copilot API")

class Health(BaseModel):
    status: str

@app.get("/health", response_model=Health)
def health():
    return {"status": "ok"}

# TODO: wire orchestrator + DB on Day 1
