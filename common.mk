CC=g++
AR=ar

BASE_DIR=$(shell pwd)
LIB_DIR=$(BASE_DIR)/lib
TEST_DIR=$(BASE_DIR)/test
UTIL_DIR=$(BASE_DIR)/utils
BIN_DIR=$(BASE_DIR)/bin

IFLAGS=-I$(BASE_DIR)/include -I$(UTIL_DIR)/include

DEBUG=1
VERBOSE=0
CURSES=0

ifeq ($(DEBUG), 0)
_TMP_CFLAGS=-std=c++17 -O3 -Wall -Wno-unused-function -MMD -MP
else
_TMP_CFLAGS=-std=c++17 -O0 -Wall -Wno-unused-function -MMD -MP -g3 -DDEBUG
endif

ifeq ($(VERBOSE), 1)
_TMP_CFLAGS2=$(_TMP_CFLAGS) -DVERBOSE
else
_TMP_CFLAGS2=$(_TMP_CFLAGS)
endif

ifeq ($(CURSES), 1)
CFLAGS=$(_TMP_CFLAGS2) -DCURSES
else
CFLAGS=$(_TMP_CFLAGS2)
endif

LDFLAGS=-flto -L$(LIB_DIR) -L$(BASE_DIR)/utils/lib -lutil -lncurses

