---
layout: post
categories: posts
title: List crontab for all users
date: 2012-11-30T22:03:27+00:00
---

```
for user in $(cut -f1 -d: /etc/passwd); do 
   echo $user; crontab -u $user -l; 
done
```

`for user in $(cut -f1 -d: /etc/passwd); do echo $user; crontab -u $user -l; done`