FROM localhost/base

### MISC
RUN apt install gnome-tweaks yt-dlp -y

### DEV
RUN apt install git make liburi-perl libpar-packer-perl libgit-repository-perl libxml-mini-perl gcc g++ libc6-dev-i386 libncurses-dev xorriso mtools flex bison pkg-config gawk liburi-perl device-tree-compiler -y # L4Re
RUN apt install build-essential gdb -y
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y # Rust
