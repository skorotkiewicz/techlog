---
layout: post
categories: posts
title: Notification of the new linux kernel on your Android in PHP
date: 2013-02-02T13:06:24+00:00
---
how to use? very simple!

```
$ crontab -e
```

add line

```
* 7 * * *  php /home/mod/notification.php>/dev/null 2>&1
```

and save  
now script will be run from cron every day at 7:00 am and notify you of a new kernel!