# CSP Breaks Boookmarklets

I was working on a bookmarklet today and was quite pleased with the result. It is a modified version of [Columnate](https://github.com/anoved/Columnate).

But when I tried it on wikipedia it did nothing. After looking the errors in the console I learned this is because wikipedia has enabled CSP policies [script-src][def2] and [style-src][def]. These essentially block loading of resources from outside sources that wikipedia hasn't allowed explicitly.

![screenshot of firefox console showing CSP error](image.png)


![alt text](image-1.png)

Thanksfully, jsdelivr and a few other CDNs are on the list so I can publish my code there. But this will not be the case for every website that I want my bookmarklet to run on. 

[def]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Content-Security-Policy/style-src

[def2]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Content-Security-Policy/script-src