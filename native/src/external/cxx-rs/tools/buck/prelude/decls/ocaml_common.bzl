# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is licensed under both the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree and the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree.

# TODO(cjhopman): This was generated by scripts/hacks/rules_shim_with_docs.py,
# but should be manually edited going forward. There may be some errors in
# the generated docs, and so those should be verified to be accurate and
# well-formatted (and then delete this TODO)

def _deps_arg():
    return {
        "deps": attrs.list(attrs.dep(), default = [], doc = """
    The set of dependencies of this rule. It could include references to ocaml\\_library and cxx\\_library rules.
"""),
    }

def _srcs_arg():
    return {
        "srcs": attrs.option(attrs.named_set(attrs.source(), sorted = False), default = None, doc = """
    The set of source files to be compiled by this rule. It supports \\*.ml, \\*.mli, \\*.mly, \\*.mll, and \\*.c files.
     (see  [this test](https://github.com/facebook/buck/tree/dev/test/com/facebook/buck/features/ocaml/testdata/ocaml/clib/BUCK.fixture)  as C interop example and
      [this test](https://github.com/facebook/buck/tree/dev/test/com/facebook/buck/features/ocaml/testdata/ocaml/calc/BUCK.fixture)  as parser and lexer example).
"""),
    }

def _compiler_flags_arg():
    return {
        "compiler_flags": attrs.list(attrs.arg(), default = [], doc = """
    The set of additional compiler flags to pass to ocaml compiler. It supports
     specifying ppx (see [for example](https://github.com/facebook/buck/tree/dev/test/com/facebook/buck/features/ocaml/testdata/compiler_flag_macros/BUCK.fixture)).
"""),
    }

ocaml_common = struct(
    deps_arg = _deps_arg,
    srcs_arg = _srcs_arg,
    compiler_flags_arg = _compiler_flags_arg,
)
