#!/usr/bin/env bash

# Create dist directory if it doesn't exist
mkdir -p dist

# Build the Docker image
docker build -t sb2nov/latex .

# Run LaTeX compilation with output directed to dist/ folder
docker run --rm -i -v "$PWD":/workspace -v "$PWD/dist":/dist sb2nov/latex sh -c "cp /workspace/aashish_kumar.tex /dist/ && cd /dist && pdflatex aashish_kumar.tex"

# Clean up LaTeX artifacts, keeping only PDF and TEX files
find dist/ -type f ! -name "*.pdf" ! -name "*.tex" -delete
