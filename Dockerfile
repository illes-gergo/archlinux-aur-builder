FROM archlinux:latest
RUN pacman -Syu --noconfirm binutils make fakeroot base-devel git sudo
RUN useradd builder
RUN usermod -aG wheel builder
RUN echo "%wheel ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
