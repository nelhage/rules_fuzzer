package(default_visibility = ["//tools/cpp/fuzzer:__pkg__"])

filegroup(
    name = "clang",
    srcs = [
        "shim-clang",
        "@clang_5_0_0_linux//:bin/clang",
    ],
)

filegroup(
    name = "clang-cpp",
    srcs = [
        "shim-clang-cpp",
        "@clang_5_0_0_linux//:bin/clang-cpp",
    ],
)

filegroup(
    name = "wrappers",
    srcs = [
        ":clang",
        ":clang-cpp",
    ],
)
