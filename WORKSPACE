workspace(name = "com_kindlyops_bazel_python_demo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# http_archive(
#     name = "com_github_ali5h_rules_pip",
#     strip_prefix = "rules_pip-3.0.0",
#     sha256 = "630a7cab43a87927353efca116d20201df88fb443962bf01c7383245c7f3a623",
#     urls = ["https://github.com/ali5h/rules_pip/archive/3.0.0.tar.gz"],
# )

# grabbing version that allows configurable repo-prefix 
# https://github.com/ali5h/rules_pip/pull/39
http_archive(
    name = "com_github_ali5h_rules_pip",
    sha256 = "8d0148aa1df8196e4222549b47ad7af93e812aaf5b9e8cc6af8987caf614cac8",
    strip_prefix = "rules_pip-34c407a2e791a5b6a99fd685d233e94a891a2f61",
    urls = ["https://github.com/ali5h/rules_pip/archive/34c407a2e791a5b6a99fd685d233e94a891a2f61.tar.gz"],
)

load("@com_github_ali5h_rules_pip//third_party/cpython:configure.bzl", "python_configure")
python_configure(
    name = "cpython37",
    interpreter = "python3.7",
)

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
    python_interpreter="python3",
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

container_pull(
    name = "py3_image_base",
    digest = "sha256:d5a717649fd93ea5b9c430d7f84e4c37ba219eb53bd73ed1d4a5a98e9edd84a7",
    registry = "gcr.io",
    repository = "distroless/python3-debian10",
    tag = "latest",
)

# container_pull(
#     name = "py3_image_base",
#     digest = "sha256:06eebac4816c6925def80c34e166cad58590b57ba4500f1c949d10ca3e3528ed",
#     registry = "index.docker.io",
#     repository = "python:3.8-slim-buster",
#     tag = "latest",
# )

# container_pull(
#     name = "py3_debug_image_base",
#     digest = "sha256:1263e44463749a43b0fdb41472b2fedf22a433b994be65af06266422096de2b7",
#     registry = "gcr.io",
#     repository = "distroless/python3-debian10",
#     tag = "debug",
# )

load(
    "@io_bazel_rules_docker//python3:image.bzl",
    _py_image_repos = "repositories",
)

_py_image_repos()