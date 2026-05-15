from pathlib import Path


path = Path("pyproject.toml")
text = path.read_text()
dependency = '    "pybind11>=2.6",\n'
if dependency not in text:
    raise RuntimeError("expected pybind11 runtime dependency not found")
path.write_text(text.replace(dependency, ""))
