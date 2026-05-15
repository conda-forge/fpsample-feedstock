#!/bin/bash
set -ex

python "${RECIPE_DIR}/patch_pyproject.py"

export CMAKE_GENERATOR=Ninja
export CMAKE_ARGS="${CMAKE_ARGS:-} -GNinja"

python -m pip install . -vv --no-deps --no-build-isolation
