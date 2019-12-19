## updating python deps

    bazel run @rules_pygen//:generator -- $(pwd)/requirements.txt $(pwd)/requirements.bzl //3rdparty/python --python=37

## limitations

This requires python wheels. If you need to use a package which has not
published wheels, you must create a private PyPI repo and publish the missing
wheels. For example, nbconvert depends on pandocfilters, which has not yet
published wheels: https://github.com/jgm/pandocfilters/issues/80
