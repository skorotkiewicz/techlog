---
layout: post
categories: posts
title: Disable ping reply on GNU/Linux
date: 2012-10-02T12:37:56+00:00
---
Disable ping reply temporarily  
```
echo "1" > /proc/sys/net/ipv4/icmp_echo_ignore_all
```

Enable the ping reply back
```
echo "1" > /proc/sys/net/ipv4/icmp_echo_ignore_all
```