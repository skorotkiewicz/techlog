---
layout: post
categories: posts
title: Play music on a remote computer via SSH
date: 2012-10-02T13:47:47+00:00
---
On the "music server"

```
sudo apt-get install openssh-server mplayer
```

On the your computer

```
ssh <username>@<serverip>
cd /path/to/music/files
```

If you want to play only one song

```
mplayer song.mp3
```

If you want to play the whole directory

```
mplayer *.mp3
```

In case of multiple extentions (example with mp3, wma and ogg files

```
mplayer *.mp3 *.wma *.ogg
```