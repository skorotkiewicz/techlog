---
layout: post
title:  "Tiny IRC Doc"
date:   2017-01-10 18:10:58 +0200
categories: posts
---
 
1. Register your channel:

`/msg ChanServ register #channel`
 
2. Enable the GUARD (ChanServ) flag for your channel using:

`/msg ChanServ set #channel guard on`
 
3. Set ops:

`/msg chanserv flags #channel yournick +o`
 
4.  Set ops and auto-ops:

`/msg chanserv flags #channel yournick +oO`
 
5. Set topic lock:

`/msg ChanServ SET #channel TOPICLOCK {ON | OFF}`
 
 
If you’ve only set the little o flag, your users must tell chanserv to temporarily turn them into operators when they need it.

`/msg chanserv op #channel`