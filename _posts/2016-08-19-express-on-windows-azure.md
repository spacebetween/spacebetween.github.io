---
layout:         post
title:          "Express on Windows Azure"
date:           2016-08-19
author_id:      "john_parkinson"
description:    "Hey. It's John. Azure's command line tools are pretty good - today I'm going to show you how easily you can get an express app running in Azure App Service."
categories:     space between
banner:         "/assets/images/blog/azurebg.png"
---


### Rapid deployment of node.js applications to Azure App Service

Who says PaaS and managed infrastrucure isn't easily unavailable for Windows & Azure customers? If you follow a few simple steps you too can deploy a node.js site to azure:

I'm making a couple assumptions here: That you're using unix and you have node.js, npm and express installed, and you've got an azure account set up with an active paid or trial subscription.

#### Installing the Azure Command Line tools

<pre><code class="Bash">
$ npm install -g azure
</code></pre>
<br>
The Azure command line interface can be installed with node package manager (npm). The -g flag tells npm that you'd like the command available 'globally' rather than just isolated to that particular directory or project.

#### Check everything's installed ok

<pre><code class="Bash">
$ azure -v
0.10.0
</code></pre>
<br>
The above command should demonstrate that azure as been correctly installed and is now available in the command line.

#### Logging in!

They use some cool authentication routine here that requires you to login through the browser. You set up your initial 'user' in this way, and subsequently can manage your session with 'azure login -u <username>' and 'azure logout -u <username>'.

<pre><code class="Bash">
$ azure login
info:    Executing command login
\info:    To sign in, use a web browser to open the page https://aka.ms/devicelogin. Enter the code XXXXXXXX to authenticate.
</code></pre>
<br>
Visit the page in your browser.
<img src="/assets/images/blog/azure1.png" alt="A screenshot of a page requesting a code given by the Azure CLI" class="img img-vMargin">
Enter the code given to you in the command prompt.
<img src="/assets/images/blog/azure2.png" alt="A screenshot of a page requesting a username and password" class="img img-vMargin">
Enter your username and password.
<img src="/assets/images/blog/azure3.png" alt="A screenshot of a page showing a successful login attempt" class="img img-vMargin">
Success!
<pre><code class="Bash">
$ azure login
info:    Executing command login
\info:    To sign in, use a web browser to open the page https://aka.ms/devicelogin. Enter the code XXXXXXXX to authenticate.
-info:    Added subscription Main
info:    Setting subscription "Main" as default
+
info:    login command OK
</code></pre>
<br>

#### Creating an express application

Navigate to your 'project' directory and create yourself a shell express application.

<pre><code class="Bash">
$ express app

   create : app
   create : app/package.json
   create : app/app.js
   create : app/public
   create : app/public/images
   create : app/public/stylesheets
   create : app/public/stylesheets/style.css
   create : app/routes
   create : app/routes/index.js
   create : app/routes/users.js
   create : app/views
   create : app/views/index.jade
   create : app/views/layout.jade
   create : app/views/error.jade
   create : app/bin
   create : app/bin/www

   install dependencies:
     $ cd app && npm install

   run the app:
     $ DEBUG=app:* npm start

   create : app/public/javascripts
</code></pre>
<br>

Move to the directory and install the dependencies.

<pre><code class="Bash">
$ cd app && npm install
</code></pre>
<br>

Run the app locally.

<pre><code class="Bash">
$ npm start
</code></pre>
<br>

Check it's working.

<pre><code class="Bash">
$ open http://localhost:3000
</code></pre>
<br>

<img src="/assets/images/blog/azure4.png" alt="A screenshot of a working local epress application" class="img img-vMargin">

#### Deploy the application to Azure App Service

Create the App Service with Azure CLI and choose a location.

<pre><code class="Bash">
$ azure site create space-between-express-azure
info:    Executing command site create
+ Getting sites
+ Getting locations
help:    Choose a location
  1) South Central US
  2) North Europe
  3) West Europe
  4) Southeast Asia
  5) East Asia
  6) West US
  7) East US
  8) Japan West
  9) Japan East
  10) East US 2
  11) North Central US
  12) Central US
  13) Brazil South
  14) Canada Central
  15) Canada East
  16) West Central US
  17) West US 2
  : 2
info:    Creating a new web site at space-between-express-azure.azurewebsites.net
|info:    Created website at space-between-express-azure.azurewebsites.net
+
info:    site create command OK
</code></pre>
<br>

Initialise a git repository, add files & commit changes.

<pre><code class="Bash">
$ git init
$ git add .
$ git commit -am "empty express project"
</code></pre>
<br>

Enable local git deployments in the azure portal & set up credentials.

<img src="/assets/images/blog/azure5.png" alt="A screenshot of the panel required to enable git local deployment and set up a username and password" class="img img-vMargin">

Find git url in App Service properties

<img src="/assets/images/blog/azure6.png" alt="A screenshot showing the git remote url" class="img img-vMargin">

Add Azure remote and push work.

<pre><code class="Bash">
$ git remote add azure https://spacebetweenexpressazure@space-between-express-azure.scm.azurewebsites.net:443/space-between-express-azure.git
$ git push azure master
Password for 'https://spacebetweenexpressazure@space-between-express-azure.scm.azurewebsites.net:443':
Counting objects: 1109, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (1043/1043), done.
Writing objects: 100% (1109/1109), 1.44 MiB | 1.21 MiB/s, done.
Total 1109 (delta 233), reused 0 (delta 0)
remote: Updating branch 'master'.
remote: ...............
remote: Updating submodules.
remote: Preparing deployment for commit id '2e26b20523'.
remote: Generating deployment script.
remote: Generating deployment script for node.js Web Site
remote: Generated deployment script files
remote: Running deployment command...
remote: Handling node.js deployment.
remote: KuduSync.NET from: 'D:\home\site\repository' to: 'D:\home\site\wwwroot'
remote: Deleting file: 'hostingstart.html'
remote: Copying file: 'app.js'
remote: Omitting next output lines...
remote: ..............
remote: Using start-up script bin/www from package.json.
remote: Generated web.config.
remote: The package.json file does not specify node.js engine version constraints.
remote: The node.js application will run with the default node.js version 4.2.3.
remote: Selected npm version 3.5.1
remote: ..
remote: Finished successfully.
remote: Running post deployment command(s)...
remote: Deployment successful.
To https://spacebetweenexpressazure@space-between-express-azure.scm.azurewebsites.net:443/space-between-express-azure.git
 * [new branch]      master -> master
</code></pre>
<br>

#### Browse to your new app

<pre><code class="Bash">
$ azure site browse space-between-express-azure
</code></pre>
<br>

<img src="/assets/images/blog/azure7.png" alt="A screenshot of an express app loaded" class="img img-vMargin">

#### Summary

My experience with Azure CLI is positive. Those of you familiar with heroku or EB will notice that there are a couple of extra steps here but the lack of a procfile is a nice touch with the App Service using the package.json to determine how to run the application in production.




