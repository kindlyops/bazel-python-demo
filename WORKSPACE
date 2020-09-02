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

# grabbing version that allows configurable repo-prefix 
# https://github.com/ali5h/rules_pip/pull/39
http_archive(
    name = "com_github_ali5h_rules_pip",
    sha256 = "8d0148aa1df8196e4222549b47ad7af93e812aaf5b9e8cc6af8987caf614cac8",
    strip_prefix = "rules_pip-34c407a2e791a5b6a99fd685d233e94a891a2f61",
    urls = ["https://github.com/ali5h/rules_pip/archive/34c407a2e791a5b6a99fd685d233e94a891a2f61.tar.gz"],
)

git_repository(
    name = "rules_python",
    remote = "https://github.com/bazelbuild/rules_python.git",
    commit = "06672cd470ce513a256c7ef2dbb8497a0f5502f3",
)

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()

# load("@rules_python//python:pip.bzl", "pip_repositories", "pip_import")
# pip_repositories()

load("@com_github_ali5h_rules_pip//:defs.bzl", "pip_import")



pip_import(
    name = "container_pip_deps",
    requirements = "//:requirements.txt",
    timeout = 1200,
    python_interpreter="python3",
    # set compile to false only if requirements files is already compiled
    compile = False,
    repo_prefix = "containerpypi",
)

pip_import(
    name = "default_pip_deps",
    requirements = "//:requirements.txt",
    timeout = 1200,
    python_runtime = "@python_interpreter//:python_bin",
    # set compile to false only if requirements files is already compiled
    compile = False,
    repo_prefix = "defaultpypi",
)

load("@container_pip_deps//:requirements.bzl", container_pip_install = "pip_install")
load("@default_pip_deps//:requirements.bzl", default_pip_install = "pip_install")

# uncomment this version to be able to run `bazel run :dbt` and have the script
# work inside the linux docker image
container_pip_install([
    "--only-binary=:all",
    "--python-version=3.7",
    "--platform=manylinux1_x86_64",
])

# this version to be able to run `bazel run :demo` on macos
default_pip_install([
    "--only-binary=:all",
    "--python-version=3.8",
])

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