# AUTO GENERATED. DO NOT EDIT DIRECTLY.
#
# Generated with https://github.com/tubular/rules_pygen
#
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@rules_python//python:defs.bzl", "py_library")

_BUILD_FILE_CONTENT='''

py_library(
    name = "pkg",
    srcs = glob(["**/*.py"]),
    data = glob(["**/*"], exclude=[
        "**/*.py", "BUILD", "BUILD.bazel", "WORKSPACE", "*.whl.zip", "**/*.ipynb"
    ]),
    imports = ["."],
    visibility = ["//visibility:public"],
)
'''

def pypi_libraries():

    py_library(
        name = "bleach",
        deps = [
            "six",
            "webencodings",
        ] + ["@pypi__bleach_3_0_2//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "boto3",
        deps = [
            "botocore",
            "jmespath",
            "s3transfer",
        ] + ["@pypi__boto3_1_9_136//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "botocore",
        deps = [
            "docutils",
            "jmespath",
            "python_dateutil",
            "urllib3",
        ] + ["@pypi__botocore_1_12_136//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "certifi",
        deps = [
        ] + ["@pypi__certifi_2018_4_16//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "chardet",
        deps = [
        ] + ["@pypi__chardet_3_0_4//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "chevron",
        deps = [
        ] + ["@pypi__chevron_0_13_1//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "click",
        deps = [
        ] + ["@pypi__click_7_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "colorama",
        deps = [
        ] + ["@pypi__colorama_0_4_3//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "decorator",
        deps = [
        ] + ["@pypi__decorator_4_3_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "defusedxml",
        deps = [
        ] + ["@pypi__defusedxml_0_5_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "docutils",
        deps = [
        ] + ["@pypi__docutils_0_14//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "entrypoints",
        deps = [
        ] + ["@pypi__entrypoints_0_2_3//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "enum34",
        deps = [
        ] + ["@pypi__enum34_1_1_6//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "flask",
        deps = [
            "click",
            "itsdangerous",
            "jinja2",
            "werkzeug",
        ] + ["@pypi__flask_1_0_2//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "idna",
        deps = [
        ] + ["@pypi__idna_2_7//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "ipython_genutils",
        deps = [
        ] + ["@pypi__ipython_genutils_0_2_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "itsdangerous",
        deps = [
        ] + ["@pypi__itsdangerous_1_1_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "jinja2",
        deps = [
            "markupsafe",
        ] + ["@pypi__jinja2_2_10_3//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "jmespath",
        deps = [
        ] + ["@pypi__jmespath_0_9_3//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "jsonschema",
        deps = [
        ] + ["@pypi__jsonschema_2_6_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "jupyter_core",
        deps = [
            "traitlets",
        ] + ["@pypi__jupyter_core_4_4_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "markupsafe",
        deps = [
        ] + ["@pypi__markupsafe_1_1_1//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "mistune",
        deps = [
        ] + ["@pypi__mistune_0_8_4//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "nbformat",
        deps = [
            "ipython_genutils",
            "jsonschema",
            "jupyter_core",
            "traitlets",
        ] + ["@pypi__nbformat_4_4_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "numpy",
        deps = [
        ] + ["@pypi__numpy_1_17_4//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "pygments",
        deps = [
        ] + ["@pypi__pygments_2_3_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "python_dateutil",
        deps = [
            "six",
        ] + ["@pypi__python_dateutil_2_7_3//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "pyyaml",
        deps = [
        ] + ["@pypi__pyyaml_3_13//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "requests",
        deps = [
            "certifi",
            "chardet",
            "idna",
            "urllib3",
        ] + ["@pypi__requests_2_20_1//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "s3transfer",
        deps = [
            "botocore",
        ] + ["@pypi__s3transfer_0_2_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "six",
        deps = [
        ] + ["@pypi__six_1_13_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "testpath",
        deps = [
        ] + ["@pypi__testpath_0_4_2//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "traitlets",
        deps = [
            "decorator",
            "ipython_genutils",
            "six",
        ] + ["@pypi__traitlets_4_3_2//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "urllib3",
        deps = [
        ] + ["@pypi__urllib3_1_23//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "webencodings",
        deps = [
        ] + ["@pypi__webencodings_0_5_1//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "websocket_client",
        deps = [
            "six",
        ] + ["@pypi__websocket_client_0_56_0//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "werkzeug",
        deps = [
        ] + ["@pypi__werkzeug_0_15_2//:pkg"],
        visibility=["//visibility:public"],
    )

    py_library(
        name = "whichcraft",
        deps = [
        ] + ["@pypi__whichcraft_0_5_2//:pkg"],
        visibility=["//visibility:public"],
    )



def pypi_archives():
    existing_rules = native.existing_rules()
    if "pypi__bleach_3_0_2" not in existing_rules:
        http_archive(
            name = "pypi__bleach_3_0_2",
            urls = ["https://files.pythonhosted.org/packages/d4/0d/4696373c3b714f6022d668fbab619690a42050dbeacede6d10ed97fbd3e2/bleach-3.0.2-py2.py3-none-any.whl"],
            sha256 = "73d26f018af5d5adcdabf5c1c974add4361a9c76af215fe32fdec8a6fc5fb9b9",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__boto3_1_9_136" not in existing_rules:
        http_archive(
            name = "pypi__boto3_1_9_136",
            urls = ["https://files.pythonhosted.org/packages/62/84/1ee82dc7592b3e0c182f8c9bc5d23eee92e2f8a6788a70208cd9af80753e/boto3-1.9.136-py2.py3-none-any.whl"],
            sha256 = "dc94237a8e9c104c86d77ec9b3ecebd864680b5a4fbd22b28722376111dbec47",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__botocore_1_12_136" not in existing_rules:
        http_archive(
            name = "pypi__botocore_1_12_136",
            urls = ["https://files.pythonhosted.org/packages/f6/b0/7c377b7390c624a7a3284739973329221997441029e8b213237e00b14c5a/botocore-1.12.136-py2.py3-none-any.whl"],
            sha256 = "c24b9c32fdf2643a6cdeca55a43dc57e5b7b92a437d6e092807c9dc3f98c0c78",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__certifi_2018_4_16" not in existing_rules:
        http_archive(
            name = "pypi__certifi_2018_4_16",
            urls = ["https://files.pythonhosted.org/packages/7c/e6/92ad559b7192d846975fc916b65f667c7b8c3a32bea7372340bfe9a15fa5/certifi-2018.4.16-py2.py3-none-any.whl"],
            sha256 = "9fa520c1bacfb634fa7af20a76bcbd3d5fb390481724c597da32c719a7dca4b0",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__chardet_3_0_4" not in existing_rules:
        http_archive(
            name = "pypi__chardet_3_0_4",
            urls = ["https://files.pythonhosted.org/packages/bc/a9/01ffebfb562e4274b6487b4bb1ddec7ca55ec7510b22e4c51f14098443b8/chardet-3.0.4-py2.py3-none-any.whl"],
            sha256 = "fc323ffcaeaed0e0a02bf4d117757b98aed530d9ed4531e3e15460124c106691",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__chevron_0_13_1" not in existing_rules:
        http_archive(
            name = "pypi__chevron_0_13_1",
            urls = ["https://files.pythonhosted.org/packages/a3/1e/6ef58385f54c5bbf70b3b451930015aa2d30b3cd5ae324bba4da77c5b889/chevron-0.13.1-py3-none-any.whl"],
            sha256 = "95b0a055ef0ada5eb061d60be64a7f70670b53372ccd221d1b88adf1c41a9094",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__click_7_0" not in existing_rules:
        http_archive(
            name = "pypi__click_7_0",
            urls = ["https://files.pythonhosted.org/packages/fa/37/45185cb5abbc30d7257104c434fe0b07e5a195a6847506c074527aa599ec/Click-7.0-py2.py3-none-any.whl"],
            sha256 = "2335065e6395b9e67ca716de5f7526736bfa6ceead690adf616d925bdc622b13",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__colorama_0_4_3" not in existing_rules:
        http_archive(
            name = "pypi__colorama_0_4_3",
            urls = ["https://files.pythonhosted.org/packages/c9/dc/45cdef1b4d119eb96316b3117e6d5708a08029992b2fee2c143c7a0a5cc5/colorama-0.4.3-py2.py3-none-any.whl"],
            sha256 = "7d73d2a99753107a36ac6b455ee49046802e59d9d076ef8e47b61499fa29afff",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__decorator_4_3_0" not in existing_rules:
        http_archive(
            name = "pypi__decorator_4_3_0",
            urls = ["https://files.pythonhosted.org/packages/bc/bb/a24838832ba35baf52f32ab1a49b906b5f82fb7c76b2f6a7e35e140bac30/decorator-4.3.0-py2.py3-none-any.whl"],
            sha256 = "2c51dff8ef3c447388fe5e4453d24a2bf128d3a4c32af3fabef1f01c6851ab82",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__defusedxml_0_5_0" not in existing_rules:
        http_archive(
            name = "pypi__defusedxml_0_5_0",
            urls = ["https://files.pythonhosted.org/packages/37/bb/207c1fc22b68ed4e56cea2a042dc0e256128bad5cef25f20b388a4b55061/defusedxml-0.5.0rc1-py2.py3-none-any.whl"],
            sha256 = "3fd7a1d9f30d7b9c3edbc07503c169cc18901060e06568d2d2835866b12927d3",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__docutils_0_14" not in existing_rules:
        http_archive(
            name = "pypi__docutils_0_14",
            urls = ["https://files.pythonhosted.org/packages/36/fa/08e9e6e0e3cbd1d362c3bbee8d01d0aedb2155c4ac112b19ef3cae8eed8d/docutils-0.14-py3-none-any.whl"],
            sha256 = "02aec4bd92ab067f6ff27a38a38a41173bf01bed8f89157768c1573f53e474a6",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__entrypoints_0_2_3" not in existing_rules:
        http_archive(
            name = "pypi__entrypoints_0_2_3",
            urls = ["https://files.pythonhosted.org/packages/cc/8b/4eefa9b47f1910b3d2081da67726b066e379b04ca897acfe9f92bac56147/entrypoints-0.2.3-py2.py3-none-any.whl"],
            sha256 = "10ad569bb245e7e2ba425285b9fa3e8178a0dc92fc53b1e1c553805e15a8825b",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__enum34_1_1_6" not in existing_rules:
        http_archive(
            name = "pypi__enum34_1_1_6",
            urls = ["https://files.pythonhosted.org/packages/af/42/cb9355df32c69b553e72a2e28daee25d1611d2c0d9c272aa1d34204205b2/enum34-1.1.6-py3-none-any.whl"],
            sha256 = "644837f692e5f550741432dd3f223bbb9852018674981b1664e5dc339387588a",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__flask_1_0_2" not in existing_rules:
        http_archive(
            name = "pypi__flask_1_0_2",
            urls = ["https://files.pythonhosted.org/packages/7f/e7/08578774ed4536d3242b14dacb4696386634607af824ea997202cd0edb4b/Flask-1.0.2-py2.py3-none-any.whl"],
            sha256 = "a080b744b7e345ccfcbc77954861cb05b3c63786e93f2b3875e0913d44b43f05",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__idna_2_7" not in existing_rules:
        http_archive(
            name = "pypi__idna_2_7",
            urls = ["https://files.pythonhosted.org/packages/4b/2a/0276479a4b3caeb8a8c1af2f8e4355746a97fab05a372e4a2c6a6b876165/idna-2.7-py2.py3-none-any.whl"],
            sha256 = "156a6814fb5ac1fc6850fb002e0852d56c0c8d2531923a51032d1b70760e186e",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__ipython_genutils_0_2_0" not in existing_rules:
        http_archive(
            name = "pypi__ipython_genutils_0_2_0",
            urls = ["https://files.pythonhosted.org/packages/fa/bc/9bd3b5c2b4774d5f33b2d544f1460be9df7df2fe42f352135381c347c69a/ipython_genutils-0.2.0-py2.py3-none-any.whl"],
            sha256 = "72dd37233799e619666c9f639a9da83c34013a73e8bbc79a7a6348d93c61fab8",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__itsdangerous_1_1_0" not in existing_rules:
        http_archive(
            name = "pypi__itsdangerous_1_1_0",
            urls = ["https://files.pythonhosted.org/packages/76/ae/44b03b253d6fade317f32c24d100b3b35c2239807046a4c953c7b89fa49e/itsdangerous-1.1.0-py2.py3-none-any.whl"],
            sha256 = "b12271b2047cb23eeb98c8b5622e2e5c5e9abd9784a153e9d8ef9cb4dd09d749",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__jinja2_2_10_3" not in existing_rules:
        http_archive(
            name = "pypi__jinja2_2_10_3",
            urls = ["https://files.pythonhosted.org/packages/65/e0/eb35e762802015cab1ccee04e8a277b03f1d8e53da3ec3106882ec42558b/Jinja2-2.10.3-py2.py3-none-any.whl"],
            sha256 = "74320bb91f31270f9551d46522e33af46a80c3d619f4a4bf42b3164d30b5911f",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__jmespath_0_9_3" not in existing_rules:
        http_archive(
            name = "pypi__jmespath_0_9_3",
            urls = ["https://files.pythonhosted.org/packages/b7/31/05c8d001f7f87f0f07289a5fc0fc3832e9a57f2dbd4d3b0fee70e0d51365/jmespath-0.9.3-py2.py3-none-any.whl"],
            sha256 = "f11b4461f425740a1d908e9a3f7365c3d2e569f6ca68a2ff8bc5bcd9676edd63",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__jsonschema_2_6_0" not in existing_rules:
        http_archive(
            name = "pypi__jsonschema_2_6_0",
            urls = ["https://files.pythonhosted.org/packages/77/de/47e35a97b2b05c2fadbec67d44cfcdcd09b8086951b331d82de90d2912da/jsonschema-2.6.0-py2.py3-none-any.whl"],
            sha256 = "000e68abd33c972a5248544925a0cae7d1125f9bf6c58280d37546b946769a08",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__jupyter_core_4_4_0" not in existing_rules:
        http_archive(
            name = "pypi__jupyter_core_4_4_0",
            urls = ["https://files.pythonhosted.org/packages/1d/44/065d2d7bae7bebc06f1dd70d23c36da8c50c0f08b4236716743d706762a8/jupyter_core-4.4.0-py2.py3-none-any.whl"],
            sha256 = "927d713ffa616ea11972534411544589976b2493fc7e09ad946e010aa7eb9970",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__markupsafe_1_1_1" not in existing_rules:
        http_archive(
            name = "pypi__markupsafe_1_1_1",
            urls = ["https://files.pythonhosted.org/packages/5b/d4/1deb3c5dc3714fb160c7e2116fc6dff36a063d9156a9328cce54ef35cc52/MarkupSafe-1.1.1-cp37-cp37m-win32.whl"],
            sha256 = "b00c1de48212e4cc9603895652c5c410df699856a2853135b3967591e4beebc2",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__mistune_0_8_4" not in existing_rules:
        http_archive(
            name = "pypi__mistune_0_8_4",
            urls = ["https://files.pythonhosted.org/packages/09/ec/4b43dae793655b7d8a25f76119624350b4d65eb663459eb9603d7f1f0345/mistune-0.8.4-py2.py3-none-any.whl"],
            sha256 = "88a1051873018da288eee8538d476dffe1262495144b33ecb586c4ab266bb8d4",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__nbformat_4_4_0" not in existing_rules:
        http_archive(
            name = "pypi__nbformat_4_4_0",
            urls = ["https://files.pythonhosted.org/packages/da/27/9a654d2b6cc1eaa517d1c5a4405166c7f6d72f04f6e7eea41855fe808a46/nbformat-4.4.0-py2.py3-none-any.whl"],
            sha256 = "b9a0dbdbd45bb034f4f8893cafd6f652ea08c8c1674ba83f2dc55d3955743b0b",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__numpy_1_17_4" not in existing_rules:
        http_archive(
            name = "pypi__numpy_1_17_4",
            urls = ["https://files.pythonhosted.org/packages/ce/ad/2e88f36b56f64f70c081b32fa5512dacedf12005ccb0c2d300d44dcc1215/numpy-1.17.4-cp37-cp37m-win32.whl"],
            sha256 = "475963c5b9e116c38ad7347e154e5651d05a2286d86455671f5b1eebba5feb76",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__pygments_2_3_0" not in existing_rules:
        http_archive(
            name = "pypi__pygments_2_3_0",
            urls = ["https://files.pythonhosted.org/packages/fc/41/4f900a7852e25bb9350b4e3ee8c4aba0ee32abefd401456962b25f954823/Pygments-2.3.0-py2.py3-none-any.whl"],
            sha256 = "6301ecb0997a52d2d31385e62d0a4a4cf18d2f2da7054a5ddad5c366cd39cee7",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__python_dateutil_2_7_3" not in existing_rules:
        http_archive(
            name = "pypi__python_dateutil_2_7_3",
            urls = ["https://files.pythonhosted.org/packages/cf/f5/af2b09c957ace60dcfac112b669c45c8c97e32f94aa8b56da4c6d1682825/python_dateutil-2.7.3-py2.py3-none-any.whl"],
            sha256 = "1adb80e7a782c12e52ef9a8182bebeb73f1d7e24e374397af06fb4956c8dc5c0",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__pyyaml_3_13" not in existing_rules:
        http_archive(
            name = "pypi__pyyaml_3_13",
            urls = ["https://files.pythonhosted.org/packages/b6/8c/9ab3ebbf80129208ba8dbe21926a584451524aacbaade72be74b87cceb7b/PyYAML-3.13b1-cp37-cp37m-win32.whl"],
            sha256 = "8ebf75f2bab042e58b6aca951cf3631689866f6a3950f0ce36ca684d13093cff",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__requests_2_20_1" not in existing_rules:
        http_archive(
            name = "pypi__requests_2_20_1",
            urls = ["https://files.pythonhosted.org/packages/ff/17/5cbb026005115301a8fb2f9b0e3e8d32313142fe8b617070e7baad20554f/requests-2.20.1-py2.py3-none-any.whl"],
            sha256 = "65b3a120e4329e33c9889db89c80976c5272f56ea92d3e74da8a463992e3ff54",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__s3transfer_0_2_0" not in existing_rules:
        http_archive(
            name = "pypi__s3transfer_0_2_0",
            urls = ["https://files.pythonhosted.org/packages/d7/de/5737f602e22073ecbded7a0c590707085e154e32b68d86545dcc31004c02/s3transfer-0.2.0-py2.py3-none-any.whl"],
            sha256 = "7b9ad3213bff7d357f888e0fab5101b56fa1a0548ee77d121c3a3dbfbef4cb2e",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__six_1_13_0" not in existing_rules:
        http_archive(
            name = "pypi__six_1_13_0",
            urls = ["https://files.pythonhosted.org/packages/65/26/32b8464df2a97e6dd1b656ed26b2c194606c16fe163c695a992b36c11cdf/six-1.13.0-py2.py3-none-any.whl"],
            sha256 = "1f1b7d42e254082a9db6279deae68afb421ceba6158efa6131de7b3003ee93fd",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__testpath_0_4_2" not in existing_rules:
        http_archive(
            name = "pypi__testpath_0_4_2",
            urls = ["https://files.pythonhosted.org/packages/be/a4/162f9ebb6489421fe46dcca2ae420369edfee4b563c668d93cb4605d12ba/testpath-0.4.2-py2.py3-none-any.whl"],
            sha256 = "46c89ebb683f473ffe2aab0ed9f12581d4d078308a3cb3765d79c6b2317b0109",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__traitlets_4_3_2" not in existing_rules:
        http_archive(
            name = "pypi__traitlets_4_3_2",
            urls = ["https://files.pythonhosted.org/packages/93/d6/abcb22de61d78e2fc3959c964628a5771e47e7cc60d53e9342e21ed6cc9a/traitlets-4.3.2-py2.py3-none-any.whl"],
            sha256 = "c6cb5e6f57c5a9bdaa40fa71ce7b4af30298fbab9ece9815b5d995ab6217c7d9",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__urllib3_1_23" not in existing_rules:
        http_archive(
            name = "pypi__urllib3_1_23",
            urls = ["https://files.pythonhosted.org/packages/bd/c9/6fdd990019071a4a32a5e7cb78a1d92c53851ef4f56f62a3486e6a7d8ffb/urllib3-1.23-py2.py3-none-any.whl"],
            sha256 = "b5725a0bd4ba422ab0e66e89e030c806576753ea3ee08554382c14e685d117b5",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__webencodings_0_5_1" not in existing_rules:
        http_archive(
            name = "pypi__webencodings_0_5_1",
            urls = ["https://files.pythonhosted.org/packages/f4/24/2a3e3df732393fed8b3ebf2ec078f05546de641fe1b667ee316ec1dcf3b7/webencodings-0.5.1-py2.py3-none-any.whl"],
            sha256 = "a0af1213f3c2226497a97e2b3aa01a7e4bee4f403f95be16fc9acd2947514a78",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__websocket_client_0_56_0" not in existing_rules:
        http_archive(
            name = "pypi__websocket_client_0_56_0",
            urls = ["https://files.pythonhosted.org/packages/29/19/44753eab1fdb50770ac69605527e8859468f3c0fd7dc5a76dd9c4dbd7906/websocket_client-0.56.0-py2.py3-none-any.whl"],
            sha256 = "1151d5fb3a62dc129164292e1227655e4bbc5dd5340a5165dfae61128ec50aa9",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__werkzeug_0_15_2" not in existing_rules:
        http_archive(
            name = "pypi__werkzeug_0_15_2",
            urls = ["https://files.pythonhosted.org/packages/18/79/84f02539cc181cdbf5ff5a41b9f52cae870b6f632767e43ba6ac70132e92/Werkzeug-0.15.2-py2.py3-none-any.whl"],
            sha256 = "7fad9770a8778f9576693f0cc29c7dcc36964df916b83734f4431c0e612a7fbc",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )

    if "pypi__whichcraft_0_5_2" not in existing_rules:
        http_archive(
            name = "pypi__whichcraft_0_5_2",
            urls = ["https://files.pythonhosted.org/packages/ab/c6/eb4d1dfbb68168bb01c4394420e5e71d5851e64b910838aa0f14ebd5c7a0/whichcraft-0.5.2-py2.py3-none-any.whl"],
            sha256 = "7533870f751901a0ce43c93cc9850186e9eba7fe58c924dfb435968ba9c9fa4e",
            build_file_content = _BUILD_FILE_CONTENT,
            type = "zip",
        )


def requirement(name):
    name_key = name.replace("-", "_").lower()  # allow use of dashes and uppercase
    return "//:{}".format(name_key)
