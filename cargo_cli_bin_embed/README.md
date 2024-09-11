# cargo_cli_bin_embed

Showing modification of a cargo binary project to embed the library of another cargo crate normally exposed on its own as a binary (in this case, `pact_verifier_cli`) to build composable CLI tools in a single binary.

1. Migration of the `pact_verifier_cli` crate to a library crate.
   1. Rename `main.rs` to `lib.rs`.
   2. export the `main` function as a public function.
   3. Create a new `main.rs` file that calls the exported function.
2. Update the `Cargo.toml` of new library crate to consume the `pact_verifier_cli` crate you modified
3. Consume the new library crate in the `main.rs` of the new binary crate.
4. Repeat for other crates as needed.
   1. pact_mock_server_cli
   2. pact-plugin-cli
   3. pact-stub-server