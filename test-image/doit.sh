#!/bin/bash
set -eu

while getopts ":h-:" optchr; do
  case "$optchr" in
    -)
      case "$OPTARG" in
        foo)
          FOO="${!OPTIND}"; OPTIND=$((OPTIND + 1))
          ;;
        bar)
          BAR="${!OPTIND}"; OPTIND=$((OPTIND + 1))
          ;;
        output)
          OUTPUT="${!OPTIND}"; OPTIND=$((OPTIND + 1))
          ;;
        help|*)
          exit 2
          ;;
      esac
      ;;
    h|*)
      exit 2
      ;;
  esac
done

main() {
  foo="./foo.txt"
  bar="./bar.txt"
  output="./output.txt"
  aws s3 cp "$FOO" "$foo"
  aws s3 cp "$BAR" "$bar"
  cat "$foo"
  cat "$bar"
  cat "$foo" "$bar" > "$output"
  aws s3 cp "$output" "$OUTPUT"
}

main
