---
layout:         post
title:          "Journal of a Junior: BEM Syntax"
date:           2016-05-25
author_id:      "maggy_burns"
description:    "Hello, Maggy here! I’m going to be updating the SB website with journal posts about all the new technologies i’m learning (if I can keep up) and the first post is going to be about BEM syntax. "
categories:     space between
banner:         "/assets/images/blog/radcatbem.jpg"
---

Hello, Maggy here! I’m going to be updating the SB website with journal posts about all the new technologies i’m learning (if I can keep up) and the first post is going to be about BEM syntax. 

BEM - which stands for block, element, modifier - is a front-end naming methodology that the guys at Yandex thought up. I had never heard of BEM syntax before I had started working here at Space Between, and when I first started to look into it, overwhelmed was an understatement! So I dedicated my [investment time](http://spacebetween.io/space/between/2016/04/20/Investment-time.html) (which is a beautiful thing) to it on Friday - and now it makes complete sense and I can’t wait to start using it in future projects. I’m writing this blog post to a) give myself a better understanding and b) hopefully help someone else trying to get their head around it!

###So what exactly is BEM?

BEM is a strict way of arranging your CSS into independent and informative modules. It usually follows this pattern:

<pre><code class="scss">
.block{}
.block__element{}
.block--modifier{}

</code></pre>
<br>
A block represents an object on your website, and could be a form, header, or navbar for example.
An element represents a descendant of your block and is indicated by beginning with a double underscore ‘__ ‘. Elements are what make up your block and so can be buttons, textboxes or media items.
A modifier is a different version of your element or block and is indicated by double hyphen ‘--’. It could be something like --active that would give a style like background-color: blue. It’ll indicate that the object would be active (yes, really!). It can also identify states like booleans, or values like bold, normal or thin for properties like font weight.

The reason for double underscores and hyphens is because if your block or element has a hyphen in its name then you don’t want to confuse the name with a modifier. Like if you had a block called nav-link, it’d be BEM’d up like:

<pre><code class="scss">
.nav-link {} /* Block */
.nav-link__field {}
.nav-bar__nav-link--active {}

</code></pre>
<br/>

###What are the benefits of using BEM compared to my previous approach?

My previous approach to stylesheets was very...I’m going to go with amateur. I enjoyed writing them but I had no structure to follow. Everything was thrown into one stylesheet and there was a lot of specifics and nesting which I have now learned isn’t a fantastic idea. If I was to change an ID, then I could potentially ruin the style, if I was to change the class of a parent element I could throw off the whole section. There was tons of nesting and so a lot of repeated styles. This lead to a very confusing and daunting stylesheet (but I was proud of it anyways because “Look at all this cool stuff I wrote!”).

The beautiful thing with BEM is that it eliminates a lot of those problems - even though it’s kinda ugly on the outside. It doesn’t need nesting, because a BEM CSS class is independent and doesn’t need tags or IDs to show who it is! It depends on its unique class and its modifiers. 

Another nice quality about BEM is that it’s very informative, you can tell what the style is just by looking at the class. Let’s go with the analogy of a cat:

<pre><code class="scss">
.cat {}
.cat__ear{}
.cat--fat{}
.cat--fat__ear{}
.cat__ear--left{}

</code></pre>
<br/>


The block is a cat. The element is its ear. The modifier is that it’s a fat cat (the best kind of cat). You can tell all this just by glancing. Previously I would have written this like:

<pre><code class="scss">
.cat{}
.fat{}
.ear{}
.left-ear{}
.right-ear{}

</code></pre>
<br/>

Reading that and knowing it’s a cat makes sense, but what if you didn’t know? What would the .ear be for - could be a mouse? You can get .fat anything, could it be a fat person? By using BEM you are giving whoever is looking at your markup a good idea of what’s going on and all the different elements relate together but aren't depending on each other!

###And so I conclude..

I really enjoyed learning about BEM (I have this [video](https://www.youtube.com/watch?v=vgg-NsKZaE4) by Kevin Mack [@nicetransition](https://twitter.com/nicetransition) to thank for that), and I can now see why Space Between practice it. It’s informative and I’m really looking forward to applying it to future projects as I can see how much it’s going to benefit me  - it will make me think a lot more about what I’m going to name my classes and help me interpret designs better if i’m thinking of it as blocks and elements. The BEM classnames will help make the markup a lot more descriptive and meaningful especially for my coworkers as we’ll all be following the same syntax.

It’s going to be quite a learning curve, as are most things i’ve picked up on my first week here, but I’m really looking forward to it and can’t wait to get stuck in.


