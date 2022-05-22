#!/bin/bash
podman build -t java-build .
podman run java-build