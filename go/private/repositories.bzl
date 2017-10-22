# Copyright 2014 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Once nested repositories work, this file should cease to exist.

load("@io_bazel_rules_go//go/private:repository_tools.bzl", "go_repository_tools")
load("@io_bazel_rules_go//go/private:go_repository.bzl", "go_repository")
load('@io_bazel_rules_go//go/toolchain:toolchains.bzl', "go_register_toolchains")

def go_rules_dependencies():
  """See /go/workspace.rst#go-rules-dependencies for full documentation."""

  # Needed for gazelle and wtool


  # Needed for fetch repo

  _maybe(go_repository_tools,
      name = "io_bazel_rules_go_repository_tools",
  )




 

def _maybe(repo_rule, name, **kwargs):
  if name not in native.existing_rules():
    repo_rule(name=name, **kwargs)
