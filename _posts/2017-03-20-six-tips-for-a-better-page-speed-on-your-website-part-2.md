---
layout: 		post
title:  		"6 tips for a better page speed on your website - Part 2"
date:   		2017-03-20
author_id:      "luke_frake"
description:	"I’m always hunting for the next website performance technique to give you a better page speed. This is 6 of the best techniques that always work. Part 2"
categories: 	space between
banner:			"/assets/images/blog/fast-lines.jpg"
---

This is part 2 of a two part series, read part 1 <a href="/space/between/2017/03/20/six-tips-for-better-page-speed-on-your-website-part-1">here</a>.

## Upgrade your server to HTTP/2

HTTP/2 has been a long time coming, for too long we’ve been building on top of a legacy protocol, this means a lot of our techniques have been put in place because we’re working with HTTP/1.

One of the many benefits of HTTP/2 is that we can now download assets in a much more fluid way, HTTP/1 forced us to download assets in batches, this was useful to keep connections open but meant we’d wait for the largest file to finish before we could move onto the next batch.

HTTP/2 has done away with this meaning that we can now download assets as soon as we finish any other asset currently being downloaded, this means that techniques like concatenation of files and turning images into sprites are now not best practices and should be avoided, favouring more smaller files which can be downloaded and displayed to the user as and when they get delivered.

HTTP/2 does have some requirements, one of which being browser support, the other being that it must be used in conjunction with a valid certificate. Both of which aren’t a problem to get over to help you reap the rewards of HTTP/2.

HTTP/2 has other huge benefits, Daniel Stenberg has written <a herf="https://bagder.gitbooks.io/http2-explained/" target="_blank">http2 explained</a> if you'd like to dive in deeper.

## Optimise for the critical render path

If you’ve use Google Page Speed Insights, you’ve seen this phrase. This is a much more complicated challenge than anything else we’ve discussed so far, but I’ll outline what we’re trying to achieve here.

The critical render path defines the assets required for the browser to do it’s first render, this means everything the browser first sees when scanning the initial HTML that’s delivered. The challenge of optimising the critical render path is all about prioritising your assets to get that first render as quick as possible.

This means we may want to delay our JavaScript completely, we may even want to delay a large section of our CSS and only focus on what the user can see which, if they are on mobile, could be as little as the header and some initial content. The goal here is to try and make our critical render path so small, that even on a very slow network, we could get for that ever ideal goal of our first render happening in under 1 second.

The reason this is a more complicated solution than anything we’ve discussed previously is that after we’ve delayed all those assets we then need to pull them in in a way that isn’t jarring for the user and doesn’t impact the rest of their experience. We still need all these assets delivered quickly and giving to the user without them noticing.

<a href="https://www.youtube.com/watch?v=YV1nKLWoARQ" target="_blank">Ilya Igrigorik has done amazing work on the critical render path and you can see his video here.</a>

## Increase your perceived web performance

Okay, so this isn’t going to make your website faster on any metric, but it can have just as much impact on your user experience.

Perceived web performance is all about how fast your website feels as opposed to how fast it actually is.

There are a few accepted ways of increasing your perceived web performance:

## Sleight of hand
I call this Sleight of hand because it works similar to how a street magician can steal your watch, we are essentially distracting the user while we load the assets to the website. The most simple way of doing this would be adding in some animation while loading in a new section of the website, if our animation takes 2 seconds and it takes us 1 second to load in the new thing, the user may not even realise it’s taken any time before they can interact with the new part of the website. If this seems pointless to you, the web already uses this a lot and you’re probably not even noticing it.

## Skeletons
This is a technique that is heavily used by social media website such as Facebook, Twitter and Instagram, the technique here is basically just loading in something that looks like the asset the user is trying to get at. In the case of Facebook, who use this heavily on your timeline, it’s a dummy post, your brain is already expecting to see a post so by seeing this skeleton in place, your head is already partly accepting the fact that the page is loaded. This is really effective and although has no increase to the actual page speed, it can increase your conversion rate massively.

## Keep 'em busy
This should be saved for when we’ve got a long wait that we can’t speed up for some reason, give the user something to do. The gaming industry will often give users a mini game to play while they load the main game. This could be a simple version of what they’re going to be playing or a tutorial. We could just give the user some information, if we’re a holidays website, we could display the weather while we’re doing some heavy processes that can’t be sped up for example.

Everything I’ve said about are all web performance techniques that actually work, I’ve implemented them, I’ve seen the results and I can vouch for them.

I’d love to hear your stories implementing some of these results, equally, I’d love to hear some of your web performance techniques that do or don’t work, so please reach out in the comments. 