def fuzzer_externals():
    if "clang_5_0_0_darwin" not in native.existing_rules():
        native.new_http_archive(
            name = "clang_5_0_0_darwin",
            build_file = "@com_nelhage_fuzzer//:clang.BUILD",
            sha256 = "326be172ccb61210c9ae5dced27204977e249ec6589521cc30f82fd0904b0671",
            strip_prefix = "clang+llvm-5.0.0-x86_64-apple-darwin/",
            type = "tar.xz",
            url = "http://releases.llvm.org/5.0.0/clang+llvm-5.0.0-x86_64-apple-darwin.tar.xz",
        )

    if "clang_5_0_0_linux" not in native.existing_rules():
        native.new_http_archive(
            name = "clang_5_0_0_linux",
            build_file = "@com_nelhage_fuzzer//:clang.BUILD",
            sha256 = "171968549a12d8cf1e308004a1c31450f663359731e1524b952665f80149284b",
            strip_prefix = "clang+llvm-5.0.0-linux-x86_64-ubuntu16.04/",
            type = "tar.xz",
            url = "https://releases.llvm.org/5.0.0/clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz",
        )
    if "clang_compiler_rt" not in native.existing_rules():
        native.new_http_archive(
            name = "clang_compiler_rt",
            build_file = "@com_nelhage_fuzzer//:compiler_rt.BUILD",
            sha256 = "f3a84da598b1b17153b9afcc8ee6376e5d2cc7da728d2f3fda90d98fc93c4bec",
            strip_prefix = "compiler-rt-42df8011b906358522219a262e6fbd2e47e7a3d6/",
            type = "zip",
            url = "https://github.com/llvm-mirror/compiler-rt/archive/42df8011b906358522219a262e6fbd2e47e7a3d6.zip",
        )
