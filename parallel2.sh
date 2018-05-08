#!/bin/bash

# Here, allow parallel to expand the command

parallel --bar 'wc {} > /dev/null' ::: x??
