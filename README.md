# Deaf Sinatra 1 Synchronous Forms 
 
##Learning Competencies 

##Summary 

 We're going to build our first and very simple web application using [Sinatra](http://www.sinatrarb.com/), a lightweight framework for building web applications in Ruby.

This challenge is basically a web version of Deaf Grandma.

## Learning Goals

The main goal of this is to get a feeling for the core interactions in a web application:

- How do HTML forms work?
- How do the browser and the web server pass information back and forth?

## Objectives

### Download the Skeleton Code

Start by downloading [the skeleton code](http://cl.ly/0Z3z432M1T2s).

Uncompress the zip file and explore the directory structure.  Controllers are in `app/controller` and views are in `app/views`.

Run `bundle` to install the necessary gems.  Note that this application uses Postgres for its database, not SQLite.  If there's a database-related error at any point grab a staff member to make sure the machine is configured correctly and Postgres is running.

To launch the web application this command from the application root directory:

```text
$ shotgun config.ru
```

Sinatra, like Rails, is a [Rack-based](http://rack.github.com/) framework, which means the main point of entry is this `config.ru` file.  The `ru` stands for "rackup."

You should now be able to visit your web app at [http://localhost:9393](http://localhost:9393).  `localhost` always refers to "the current machine," so you actually have a tiny web server running on your own computer!

It should look like this:

<p style="text-align: center"><img src="http://f.cl.ly/items/0b1O350M1Z1P2i353B3I/Screen%20Shot%202013-02-17%20at%202.58.54%20PM.png"></p>

If it looks different call a staff member over!

### Make Grandma Talk

First, visit [http://localhost:9393/?grandma=hey!](http://localhost:9393/?grandma=hey!).  Notice how the value of the URL parameter `grandma` is rendered on the page.  Try to find where in the code this logic exists.  How do we extract information from the URL parameters?

The string after a URL that looks like `?param1=value1&param2=value2` is called a **query string**, and it contains the parameters of the request.

Load up the web app, type something into the talk-to-Grandma box, and click "Say it!"  What happens and why?

Finally, change `app/controllers/index.rb` so that Grandma response appropriately.  If you typed in something in ALL CAPS make her respond humorously.  If you typed in something else make her response with "Speak up, kiddo!"

Read the [Sinatra documentation](http://www.sinatrarb.com/intro) on [browser redirect](http://www.sinatrarb.com/intro#Browser%20Redirect) and the [handlers section](http://sinatra-book.gittr.com/#handlers) of the [Sinatra Book](http://sinatra-book.gittr.com/).  You'll want to redirect back to `http://localhost:9292/?grandma=foobar` after the user submits their form.

### Submit your code!

Only your `index.rb` file should have changed.  Upload that to a gist and and submit it! 

##Releases
###Release 0 

##Optimize Your Learning 

##Resources