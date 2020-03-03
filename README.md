# updating python deps

You need the pip-compile command from the pip-tools package, update requirements.in
then run pip-compile as shown in the comments at the top of requirements.txt.

# running the docker image locally



    # see https://github.com/bazelbuild/rules_docker#debugging-lang_image-rules
    # the -c dbg says to use the distroless container with extra debugging support
    # the --norun flag says to not invoke docker run
    # this command will take the generated docker tar layer and import it to
    # the local docker daemon so we can work with the image.
    bazel run -c dbg //:ddemo -- --norun

    # take a look at the configured docker image entrypoints and metadata
    docker inspect bazel:ddemo

    # look around inside the image with a shell
    docker run -ti --rm --entrypoint=sh bazel:ddemo