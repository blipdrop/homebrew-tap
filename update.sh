#!/usr/bin/env bash
# リリースのチェックサムから Formula/nodd.rb を作る。 ./update.sh 0.1.0
set -euo pipefail
version=$1
cd "$(dirname "$0")"
sums=$(gh release download "v$version" --repo blipdrop/nodd --pattern checksums.txt --output -)
out=$(sed "s/@VERSION@/$version/" Formula/nodd.rb.in)
while read -r sum file; do
  target=${file#nodd-}
  out=${out//@${target%.tar.gz}@/$sum}
done <<<"$sums"
printf '%s\n' "$out" > Formula/nodd.rb
