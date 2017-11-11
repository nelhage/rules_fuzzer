cc_binary(
    name = "main",
    srcs = ["main.cc"],
)

cc_binary(
    name = "fuzzer",
    srcs = ["fuzz_target.cc"],
    deps = [
        "@clang_compiler_rt//:fuzzer",
    ],
)
