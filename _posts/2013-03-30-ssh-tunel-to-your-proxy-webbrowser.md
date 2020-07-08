---
layout: post
categories: posts
title: SSH Tunel to your Proxy Webbrowser
date: 2013-03-30T23:41:54+00:00
---

```
$ ssh -4 -N -D 1025 root@server.com
```

1025 is a proxy port (localhost:1025)

![ssh_tunel](/techlog/images/ssh_tunel.jpg "ssh_tunel")
