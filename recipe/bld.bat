set CMAKE_GENERATOR=Ninja
set CMAKE_ARGS=-GNinja
%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
