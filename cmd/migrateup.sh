#!/usr/bin/env bash

set -e

ls db/migrations/up/*.sql | xargs -I{} -- psql -U postgres abot -f {}
ls db/migrations/up/*.sql | xargs -I{} -- psql -U postgres abot_test -f {}
