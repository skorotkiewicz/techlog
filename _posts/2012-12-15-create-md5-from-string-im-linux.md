---
layout: post
categories: posts
title: Create md5 from string im Linux
date: 2012-12-15T10:42:47+00:00
---
How to install?  
Create new file

```
nano /usr/bin/md5
```

copy&paste code to /usr/bin/md5

chmod:

```
chmod +x /usr/bin/md5
```

Code:

```
#!/bin/sh
if [ $1 ]
then
        hash="$(echo -n "$1" | md5sum )"
        echo "$hash"
else
        echo "Example usage: md5 <you-string>"
fi
```

Usage and Output:  
```
root@host:~# md5 sebastian  
c2d628ba98ed491776c9335e988e2e3b  &#8211;
```