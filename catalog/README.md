# Demo catalog

`demos.tsv` inventories pattern mini-apps and `tests.tsv` inventories their
mlplunit conformance files. Both use the shared nine-column schema: `id`,
`path`, `data_structure`, `algorithm`, `dynamic_size`, `explicit_loops`,
`target_loops`, `required_features`, and `status`.

Runnable and constrained rows must name existing `.mlpl` files. Gated rows may
name planned paths. IDs and paths are unique within each catalog.
