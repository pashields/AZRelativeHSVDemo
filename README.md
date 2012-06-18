AZRelativeHSV
=============
A tiny UIColor category to allow relative manipulation of colors. HSV (and alpha) are represented as floats between 0 and 1. For instance:

``` objective-c
self.view.backgroundColor = [self.view.backgroundColor addSaturation:0.1];
```

will increase the saturation.

Look at UIColor+AZRelativeHSV.h for a list of public category methods. There's no doc, but you probably won't need it.

Status
------
This was a 30 minute hack project (that I needed). I don't plan to alter it much, though I will probably add it to cocoapods if I use it. Still, pull requests and issues accepted.

License
-------
Apache 2.0