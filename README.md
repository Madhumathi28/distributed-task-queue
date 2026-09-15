# Distributed Task Queue Engine

A production-grade distributed task queue built from scratch using Go,
Redis, and PostgreSQL.

## Project Goal

Build a reliable asynchronous job processing system with:

- Priority queues
- Delayed jobs
- Scheduled jobs
- Configurable worker pools
- Per-queue concurrency limits
- Retry with exponential backoff
- Per-job retry budgets
- Dead-letter queue
- Manual DLQ retry
- At-least-once delivery
- Worker crash recovery
- Prometheus metrics
- Grafana dashboard
- k6 load testing

## Technology Stack

- Go
- Redis
- PostgreSQL
- Docker
- Prometheus
- Grafana
- k6