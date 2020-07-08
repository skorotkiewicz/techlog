---
layout: post
categories: posts
title: Generate a checksum of the files in a directory
date: 2012-10-02T23:05:34+00:00
---

```
find . -type f -print0 | xargs -0 md5sum >> checksum.md5
```