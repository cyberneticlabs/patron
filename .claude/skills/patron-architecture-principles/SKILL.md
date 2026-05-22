---
name: patron-architecture-principles
description: >
  Encodes the 8 core architecture principles for the Patron AI platform. Use this skill
  whenever the user asks about Patron's design philosophy, architecture decisions, how a
  new feature should be built, whether a proposed design is consistent with Patron's
  principles, or when writing any technical documentation, ADRs (Architecture Decision
  Records), RFCs, onboarding material, or roadmap content for Patron. Also trigger when
  evaluating tradeoffs between implementation options — use these principles as the
  decision framework. If the user mentions "Patron principles", "our architecture", "does
  this fit Patron", or "how should we build X in Patron", always load this skill first.
---

# Patron Architecture Principles

These 8 principles are the foundation of every design and implementation decision on the
Patron platform. When evaluating a new feature, integration, or architectural tradeoff,
check it against these principles in order. A decision that violates one must be
explicitly justified — it should not pass silently.

---

## 1. Extensibility — Open Plugin System

The platform grows through an open plugin system. Model adapters, memory layers, sandbox
runtimes, tool integrations, and agent behaviours are all pluggable via a published plugin
interface. No component is a dead end. Third parties, partners, and the community can
extend any layer without touching the core. Certified plugins are discoverable through the
marketplace.

**Design test:** Can a third party add this capability without a core code change?

---

## 2. Agility — Reconfigure Without Re-architecture

Infrastructure and configuration change without re-architecture. Docker Compose today,
Kubernetes tomorrow — identical behaviour. Model swaps, routing rules, and agent
topologies are reconfigured through the web UI without redeployment or code changes.

**Design test:** Can the operator change this without touching a config file or
redeploying?

---

## 3. Security — Isolation is Structural, Not Additive

Every sub-agent executes in a sandboxed microVM (E2B). Secrets are encrypted at rest and
never surface to agent context. RBAC, audit trails, and data sovereignty controls are
first-class platform concerns, not bolt-ons. Security is never retrofitted — it is
designed in at the architectural layer.

**Design test:** If this component is compromised, is the blast radius contained?

---

## 4. Autonomy — The Platform Operates Itself

Self-healing, self-configuring, and self-monitoring — the system detects failure, restarts
agents, re-provisions resources, and reconfigures topology without human intervention.
Operator burden after initial deploy is near zero.

**Design test:** Does this require ongoing human attention to stay healthy?

---

## 5. Portability — No Runtime Lock-in

The platform runs on any infrastructure — local, cloud, or air-gapped on-premise — using
open standards. No proprietary vendor dependency in the critical path. Phase 2 adds
CubeSandbox for full on-premise data sovereignty.

**Design test:** Can this be moved to a different cloud or run fully on-premise without
re-engineering?

---

## 6. Intelligence Accumulation — Knowledge Compounds

SynkVault's ontology-driven memory means each agent task enriches a shared knowledge
graph. Unlike vector-only retrieval, agents reason over structured relationships. The
platform gets smarter with use, not just faster. Cross-agent knowledge sharing is a
first-class capability.

**Design test:** Does this feature leave the platform more capable after it runs than
before?

---

## 7. Accessibility — Zero-CLI Operations

Every operational task — from first launch to fleet management — is handled through the
browser. No CLI required for any day-to-day operation. The operational skill floor is low
enough for engineering teams without DevOps expertise.

**Design test:** Can a non-DevOps engineer perform this task entirely through the web UI?

---

## 8. Progressive Complexity — Zero Config Day One, Full Depth Always Available

Sensible defaults mean a non-technical user can deploy working agents immediately. Every
default is also an override. Advanced users are never blocked by a simplified surface —
the architecture exposes full control when they're ready for it. Smart defaults live in
the platform layer, not just the UI. This requires architectural decisions (safe defaults,
layered APIs, schema-backed config) not just UX decisions.

**Design test:** Does this work out of the box for a new user, and can a power user
reconfigure every aspect of it?

---

## Applying the Principles

When evaluating any design decision, RFC, or implementation option against these
principles:

1. State which principles are in tension (if any)
2. Identify which principle takes precedence in this context and why
3. Document the tradeoff explicitly — do not silently violate a principle

### Priority order for conflicts

When principles conflict, use this ordering as a tiebreaker:

1. Security
2. Portability
3. Extensibility
4. Progressive Complexity
5. Accessibility
6. Agility
7. Autonomy
8. Intelligence Accumulation

This ordering does not mean lower-ranked principles are unimportant — it means that in a
direct conflict, the higher-ranked principle wins unless a compelling case is documented.

---

## Quick Reference

| # | Principle | One-line summary |
|---|-----------|-----------------|
| 1 | Extensibility | Open plugin system — extend any layer without touching the core |
| 2 | Agility | Reconfigure infrastructure and models without re-architecture |
| 3 | Security | Isolation is structural — sandboxed, encrypted, RBAC by default |
| 4 | Autonomy | Self-healing and self-configuring — near-zero operator burden |
| 5 | Portability | Runs anywhere — no cloud vendor lock-in, full on-premise option |
| 6 | Intelligence Accumulation | Knowledge graph compounds across agents and over time |
| 7 | Accessibility | Zero-CLI — every operation through the browser |
| 8 | Progressive Complexity | Zero config day one, unlimited depth for advanced users |
