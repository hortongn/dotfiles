#!/bin/bash

/usr/local/bin/ctags -R --languages=ruby --exclude=.git . $(bundle list --paths)
