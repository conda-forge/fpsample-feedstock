%PYTHON% -c "lines = open('src/lib.cpp').readlines(); lines.insert(0, '#if defined(_MSC_VER)\n#include <cstddef>\ntypedef std::ptrdiff_t ssize_t;\n#endif\n'); open('src/lib.cpp', 'w').writelines(lines)"

echo "Content of src/lib.cpp after modification:"
type src\lib.cpp

set CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%
%PYTHON% -m pip install . --no-deps --no-build-isolation
