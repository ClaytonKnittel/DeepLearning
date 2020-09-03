CC=g++
AR=ar

BASE_DIR=$(shell pwd)
LIB_DIR=$(BASE_DIR)/lib
TEST_DIR=$(BASE_DIR)/test
CPPFLOW_DIR=$(BASE_DIR)/cppflow
UTIL_DIR=$(BASE_DIR)/utils
BIN_DIR=$(BASE_DIR)/bin

IFLAGS=-I$(BASE_DIR)/include -I$(CPPFLOW_DIR)/include -I$(UTIL_DIR)/include
#-I/library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/tensorflow/include

DEBUG=1
VERBOSE=1

ifeq ($(DEBUG), 0)
_TMP_CFLAGS=-std=c++17 -O3 -Wall -Wno-unused-function -MMD -MP
else
_TMP_CFLAGS=-std=c++17 -O0 -Wall -Wno-unused-function -MMD -MP -g3 -DDEBUG
endif

ifeq ($(VERBOSE), 1)
CFLAGS=$(_TMP_CFLAGS) -DVERBOSE
else
CFLAGS=$(_TMP_CFLAGS)
endif

LDFLAGS=-flto -L$(LIB_DIR) -L$(BASE_DIR)/utils/lib -ltensorflow -lcppflow -lutil

