---
layout:         post
title:          "Journal of a Junior: Creating custom grid editors with LeBlender"
date:           2016-11-23
author_id:      "maggy_burns"
description:    "Hello, Maggy here! In this post, I'll be talking you through how I made custom grid editors for the Umbraco grid"
categories:     space between
banner:         "/assets/images/blog/grid-editor.jpg"
---

[LeBlender](https://our.umbraco.org/projects/backoffice-extensions/leblender/) is an open source Umbraco back office extension made that allows us to create new grid editors in a more flexible way. It brings an easy to use UI for you to add your own grid editors into grid.editors.config.js without having to change any JSON.

I really like using it as you can just build up a library of these editors as components, that you can use anywhere in the Umbraco site. Here I am going to show how we made a 'Card' component. We wanted a component that allowed the user to make their own 'block' that could have so many choices like title, background image, colour or links. LeBlender makes this so easy! You can get your LeBlender installation [here](https://our.umbraco.org/projects/backoffice-extensions/leblender/)

Firstly, Marcus and I brainstormed all of the properties we would need for this card. We came up with the following:

- Title - textstring
- Description - RTE 
- Image - Image Picker
- Layout - Custom Editor
- Colour Scheme - Custom Editor
- Internal Link - Content picker
- External Link - textstring
- Link text - textstring

We decided some properties would need to be customised datatypes to suit our customers' needs, like the colour scheme - they would only be able to choose from their brand colours.

When you go to make your grid editor, you want to go into the Developer tab, then into the grid editor folder. You can then add a new grid editor item. If Leblender was installed properly, you can choose it as a Grid Editor type:

![Card Settings](/assets/images/blog/card-settings.png)

Here is where the magic happens! Rather than having to edit JSON you can add your properties here with the UI. Select the name, datatype, and alias and description and save. This edits the grid.editors.config.js and saves your changes.

Now you can go back to your grid and select your new grid editor and its properties - but there's nothing showing up yet!

We have to create a view for the grid editor. For this, I have gone into Views>Partials>Grid>Editors and created a new .cshtml view.

Firstly, you'll have to make sure your view is inheriting the LeBlender model, so we can get all of the LeBlender editors data:

<script src="https://gist.github.com/maggyb/674a04e0fb713eaf4bc2ff0a84bb47ac.js"></script>

This will get us the title property from our editor, and display it in a header tag. Continue to build your partial view with all of your properties in Razor, and you will end up with a completed grid editor!