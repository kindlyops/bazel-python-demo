workspace(name = "com_kindlyops_bazel_python_demo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_github_ali5h_rules_pip",
    sha256 = "c8c11f219642ab94cb3f4a5ff25aadda6fb6dcb0c77329021e843a7e7ba294d1",
    strip_prefix = "rules_pip-2.1.0",
    urls = ["https://github.com/ali5h/rules_pip/archive/2.1.0.tar.gz"],
)

load("@com_github_ali5h_rules_pip//:defs.bzl", "pip_import")

pip_import(
    name = "pip_deps",
    # set compile to false only if requirements files is already compiled
    compile = False,
    # default value is "python"
    python_interpreter = "python3.7",
    requirements = "//:requirements.txt",
)

load("@pip_deps//:requirements.bzl", "pip_install")

pip_install([
    "--only-binary",
    ":all",
    "--platform",
    "manylinux1_x86_64",
])

#load("@com_github_ali5h_rules_pip//third_party/cpython:configure.bzl", "python_configure")
# python_configure(
#     name = "cpython37",
#     interpreter = "python3.7",
# )

# Download the rules_docker repository at release v0.14.1
http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "dc97fccceacd4c6be14e800b2a00693d5e8d07f69ee187babfd04a80a9f8e250",
    strip_prefix = "rules_docker-0.14.1",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.14.1/rules_docker-v0.14.1.tar.gz"],
)

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
)

container_pull(
    name = "py3_image_base",
    digest = "sha256:d5a717649fd93ea5b9c430d7f84e4c37ba219eb53bd73ed1d4a5a98e9edd84a7",
    registry = "gcr.io",
    repository = "distroless/python3-debian10",
)

container_pull(
    name = "py3_image_debug_base",
    digest = "sha256:116673d45797e5a328ffc1e2c8aa99a372f65f431bc9dc43326af688acae5559",
    registry = "gcr.io",
    repository = "distroless/python3-debian10",
)
# gcr.io/distroless/python3@sha256:bb006471a533e2b3336c7f26cb578514f1d732a8fd6836c1fa8279abb7a5007c

container_pull(
    name = "python3_slim_base",
    digest = "sha256:994806eb256bc1554ca381cf52c0ba5612192f42b7f93a93e91f9fdb6078ec52",
    registry = "index.docker.io",
    repository = "python",
    tag = "3.7.7-slim-buster",
)

load(
    "@io_bazel_rules_docker//python3:image.bzl",
    _py_image_repos = "repositories",
)

_py_image_repos()

load("@com_github_ali5h_rules_pip//third_party/cpython:configure.bzl", "python_configure")

python_configure(
    name = "cpython37",
    interpreter = "python3.7",
)

# added at the end to not override rules_docker
register_toolchains(
    "@//:toolchain",
)
