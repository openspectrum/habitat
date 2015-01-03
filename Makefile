BIN_DIR = ~/.bin
HABITAT_EXEC = `pwd`/bin/habitat

install: link_to_executable

link_to_executable: make_bin_dir
	ln -sf $(HABITAT_EXEC) $(BIN_DIR)

make_bin_dir:
	mkdir -p $(BIN_DIR)
