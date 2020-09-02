include common.mk

SDIR=src
ODIR=.obj

SLIB=$(LIB_DIR)/libgame.a


SRC=$(shell find $(SDIR) -type f -name '*.cpp')
OBJ=$(patsubst $(SDIR)/%.cpp,$(ODIR)/%.o,$(SRC))
DEP=$(wildcard $(SDIR)/*.h)

DIRS=$(shell find $(SDIR) -type d)
OBJDIRS=$(patsubst $(SDIR)/%,$(ODIR)/%,$(DIRS))

$(shell mkdir -p $(LIB_DIR))
$(shell mkdir -p $(ODIR))
$(shell mkdir -p $(OBJDIRS))
$(shell mkdir -p $(BIN_DIR))

DEPFILES=$(SRC:$(SDIR)/%.cpp=$(ODIR)/%.d)


.PHONY: all
all: cppflow utils $(SLIB) tests

.PHONY: cppflow
cppflow:
	(make -C $(CPPFLOW_DIR) BASE_DIR=$(BASE_DIR) LIB_DIR=$(LIB_DIR))

.PHONY: utils
utils:
	(make -C $(UTIL_DIR))

.PHONY: tests
tests:
	(make -C $(TEST_DIR) BASE_DIR=$(BASE_DIR) SLIB=$(SLIB) LIBUTIL=$(SLIB))


$(SLIB): $(OBJ)
	$(AR) -rcs $@ $^


$(ODIR)/%.o: $(SDIR)/%.cpp
	$(CC) $(CFLAGS) $< -c -o $@ $(IFLAGS)


-include $(wildcard $(DEPFILES))

.PHONY: clean
clean:
	rm -rf $(ODIR)
	rm -rf $(LIB_DIR)
	rm -rf $(BIN_DIR)
	(make -C $(TEST_DIR) clean)
	(make -C $(UTIL_DIR) clean)
	(make -C $(CPPFLOW_DIR) clean)


