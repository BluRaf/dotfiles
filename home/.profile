# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set $PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# add user AppImage directory to $PATH
if [ -d "$HOME/bin" ]; then
    PATH="$PATH:$HOME/bin"
fi

# add ESP32 toolchain to $PATH
# TODO: find a better way to manage cross toolchains
if [ -d "$HOME/.local/bin" ]; then
    PATH="$PATH:$HOME/esp/xtensa-esp32-elf/bin"
    IDF_PATH="$HOME/esp/esp-idf"
fi

# add Nimble packages to $PATH
if [ -d "$HOME/.nimble" ]; then
    PATH="$PATH:/home/bluraf/.nimble/bin"
fi

# add Rust packages to $PATH
if [ -d "$HOME/.cargo" ]; then
    PATH="$PATH:$HOME/.cargo/bin"
fi
