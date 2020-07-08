---
layout: post
categories: posts
title: Connection Limit Linux
date: 2012-09-16T10:06:30+00:00
---

```
iptables -A INPUT -p tcp --syn --dport 80 -m connlimit --connlimit-above 10 -j REJECT --reject-with tcp-reset
```