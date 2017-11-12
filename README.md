# `rules_fuzzer` -- bazel + libfuzzer

This repository contains rules for using [libfuzzer][libfuzzer] with
bazel projects.

In addition to rules to download+build libfuzzer, it includes rules
and a [CROSSTOOL][crosstool] to download+configure clang 5.0.0 for
your build, along with the correct compiler flags.

To use:

- Add this repository as a bazel external
- In your `WORKSPACE`, load and call `fuzzer_externals`:

    load("@com_nelhage_fuzzer//:fuzzer.bzl", "fuzzer_externals")
    fuzzer_externals()

- Define your fuzz target as a `cc_binary` with
  `@clang_compiler_rt//:fuzzer` in `deps`. This target will define a
  `main` method.

- Build using the included `clang`, via
  `--crosstool_top=//tools/clang:toolchain`, and enabling the fuzzer
  instrumentation with `--features=fuzzer`.

  You can optionally also enable the [clang sanitizers][sanitizers],
  via `--features=asan`, `--features=leaksan`, and
  `--features=ubsan`. The sanitizers may be combined in a single
  build.

[libfuzzer]: https://llvm.org/docs/LibFuzzer.html
[crosstool]: https://github.com/bazelbuild/bazel/wiki/About-the-CROSSTOOL
[sanitizers]: https://clang.llvm.org/docs/UsersManual.html#controlling-code-generation
