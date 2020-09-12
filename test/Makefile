include ../common.mk

ODIR=.obj

SRC=$(shell find . -type f -name '*.cpp')
OBJ=$(patsubst %.cpp,$(ODIR)/%.o,$(SRC))
EXE=$(patsubst %.cpp,$(BIN_DIR)/%,$(SRC))

$(shell mkdir -p $(ODIR))

DEPFILES=$(SRC:%.cpp=$(ODIR)/%.d)


# to prevent files from being auto-deleted by make after build completes
.SECONDARY:

.PHONY: all
all: $(EXE)

$(BIN_DIR)/%: $(ODIR)/%.o $(LIBUTIL)
	$(CC) $(CFLAGS) $< -o $@ $(IFLAGS) -lgame $(LDFLAGS)

$(ODIR)/%.o: %.cpp
	$(CC) $(CFLAGS) $< -c -o $@ $(IFLAGS)


-include $(wildcard $(DEPFILES))

.PHONY: clean
clean:
	rm -rf $(ODIR)

