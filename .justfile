alias i := install
alias r := run
alias b := build
alias p := pre_commit
alias c := clean
alias ch := check

# Install the virtual environment and pre-commit hooks
install:
  uv sync
  uv run pre-commit install

# Run pre-commit
pre_commit:
 uv run pre-commit run -a

# Clean the project
clean:
  # Remove cached files
  find . -type d -name "__pycache__" -exec rm -r {} +
  find . -type d -name "*.egg-info" -exec rm -r {} +
  rm -rf build
# Run the docs
run:
  uv run sphinx-autobuild source build

# Run code quality tools
check:
  # Check lock file consistency
  uv lock --locked
  # Run pre-commit
  uv run pre-commit run -a
  # Run mypy
  uv run mypy .
  # Run deptry
  uv run deptry .

# Build dockerfile for DAG
build:
  uv run sphinx-build source build
