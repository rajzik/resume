#!/usr/bin/env bash
# Check if docker is available, otherwise use podman
if command -v docker &> /dev/null; then
    CONTAINER_CMD="docker"
elif command -v podman &> /dev/null; then
    CONTAINER_CMD="podman"
else
    echo "Error: Neither docker nor podman is installed"
    exit 1
fi

# Build the container

# Run the container to compile the resume
# $CONTAINER_CMD run --rm -i -v "$PWD":/data latex xelatex resume.tex
$CONTAINER_CMD run --rm -v $PWD:/data moss/xelatex make