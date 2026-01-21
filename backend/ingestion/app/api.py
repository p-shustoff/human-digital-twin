from fastapi import APIRouter

router = APIRouter(prefix="/api/v1")

@router.post("/telemetry")
def ingest_telemetry(payload: dict):
    return {
        "status": "accepted",
        "message": "Telemetry received"
    }
