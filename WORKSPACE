workspace(name = "com_nelhage_fuzzer")

new_http_archive(
    name = "clang_5_0_0_darwin",
    build_file = "//:clang.BUILD",
    sha256 = "326be172ccb61210c9ae5dced27204977e249ec6589521cc30f82fd0904b0671",
    strip_prefix = "clang+llvm-5.0.0-x86_64-apple-darwin/",
    type = "tar.xz",
    url = "http://releases.llvm.org/5.0.0/clang+llvm-5.0.0-x86_64-apple-darwin.tar.xz",
)

new_http_archive(
    name = "clang_5_0_0_linux",
    build_file = "//:clang.BUILD",
    sha256 = "171968549a12d8cf1e308004a1c31450f663359731e1524b952665f80149284b",
    strip_prefix = "clang+llvm-5.0.0-linux-x86_64-ubuntu16.04/",
    type = "tar.xz",
    url = "https://releases.llvm.org/5.0.0/clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz",
)

# new_local_repository(
#     name = "clang_5_0_0_linux",
#     build_file = "//:clang.BUILD",
#     path = "/home/nelhage/sw/clang+llvm-5.0.0-linux-x86_64-ubuntu16.04/",
# )
