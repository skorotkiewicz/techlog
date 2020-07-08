---
layout: post
title: "iptables simple ban ip rules"
date: 2012-10-18 07:14:03 +0200
categories: posts
hidden: false
---

__Ban an IP address *(IP address cannot be entered on the server)*__
```
# iptables -A INPUT -s 1.2.3.4 -j DROP
```

__Ban an IP address *(cannot be accessed from the server on the IP)*__
```
# iptables -A OUTPUT -s 1.2.3.4 -j DROP
```

__Delete Rule by Chain and Number__  
```
# iptables -L --line-numbers

# iptables -D INPUT 3
```


__Flush a Single Chain__  
*Delete all of the rules in the INPUT chain, run this command* 
```
# iptables -F INPUT
```


__Flush All Rules, Delete All Chains, and Accept All__
```
# iptables -P INPUT ACCEPT
# iptables -P FORWARD ACCEPT
# iptables -P OUTPUT ACCEPT

# iptables -t nat -F
# iptables -t mangle -F
# iptables -F
# iptables -X
```