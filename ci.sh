#!/bin/bash

# bazel test //...
# bazel build //...

# ### Let's add some basic error handling

# set -euxo pipefail
# bazel test //...
# bazel build //...

# ### Add -k, --build_tests_only, --flaky_test_attempts=3

# set -euxo pipefail
# bazel test -k --build_tests_only --flaky_test_attempts=3 //...
# bazel build //...

### Make targets configurable

set -euxo pipefail
readarray -t build_targets < <(jq -r '.build_targets[]' .bazelci.json)
readarray -t test_targets < <(jq -r '.test_targets[]' .bazelci.json)
bazel test -k --build_tests_only --flaky_test_attempts=3 -- "${test_targets[@]}"
bazel build -- "${build_targets[@]}"

### 