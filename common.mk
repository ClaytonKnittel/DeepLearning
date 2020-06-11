CC=g++
AR=ar

BASE_DIR=$(shell pwd)
LIB_DIR=$(BASE_DIR)/lib
TEST_DIR=$(BASE_DIR)/test
CPPFLOW_DIR=$(BASE_DIR)/cppflow
BIN_DIR=$(BASE_DIR)/bin

IFLAGS=-I$(BASE_DIR)/include -I$(CPPFLOW_DIR)/include -I/library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/tensorflow/include

DEBUG=1

ifeq ($(DEBUG), 0)
CFLAGS=-std=c++14 -O3 -Wall -Wno-unused-function -MMD -MP
else
CFLAGS=-std=c++14 -O0 -Wall -Wno-unused-function -MMD -MP -g3 -DDEBUG
endif

LDFLAGS=-flto -L$(LIB_DIR) -ltensorflow -lcppflow

