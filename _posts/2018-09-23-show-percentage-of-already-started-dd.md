---
layout: post
title: "Show percentage of already started DD"
date: 2018-09-23 11:20:07 +0200
categories: posts
hidden: false
---


To get started, install the **pv** package: 
`pacman -S pv`


Run `dd`, then, in a separate shell, invoke the following command:

```
sudo pv -d $(pidof dd)
```

or start over from the beginning :
```
pv /path/to/isofile | sudo dd of=/dev/sdX
```