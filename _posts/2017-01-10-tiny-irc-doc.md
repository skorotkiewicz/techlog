---
layout: post
title:  "Tiny IRC Doc"
date:   2017-01-10 18:10:58 +0200
categories: posts
---

<style>.post-content > ul {list-style: none;}</style>

# NickServ

* Register nickname on server:  
`/nick YourNick`  
`/msg NickServ REGISTER YourPassword youremail@example.com`

* Login   
`/msg NickServ IDENTIFY YourNick YourPassword`

* Logging In  
`/connect chat.freenode.net 6697 YourNick:YourPassword`

# ChanServ

* Register your channel:  
`/msg ChanServ register #channel`
 
* Enable the GUARD (ChanServ) flag for your channel using:  
`/msg ChanServ set #channel guard on`
 
* Set ops:  
`/msg ChanServ flags #channel yournick +o`
 
*  Set ops and auto-ops:  
`/msg ChanServ flags #channel yournick +oO`
 
* Set topic lock ON or OFF:  
`/msg ChanServ SET #channel TOPICLOCK {ON | OFF}` 
 
- If you have only set the lowercase letter +o, you must type the command below when you re-join the channel to become an operator again:  
`/msg ChanServ op #channel`


# Quick notes (weechat)

Add server:  
`/server add freenode chat.freenode.net`   
- then edit `~/.weechat/irc.conf` only if weechat is not running!

Connect:  
`/connect freenode`

Send PM:  
`/query user this is a message`

Quick close chat window, add key mapping (Alt+!):  
`/key bind meta-! /buffer close`


# Weechat BNC / Add ZNC Server
 
For znc.example.com server:

```
openssl s_client -connect znc.example.com:6697 </dev/null 2>/dev/null | openssl x509 -in /dev/stdin -noout -fingerprint -sha256  | sed s/://g | cut -c 20-
```

`5A038025E789ED2F1032EB15XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX08FA693`  

For username "YourName" and server "freenode" with password: "YourPassword"  

```
/server add BNC znc.example.com/6697 -ssl -username=YourName/freenode -password=YourPassword -autoconnect
/set irc.server.BNC.ssl_fingerprint 5A038025E789ED2F1032EB15XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX08FA693
/connect BNC
/save
```