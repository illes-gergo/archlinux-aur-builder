FROM archlinux:latest
RUN pacman -Syy reflector --noconfirm
RUN  reflector -l5 -f5 --threads 16 -c hu --save /etc/pacman.d/mirrorlist
RUN pacman -Syyu --noconfirm binutils make fakeroot base-devel git sudo 
RUN useradd builder
RUN usermod -aG wheel builder
RUN echo "%wheel ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN echo 'MAKEFLAGS="-j16"' >> /etc/makepkg.conf
