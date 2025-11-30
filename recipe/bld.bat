copy src\lib.cpp src\lib.cpp.orig
echo #if defined(_MSC_VER) > src\lib.cpp
echo #include ^<cstddef^> >> src\lib.cpp
echo typedef std::ptrdiff_t ssize_t; >> src\lib.cpp
echo #endif >> src\lib.cpp
type src\lib.cpp.orig >> src\lib.cpp

set CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%
%PYTHON% -m pip install . --no-deps --no-build-isolation
