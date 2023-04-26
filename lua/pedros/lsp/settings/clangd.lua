return {
    cmd = {
        "clangd",
    },
    root_dir = {
        root_pattern(
            ".clangd",
            ".ccls",
            ".clang-tidy",
            ".clang-format",
            "compile_commands.json",
            "compile_flags.txt",
            "configure.ac",
            ".git"
        ),
    },
}
