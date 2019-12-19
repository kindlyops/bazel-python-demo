workspace(name = "com_kindlyops_bazel_python_demo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "4e1cddcb58e973732547a23330964377ff1c37eda9980c149d0727960b09caea",
    strip_prefix = "rules_go-0.19.4",
    urls = ["https://github.com/bazelbuild/rules_go/archive/0.19.4.tar.gz"],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(
    go_version = "1.12.9",
)

# to easily generate the http_archive with sha use a command like
# bzl use bazelbuild/bazel-gazelle 0.18.2
http_archive(
    name = "bazel_gazelle",
    sha256 = "6bf18fbc02f7e999335f38933b4eeb292853b516fbc3ed64be837063f0c412a0",
    strip_prefix = "bazel-gazelle-0.18.2",
    urls = ["https://github.com/bazelbuild/bazel-gazelle/archive/0.18.2.tar.gz"],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

gazelle_dependencies()

buildtools_version = "0.28.0"

http_archive(
    name = "io_bazel_buildtools",
    sha256 = "5ec71602e9b458b01717fab1d37492154c1c12ea83f881c745dbd88e9b2098d8",
    strip_prefix = "buildtools-{0}".format(buildtools_version),
    urls = ["https://github.com/bazelbuild/buildtools/archive/{0}.tar.gz".format(buildtools_version)],
)

# rules_manifest
http_archive(
    name = "com_kindlyops_rules_manifest",
    sha256 = "476f374a5b125032ffdeca8541302fc87fb37207bba4792c4f4baa1e19ee5222",
    strip_prefix = "rules_manifest-0.2.1",
    urls = ["https://github.com/kindlyops/rules_manifest/archive/v0.2.1.tar.gz"],
)

# Download the rules_docker repository at release v0.13.0
http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "df13123c44b4a4ff2c2f337b906763879d94871d16411bf82dcfeba892b58607",
    strip_prefix = "rules_docker-0.13.0",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.13.0/rules_docker-v0.13.0.tar.gz"],
)

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load(
    "@io_bazel_rules_docker//go:image.bzl",
    docker_go_image_repos = "repositories",
)

docker_go_image_repos()

load(
    "@io_bazel_rules_docker//python3:image.bzl",
    docker_python_image_repos = "repositories",
)

docker_python_image_repos()

go_repository(
    name = "com_github_containous_whoami",
    importpath = "github.com/containous/whoami",
    patch_args = ["-p1"],
    patches = ["//:BUILD.patch"],
    sum = "h1:67C6ZyBsINZJW5OC00Z5aX2caOC1++UuHdoHz4wb9dw=",
    version = "v1.4.0",
)

# TODO: get rid of these go_repositories and use vendor mode
go_repository(
    name = "com_github_aws_aws_lambda_go",
    importpath = "github.com/aws/aws-lambda-go",
    sum = "h1:8lYuRVn6rESoUNZXdbCmtGB4bBk4vcVYojiHjE4mMrM=",
    version = "v1.13.2",
)

go_repository(
    name = "com_github_aws_aws_sdk_go",
    importpath = "github.com/aws/aws-sdk-go",
    sum = "h1:y13oPwCkhayDvc1GyKCSUUWC2vIv1FOCqPc4nwPEXH0=",
    version = "v1.25.2",
)

go_repository(
    name = "com_github_google_go_github",
    importpath = "github.com/google/go-github",
    sum = "h1:N0LgJ1j65A7kfXrZnUDaYCs/Sf4rEjNlfyDHW9dolSY=",
    version = "v17.0.0+incompatible",
)

go_repository(
    name = "com_github_jmespath_go_jmespath",
    importpath = "github.com/jmespath/go-jmespath",
    sum = "h1:pmfjZENx5imkbgOkpRUYLnmbU7UEFbjtDA2hxJ1ichM=",
    version = "v0.0.0-20180206201540-c2b33e8439af",
)

go_repository(
    name = "com_github_gorilla_websocket",
    importpath = "github.com/gorilla/websocket",
    sum = "h1:q7AeDBpnBk8AogcD4DSag/Ukw/KV+YhzLj2bP5HvKCM=",
    version = "v1.4.1",
)

### rules_pygen https://github.com/tubular/rules_pygen
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "rules_python",
    commit = "38f86fb55b698c51e8510c807489c9f4e047480e",  # (2019-08-02 or later)
    remote = "https://github.com/bazelbuild/rules_python.git",
)

git_repository(
    name = "rules_pygen",
    commit = "e7319246526387c44b6dffd6a1b279b42edda8a2",
    remote = "https://github.com/tubular/rules_pygen.git",
)

load("@//:requirements.bzl", "pypi_libraries", pypi_deps = "pypi_archives")

pypi_deps()
