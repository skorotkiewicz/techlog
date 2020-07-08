---
layout: post
categories: posts
title: Quick crontab man
date: 2012-10-02T12:58:37+00:00
---

```
#minute (0-59),
#| hour (0-23),
#| | day of the month (1-31),
#| | | month of the year (1-12),
#| | | | day of the week (0-6 with 0=Sunday).
#| | | | | commands
0 2 * * 0,4 sh /home/mod/script.sh`
```