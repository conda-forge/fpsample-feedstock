from pathlib import Path


path = Path("src/lib.cpp")
prefix = (
    "#if defined(_MSC_VER)\n"
    "#include <cstddef>\n"
    "typedef std::ptrdiff_t ssize_t;\n"
    "#endif\n"
)
text = path.read_text()
if not text.startswith(prefix):
    path.write_text(prefix + text)
