# cargo-ffi-test

A simple example of a cargo library project that embeds the library  of another cargo crate (in this case, `pact_ffi`).

One can rename the library crate in the `Cargo.toml` file to the desired name via the key `lib.name` which overides `package.name`.