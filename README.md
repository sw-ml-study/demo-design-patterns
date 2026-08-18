# sw-MLPL Design Patterns

Executable, functional interpretations of the Gang of Four design patterns in
[sw-MLPL](https://sw-ml-study.github.io/sw-mlpl/). The lessons emphasize pure
values, composition, explicit state transitions, and effects-as-data rather
than class hierarchies or hidden mutation.

This repository does not claim that every object-oriented pattern maps
perfectly onto the current language. Each lesson is classified as runnable,
constrained, closed/tagged, or feature-gated, with explicit non-claims and
counterexamples where appropriate.

## Start here

The extracted curriculum preserves the all-23 status while presenting this
short learning path:

1. Strategy, Adapter, Factory, Bridge, and Template Method for substitution;
2. Decorator, Proxy, Command, Visitor, and Builder for executable values;
3. Facade, Chain, Observer, Mediator, State, Memento, Prototype, and Flyweight;
4. closed Composite/Interpreter and the remaining capability gates.

Run the complete corpus with:

```sh
just demos
just tests
just check
```

`just tests` delegates all 47 native assertions to `mlplunit`. `just check`
also validates ownership, catalogs, canonical formatting, user-function doc
strings, demo design commentary, links/closeout state, and Web UI compatibility.

Twenty-two patterns have executable evidence in 21 focused demos. Singleton
remains explicitly gated on evaluate-once modules, private construction, and a
stable exported identity/lifecycle contract; see [the complete status
matrix](docs/gof-status.md).

## Repository structure

```text
catalog/   machine-readable demo and test inventories
demos/     problem-solving pattern examples
src/       reusable pure pattern definitions
tests/     mlplunit conformance tests and shell contracts
scripts/   thin validation and runner delegates
docs/      pattern status and acceptance boundaries
web/       optional standalone Web UI demos; include is forbidden here
```

Files under `src/`, `demos/`, and `tests/` may use `include`. Every
`web/*.mlpl` file must be self-contained because the sw-MLPL Web UI
Editor → Load → Run workflow does not support `include`.

## Related repositories

- [`demo-algorithms`](https://github.com/sw-ml-study/demo-algorithms) owns
  algorithm curricula.
- [`demo-data-structures`](https://github.com/sw-ml-study/demo-data-structures)
  owns reusable container and indexed-structure curricula.
- [`demo-memory`](https://github.com/sw-ml-study/demo-memory) owns advanced
  memory-behavior experiments.

Development uses the tracked AgentRail saga. Agents must read `AGENTS.md` or
`CLAUDE.md` and follow `agentrail next`, `begin`, work, test, commit, and
`complete` in order.
