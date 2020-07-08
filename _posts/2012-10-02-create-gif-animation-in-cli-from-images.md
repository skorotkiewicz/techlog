---
layout: post
categories: posts
title: Create GIF animation in CLI from images
date: 2012-10-02T11:53:05+00:00
---
`convert -delay 200 -quality 20 -size 200 -loop 0 <images> <gifImage.gif>`  
**Example**  
`convert -delay 200 -quality 20 -size 200 -loop 0 /home/images/*.png ~/gifImage.gif`