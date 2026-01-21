# Human Digital Twin

Human Digital Twin is an industrial wearable-based platform that creates a digital model of a worker inside operational processes.

The system uses wearable telemetry to model:
- human performance
- fatigue
- reaction time
- error probability

The digital twin is integrated into process simulations to identify bottlenecks and optimize throughput.

## Use Cases
- Manufacturing
- Logistics
- Industrial operations
- Control rooms
- Warehouses

## MVP Scope
- Wearable telemetry ingestion
- Human Twin model
- Process simulation
- Bottleneck detection
- Dashboard

## Architecture

Garmin Wearable -> Ingestion API -> Twin Engine -> Simulation -> Dashboard

## Tech Stack
- Garmin Connect IQ (Monkey C)
- Python FastAPI
- PostgreSQL
- Docker
- Simulation (SimPy)
- Analytics (Pandas)
