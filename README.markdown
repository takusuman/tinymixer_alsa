# `tinymixer`_alsa
A GUI wrapper originally for OpenBSD's sndioctl, ported to work with ALSA.  
Written in Tcl/Tk with *32 lines of code (counting comments and line breaks).
*: Originally it had just 30, but i've added some comments.

Here is a screenshot of it:  
|![img/2021-08-19-014841_224x153_scrot.png](img/2021-08-19-014841_224x153_scrot.png)|
|:--:|
|*Running on Devuan 10 w/ Trinity Desktop Environment R14.0.10.*|

In fact, the interface remains the same.  

## Why?
I think ALSA also deserved a decent audio mixer, so i decided to take Yoshihiro's original TinyMixer and modify it to work with it.  

## Who's the responsible?
All kudos goes to Yoshihiro Kamawata (`@yoshi_kaw` on Twitter), who originally coded this to use in FuguIta BSD (which is, in my opinion, an amazing project) and [published it on his Twitter](https://twitter.com/yoshi_kaw/status/1427884989073412102).  
But if you have any troubles related specifically to this fork, blame it on me. ;^)
