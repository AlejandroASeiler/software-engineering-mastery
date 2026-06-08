# Master Makefile for Software Engineering & Systems Mastery Encyclopedia

CC = gcc
CXX = g++
RUSTC = rustc
CFLAGS = -Wall -Wextra -O3 -std=c17
CXXFLAGS = -Wall -Wextra -O3 -std=c++23

# Find all C, CPP, and RS files in subdirectories
C_SRCS = $(shell find . -name "*.c")
CPP_SRCS = $(shell find . -name "*.cpp")
RUST_SRCS = $(shell find . -name "*.rs")

C_BINS = $(C_SRCS:.c=.out)
CPP_BINS = $(CPP_SRCS:.cpp=.out)
RUST_BINS = $(RUST_SRCS:.rs=.out)

all: $(C_BINS) $(CPP_BINS) $(RUST_BINS)

%.out: %.c
	$(CC) $(CFLAGS) $< -o $@

%.out: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

%.out: %.rs
	$(RUSTC) $< -o $@

clean:
	find . -name "*.out" -delete

.PHONY: all clean
