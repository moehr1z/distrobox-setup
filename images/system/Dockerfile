FROM localhost/main

RUN apt install build-essential -y 
# install rust
RUN apt install curl -y
# if using distrobox this install actually to the host as it's in ~/.cargo
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
