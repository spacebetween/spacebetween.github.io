---
layout:			post
title:			"6 tips for a better page speed on your website - part 1"
date:			2017-03-20
author_id:		"luke_frake"
description:	"I’m always hunting for the next website performance technique to give you a better page speed. This is 6 of the best techniques that always work. Part 2"
categories:		space between
banner:			"/assets/images/blog/fast-lines.jpg"
---

# 6 tips for a better page speed on your website - Part 1

As anybody who knows me will tell you, I’m a huge self-confessed web performance geek, I love websites that download fast, I believe that fast internet is a basic human right and I think hotels that claim to have WiFi but instead have LiFi (WiFi that doesn’t quite seem to download anything) are criminal and should be boycotted.

This means that I’m always on the hunt for a good website performance technique and I thought I’d share 6 of the best web performance techniques that work every time.

## Reduce the size of your images

The most commonly overlooked technique to get a faster website, can not only give you some of the biggest rewards but it's also the easiest technique to implement.

There are a few areas in which you can reduce the size of your images:

### Reducing the aspect ratio
This sounds very obvious but a huge amount of websites I’ve optimised and found that their main banner at the top of every page is 5000 pixels wide but is being displayed at 20% that. Just by reducing that you can save yourself a huge amount of bytes and therefore save your users from a huge download for no real benefit.

### Make sure you’re showing the right image for the device
If your customer is viewing your product on their mobile, show them a version of the image that’s no wider than the device. When CSS is used to reduce the size of an image, it’s still the same size to download, just the browser then has to process it to the size required by the CSS, adding more time. Consider looking into <a href="https://martinwolf.org/blog/2014/05/the-new-srcset-and-sizes-explained" target="_blank">srcset</a> which is becoming more <a href="http://caniuse.com/#feat=srcset" target="_blank">widely supported</a>.

### Compress the image
Tools like <a href="https://tinypng.com/" target="_blank">TinyPNG</a>, <a href="https://tinyjpg.com/" target="_blank">TinyJPG</a> and <a herf="https://imageoptim.com" target="_blank">ImageOptim</a> can save your users from many kilobytes of download without reducing the visual of your image in any way your users will notice. This means that you can save a large amount of bytes on your page, without actually impacting your users. If you can have this built into your media upload, you don’t even need to think about it.

### Reduce the ‘quality’ of the image
By reducing the quality of our images, we’re really talking about simplifying the amount of colours being used. This means that we can not only reduce the file size but also making tools like Gzip more effective. Other more advanced techniques of this include reducing the quality significantly to the point where you can see but saving the image at double the resolution, this has been proven to deliver even smaller file sizes without impacting the asset visually.

## Remove old and unneeded code

Technical debt is an unavoidable part of any development, making sure you go through and remove old CSS, HTML and JavaScript is hugely important, though.

A few common areas that get overlooked regularly:

### Removing vendor files
Pulled out an old version of a carousel or a split testing tool, make sure to pull out the assets as well, that includes the JS and CSS that goes with it. 

### Removing losing variants of split tests
Very often I’ve seen examples where 2 or more versions of the same element have been created and tested. After this has been analysed and a winner decided, the traffic is pushed down one stream to the winning variant only for the old versions to be forgotten about. Make sure to remove any old code associated with the losing variants of the split test.

### Not including the entire framework
This is the most common cause of removing unneeded code, when people include frameworks like Bootstrap or Zurb, they very often include the entire framework, this means all the JS and CSS that build elements that the website might never even use. You can build these files up as and when you need them by not including the unneeded Sass files or only downloading part of the JS. For instance, the entire bootstrap CSS and JS is <a href="http://getbootstrap.com/customize/?id=4546ca8f32fdfc318bc2f2d0baffe311">668KB</a> whereas the bootstrap grid is just using the grid is <a href="http://getbootstrap.com/customize/?id=0c42209f4538131bccaa5348ce8e24be" target="_blank">13KB</a>. You can use the <a href="http://getbootstrap.com/customize/" target="_blank">customize tool</a> on the Bootstrap website to do this for yourself and tayler the download to your needs.

## Prioritise your assets

This is equally as important as anything else, make sure you’re downloading your assets as and when you need them. The simplest case of this is making sure to put your CSS in the head of your file and the JS in the bottom.

Even more than this though we can look at preloading pages and lazy loading.

### Preloading
Preloading is when you download an asset before the user requires it and store it in cache or local storage, this means when they get to the area of your website where you think they might need it it’s already available and you don’t have to download it. A good example of when this could work is if you have a booking flow on your website, your booking flow will probably have some extra functionality, so before the user clicks on the search button on your booking engine, you could preload some of this functionality meaning you can load the page quicker and hopefully convert that user.

### Lazy loading
Lazy loading is the other side of this, delaying your assets on the page the user is currently looking at until they actually need them. If for instance, you’ve got a gallery on your page, you don’t need to load all of the images the moment the user lands on the page. A more optimal way of doing this would be to download nothing at first, this allows for the first render to happen. Once we’ve displayed the page we download the first couple of images, and maintain being 1 or 2 images ahead of the image in view. This means you’re not downloading images that your user might not ever see but still make your users feel everything is instant as they slide through your gallery.

This is part 1 of a two part series, read part 2 <a href="/space/between/2017/03/23/six-tips-for-better-page-speed-on-your-website-part-2">here</a>.

Everything I’ve said about are all web performance techniques that actually work, I’ve implemented them, I’ve seen the results and I can vouch for them.

I’d love to hear your stories implementing some of these results, equally, I’d love to hear some of your web performance techniques that do or don’t work, so please reach out in the comments. 