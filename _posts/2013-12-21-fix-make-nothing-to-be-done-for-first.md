---
layout: post
categories: posts
title: 'FIX: make: Nothing to be done for `first`.'
date: 2013-12-21T17:05:28+00:00
---
following error:  
make: Nothing to be done for \`first\`.

Solution:

```
qmake -project && qmake hello.pro && make
```