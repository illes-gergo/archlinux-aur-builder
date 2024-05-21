#!/bin/sh

MAKEFLAGS=-j16
ZMUSIC_URL=https://aur.archlinux.org/zmusic.git
GZDOOM_URL=https://aur.archlinux.org/gzdoom.git

git clone $ZMUSIC_URL zmusic&&
cd zmusic&&
makepkg -sCfi --noconfirm&&
cd ..&&
git clone $GZDOOM_URL gzdoom&&
cd gzdoom&&
makepkg -sCf --noconfirm&&
cp *zst ../;
