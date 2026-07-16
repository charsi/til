---
title: column-height CSS For Pages
date: 2026-07-14
---
# column-height CSS For Pages

[column-height](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/column-height) can be used to simulate "pages" in a web view. 

This is a brand new CSS feature which only landed in chrome 145, released in early 2026. It is still missing in Firefox as of July 2026 - https://caniuse.com/?search=column-height.

I am using this to create a newspaper like reader mode. 

--- 
I came across following resources when looking to do this.  
[Columnate][def] - Comes very close to what I wanted but requires scrolling horizontally. I prefer the article to be broken up into pages.  
[This blog post](https://www.ninjapixel.io/v2/newspaper-column-layout) discusses some ways of achiving newspaper like layout. Written in 2023 and `column-height` was not available yet. But the author did manage to do it with some javascript in a react component.  

[def]: https://github.com/anoved/Columnate