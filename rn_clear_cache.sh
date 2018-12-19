#!/bin/sh
# call from work directory
watchman watch-del-all && rm -rf $TMPDIR/react-* && rm -rf node_modules/ && npm cache verify && npm ci && npm start -- --reset-cache
