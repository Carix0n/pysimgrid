#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "$SCRIPT_DIR/.."

if [ ! -f "$SCRIPT_DIR/exp1.json" ]; then
  python3 -m pysimgrid.tools.experiment "$SCRIPT_DIR/plat_exp1" "$SCRIPT_DIR/tasks_exp1" "$SCRIPT_DIR/algorithms.json" dag/exp1.json -j8 --simgrid-log-level=error
fi

if [ ! -f "$SCRIPT_DIR/exp2.json" ]; then
  python3 -m pysimgrid.tools.experiment "$SCRIPT_DIR/plat_exp1" "$SCRIPT_DIR/tasks_exp2" "$SCRIPT_DIR/algorithms.json" dag/exp2.json -j8
fi

if [ ! -f "$SCRIPT_DIR/exp3.json" ]; then
  python3 -m pysimgrid.tools.experiment "$SCRIPT_DIR/plat_exp3" "$SCRIPT_DIR/tasks_exp3" "$SCRIPT_DIR/algorithms.json" dag/exp3.json -j8
fi

popd
