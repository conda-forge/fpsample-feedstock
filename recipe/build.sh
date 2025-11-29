#!/bin/bash
set -ex

# Change to the extracted source directory
# cd fpsample-${PKG_VERSION}

# Generate license file
# cargo-bundle-licenses --format yaml --output THIRDPARTY.yml

export CMAKE_GENERATOR=Ninja

# Build and install the package
${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
