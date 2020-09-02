workspace(name = "com_kindlyops_bazel_python_demo")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# https://github.com/kku1993/bazel-hermetic-python/blob/master/WORKSPACE
# Special logic for building python interpreter with OpenSSL from homebrew.
# See https://devguide.python.org/setup/#macos-and-os-x
_py_configure = """
if [[ "$OSTYPE" == "darwin"* ]]; then
    ./configure --prefix=$(pwd)/bazel_install --with-openssl=$(brew --prefix openssl)
else
    ./configure --prefix=$(pwd)/bazel_install
fi
"""

http_archive(
    name = "python_interpreter",
    urls = ["https://www.python.org/ftp/python/3.8.3/Python-3.8.3.tar.xz"],
    sha256 = "dfab5ec723c218082fe3d5d7ae17ecbdebffa9a1aea4d64aa3a2ecdd2e795864",
    strip_prefix = "Python-3.8.3",
    patch_cmds = [
        "mkdir $(pwd)/bazel_install",
        _py_configure,
        "make",
        "make install",
        "ln -s bazel_install/bin/python3 python_bin",
    ],
    build_file_content = """
exports_files(["python_bin"])
filegroup(
    name = "files",
    srcs = glob(["bazel_install/**"], exclude = ["**/* *"]),
    visibility = ["//visibility:public"],
)
""",
)

git_repository(
    name = "rules_python",
    remote = "https://github.com/bazelbuild/rules_python.git",
    commit = "06672cd470ce513a256c7ef2dbb8497a0f5502f3",
)

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()

load("@rules_python//python:pip.bzl", "pip_repositories", "pip_import")

pip_repositories()

pip_import(
    name = "py_deps",
    requirements = "//:requirements.txt",
    python_interpreter_target = "@python_interpreter//:python_bin",
)

load("@py_deps//:requirements.bzl", "pip_install")

pip_install()

# Download the rules_docker repository at release v0.14.3
http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "6287241e033d247e9da5ff705dd6ef526bac39ae82f3d17de1b69f8cb313f9cd",
    strip_prefix = "rules_docker-0.14.3",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.14.3/rules_docker-v0.14.3.tar.gz"],
)

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)
container_repositories()

load("@io_bazel_rules_docker//container:container.bzl", "container_pull")

# Python image version must match the python interpreter version in
# @python_interpreter http_archive in order for dependencies imported by
# pip_import to have the right version.
container_pull(
    name = "python3.8.3_slim_buster",
    registry = "docker.io",
    repository = "library/python",
    digest = "sha256:bad43dc620ed7f3bc085782b63c6cc0f307819af41b0ebfecb8457c82abc7f99",  # 3.8.3-slim-buster
)

load(
    "@io_bazel_rules_docker//python3:image.bzl",
    _py_image_repos = "repositories",
)

_py_image_repos()

# custom python toolchain must be registered at the end in order for python
# container images built with @python3.8.3_slim_buster as the base to use the
# "host" toolchain rather than the one with our locally compiled interpreter.
# See:
# https://docs.bazel.build/versions/master/toolchains.html#toolchain-resolution
register_toolchains("//:my_py_toolchain")