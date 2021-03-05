#!/usr/bin/env bash

ELIXIR_DIR="/home/elixir/app"
cd $ELIXIR_DIR

killall -2 beam.smp
sleep 1

elixir --detached -S mix phx.server

exit $?
