# ADR 0001: Use Go

## Status

Accepted

## Context

The Task Queue requires concurrent workers,
backend APIs, distributed processing and
infrastructure-oriented development.

## Decision

We will implement the system using Go.

## Consequences

The team needs to understand:

- Goroutines
- Channels
- Context
- Synchronization
- Error handling
- Testing
- HTTP services