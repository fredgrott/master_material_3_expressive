# General Idea

There are both performance and design differences between implementing
liquid glass with content background transparent and implementing
liquid glass with material surface covering as transparent. The 
material way of doing it is preferred both in performance and design
wise.

The BlurBox package implements liquid glass the material way.

Implementing liquid glass where the background moves to animate 
the foreground requires more composting layers than the material
way of only animating and composting the glass blur layer upon scrolling.