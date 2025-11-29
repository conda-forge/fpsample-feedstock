set SKBUILD_CMAKE_VERBOSE=TRUE
set CMAKE_BUILD_TYPE=Release
set CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%
%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
