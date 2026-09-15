# Distributed Task Queue Architecture

## Initial Architecture

Client
   |
   v
API Server
   |
   +----------------+
   |                |
   v                v
PostgreSQL         Redis
   |                |
   |                v
   |          Worker Pool
   |                |
   |          +-----+-----+
   |          |           |
   |       Success      Failure
   |                      |
   |                   Retry
   |                      |
   |                 Max Retries
   |                      |
   |                     DLQ