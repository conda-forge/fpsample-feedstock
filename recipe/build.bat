%PYTHON% "%RECIPE_DIR%\patch_pyproject.py"
if errorlevel 1 exit 1

%PYTHON% "%RECIPE_DIR%\patch_msvc_ssize_t.py"
if errorlevel 1 exit 1

set CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%
%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit 1
