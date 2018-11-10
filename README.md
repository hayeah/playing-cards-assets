# Playing Cards iOS Assets

Courtesy of https://code.google.com/p/vector-playing-cards/ (public domain)

With some additional processing to remove borders of cards.

Build the png assets with four parallel processes:

```
make -j 4 png
```

# Tools

[xmlstartlet](http://xmlstar.sourceforge.net/) to remove the border path from svg.

[svg2png](https://github.com/domenic/svg2png) to convert svg to png (based on phantomjs)
