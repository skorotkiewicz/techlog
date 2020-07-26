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
 
5. Set topic lock ON or OFF:

`/msg ChanServ SET #channel TOPICLOCK {ON | OFF}`
 
 
If you have only set the lowercase letter +o, you must type the command below when you re-join the channel to become an operator again:

`/msg chanserv op #channel`