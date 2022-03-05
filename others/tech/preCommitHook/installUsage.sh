# pre-commit hook install

# install
pip3 install pre-commit
pre-commit --version

# Add a pre-commit configuration (.pre-commit-config.yaml) to the root of your project
cd learnNPractice # source directory
touch .pre-commit-config.yaml
pre-commit sample-config # generate basic config

# .pre-commit-config.yaml
repos:
  - repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v3.2.0
    hooks:
      - id: trailing-whitespace
      - id: end-of-file-fixer

# install the git hook scripts into repo
pre-commit install

# run against all the files
pre-commit run --all-files
