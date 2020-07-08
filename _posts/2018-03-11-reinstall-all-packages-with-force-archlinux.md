---
layout: post
title: "Reinstall all packages with --force on Arch"
date: 2018-03-11 22:08:46 +0200
categories: posts
---

Here is simple solution

```
pacman -Qqen > pkglist.txt
pacman --force -S $(< pkglist.txt)
mkinitcpio -p linux
```
