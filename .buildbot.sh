#!/bin/sh

set -eu

wget https://github.com/smarr/ReBench/archive/refs/heads/dont-require-git.zip
unzip dont-require-git.zip
mv ReBench-dont-require-git rebench
cd rebench
pipx install .
cd ..

export PATH=~/.local/pipx/venvs/rebench/bin:$PATH

# Do a "quick" run as a smoke-test.
rebench --quick --no-denoise -c rebench.conf
