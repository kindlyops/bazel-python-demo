# updating python deps

You need the pip-compile command from the pip-tools package, update requirements.in
then run pip-compile as shown in the comments at the top of requirements.txt.

# running the docker image locally

    bazel run //:dbt

    # take a look at the configured docker image entrypoints and metadata
    docker inspect bazel:dbt
