#!/usr/bin/env zsh

benchmark_shell() {
  for i in $(seq 1 10); do /usr/bin/time $SHELL -i -c exit; done
}
