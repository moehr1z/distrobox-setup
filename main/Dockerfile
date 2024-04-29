FROM moehr1z/fedora:37

RUN dnf install dnf-plugins-core -y
RUN dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
RUN dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
RUN dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
RUN dnf install yt-dlp docker-ce-cli -y
