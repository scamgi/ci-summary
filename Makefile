# Makefile for compiling the LaTeX project

# Compiler
LATEXMK = latexmk

# Main TeX file
MAIN = main.tex

# Output directory
OUT_DIR = out

# Flags for latexmk
FLAGS = -pdf -outdir=$(OUT_DIR)

# Default target
all:
	$(LATEXMK) $(FLAGS) $(MAIN)

# Clean up generated files
clean:
	$(LATEXMK) -c -outdir=$(OUT_DIR)
	rm -rf $(OUT_DIR)

.PHONY: all clean