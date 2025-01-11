# rb-mrml - Ruby bindings to MRML

Ruby bindings to [MRML][], a reimplementation of the [MJML][] markup language in Rust.

[![Build Status](https://github.com/mudge/rb-mrml/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/mudge/rb-mrml/actions)

**Current version:** 0.1.0  
**Bundled MRML version:** 4.0.1

```ruby
MRML.to_html("<mjml><mj-body></mj-body></mjml>")
#=> "<!doctype html>..."
```

## Requirements

This gem requires the following to run:

* [Ruby](https://www.ruby-lang.org/en/) 2.7 to 3.4

### Native gems

Where possible, a pre-compiled native gem will be provided for the following platforms:

* Linux
    * `aarch64-linux`, `arm-linux`, `x86-linux`, `x86_64-linux`
    * `aarch64-linux-musl`, `x86_64-linux-musl` for [musl](https://musl.libc.org/)-based systems such as [Alpine](https://alpinelinux.org)
* macOS `x86_64-darwin` and `arm64-darwin`
* Windows `x64-mingw32` and `x64-mingw-ucrt`

### Verifying the gems

SHA256 checksums are included in the [release
notes](https://github.com/mudge/rb-mrml/releases) for each version and can be
checked with `sha256sum`, e.g.

```console
$ gem fetch rb-mrml -v 0.1.0
Fetching rb-mrml-0.1.0-arm64-darwin.gem
Downloaded rb-mrml-0.1.0-arm64-darwin
$ sha256sum rb-mrml-0.1.0-arm64-darwin.gem
653c81b9fa347aa2ccbc360833b8de46de9ee04037c936ac67841f8edb14547b  rb-mrml-0.1.0-arm64-darwin.gem
```

[GPG](https://www.gnupg.org/) signatures are attached to each release (the
assets ending in `.sig`) and can be verified if you import [our signing key
`0x39AC3530070E0F75`](https://mudge.name/39AC3530070E0F75.asc) (or fetch it
from a public keyserver, e.g. `gpg --keyserver keyserver.ubuntu.com --recv-key
0x39AC3530070E0F75`):

```console
$ gpg --verify rb-mrml-0.1.0-arm64-darwin.gem.sig rb-mrml-0.1.0-arm64-darwin.gem
gpg: Signature made Fri  8 Nov 13:45:18 2024 GMT
gpg:                using RSA key 702609D9C790F45B577D7BEC39AC3530070E0F75
gpg: Good signature from "Paul Mucur <mudge@mudge.name>" [unknown]
gpg:                 aka "Paul Mucur <paul@ghostcassette.com>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 7026 09D9 C790 F45B 577D  7BEC 39AC 3530 070E 0F75
```

The fingerprint should be as shown above or you can independently verify it
with the ones shown in the footer of https://mudge.name.

### Installing the `ruby` platform gem

> [!WARNING]
> We strongly recommend using the native gems where possible to avoid the need
> for compiling the Rust extension and its dependencies which will take longer
> and be less reliable.

If you wish to compile the gem, you will need to explicitly install the `ruby` platform gem:

```ruby
# In your Gemfile with Bundler 2.3.18+
gem "rb-mrml", force_ruby_platform: true

# With Bundler 2.1+
bundle config set force_ruby_platform true

# With older versions of Bundler
bundle config force_ruby_platform true

# Without Bundler
gem install rb-mrml --platform=ruby
```

You will need a full compiler toolchain for compiling Ruby Rust extensions (see
[rb-sys's "What dependencies do I need to build a Ruby extension in
Rust?"](https://github.com/oxidize-rb/rb-sys?tab=readme-ov-file#what-dependencies-do-i-need-to-build-a-ruby-extension-in-rust)).

## Thanks

* Thanks to [Bytecode Alliance's `wastime-rb`](https://github.com/bytecodealliance/wasmtime-rb/tree/main) as an example of a Ruby Rust extension
* Thanks to [Jonian Guveli's "MRML Ruby"](https://github.com/hardpixel/mrml-ruby) as another implementation of Ruby bindings to MRML for older versions of Ruby

## Contact

All issues and suggestions should go to [GitHub
Issues](https://github.com/mudge/rb-mrml/issues).

## License

This library is licensed under the BSD 3-Clause License, see `LICENSE`.

Copyright © 2025, Paul Mucur.

  [MRML]: https://github.com/jdrouet/mrml/tree/main
  [MJML]: https://documentation.mjml.io/
