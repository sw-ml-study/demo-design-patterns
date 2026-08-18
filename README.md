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

The migration will preserve the existing all-23 status while presenting a
short learning path:

1. Strategy, Adapter, Factory, Bridge, and Template Method for substitution;
2. Decorator, Proxy, Command, Visitor, and Builder for executable values;
3. Facade, Chain, Observer, Mediator, State, Memento, Prototype, and Flyweight;
4. closed Composite/Interpreter and the remaining capability gates.

After the corpus lands, run:

```sh
just demos
just tests
just check
```

`just tests` delegates native `.mlpl` suites to `mlplunit`. `just check` also
validates catalogs, canonical formatting, and Web UI compatibility.

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
