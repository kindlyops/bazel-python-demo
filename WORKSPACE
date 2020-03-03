workspace(name = "com_kindlyops_bazel_python_demo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_github_ali5h_rules_pip",
    urls = ["https://github.com/ali5h/rules_pip/archive/2.0.1.tar.gz"],
    strip_prefix = "rules_pip-2.0.1",
    sha256 = "befa5df35a7cd6e8f230e50f66128b468b0d7fdd9d960090701efc40c349b42e",
)

load("@com_github_ali5h_rules_pip//:defs.bzl", "pip_import")

pip_import(
   name = "pip_deps",
   requirements = "//:requirements.txt",

   # default value is "python"
   python_interpreter="python3.7",

   # set compile to false only if requirements files is already compiled
   compile = False
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
    digest = "sha256:f97bd0f617c97a06975dee48b38ce4ee91cf9348f33096cedab1e169eea98cde",
    registry = "gcr.io",
    repository = "distroless/python3-debian10",
)

load(
    "@io_bazel_rules_docker//python3:image.bzl",
    _py_image_repos = "repositories",
)

_py_image_repos()