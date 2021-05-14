FROM debian:10

# pre-reqs
RUN apt-get update && \
    apt-get install -y \
        curl \
        git \
        gpg \
        vim

# install fish
RUN echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_10/ /' \
        | tee /etc/apt/sources.list.d/shells:fish:release:3.list && \
    curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_9.0/Release.key \
        | gpg --dearmor \
        | tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null && \
    apt-get update && \
    apt-get install -y fish

# install omf
RUN ["/bin/bash", "-c", \
    "env fish <(curl -fsSL https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install) \
         --noninteractive \
         --path=~/.oh-my-fish \
         --config=~/.config/oh-my-fish" \
]
