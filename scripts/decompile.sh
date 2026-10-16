#!/usr/bin/env bash
set -euo pipefail
repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
scads2_bin="${SCADS2:-/workspace/tools/scads2/scads2}"
mkdir -p "$repo_dir/decompiled"
output_tmp="$(mktemp "$repo_dir/decompiled/.savannah.XXXXXX")"
trap 'rm -f -- "$output_tmp"' EXIT
"$scads2_bin" "$repo_dir/savannah.gam" > "$output_tmp" 2> "$repo_dir/decompiled/scads2.log"
test -s "$output_tmp"
if grep -Fq '{{{' "$output_tmp"; then
    echo 'Listing contains unresolved decompiler markers; manual reconstruction is required.' >&2
fi
mv -- "$output_tmp" "$repo_dir/decompiled/savannah.t"
