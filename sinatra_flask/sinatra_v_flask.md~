#Flask Versus Sinatra

##by

##Eric Schles

##Intro

Micro frameworks have been on the rise for a few years.  They give you everything you need and nothing else.  

Sinatra and Flask are two such examples.  They are called Micro frameworks, because they are as minimalistic as possible.  They are primarily for prototyping, as very little is for free.  And there are more than a few installs needed for a fully fledged website, where as other solutions, like Django and Ruby on Rails come with "batteries included".

##Sinatra v Flask

###Routes

Hello world:

basic_sinatra.rb:

```
require 'sinatra'

get '/' do
 'Hello World'
end
```

head to `http://localhost:4567/`

basic_flask.py
```
from flask import Flask

app = Flask(__name__)

@app.route("/",methods=["GET","POST"])
def index():
    return "Hello World"

app.run(
    host="0.0.0.0",
    debug=True
)
```

head to `http://localhost:5000`

These two pieces of code do exactly the same thing.  Both have a single route - "/" which is relative to the base url.  They both return a string - `Hello World`. The similarities continue - both handle what to do at each route, by making use of functions.  

The differences start with the design philosophies of python and ruby -

Python is more concerned with being explicit than Ruby.

Within the Python app:

We see this by having to explicitly run the app in order for the page to load.  This is also evident by the fact that an app needs to be created.

If we look at the ruby app, we require neither the creation of an app or explicitly running the server.  By requiring sinatra, ruby knows we are working with a sinatra app.

##Expanding our apps:

`slightly_more_flask.py`

```
from flask import Flask

app = Flask(__name__)


@app.route("/<name>",methods=["GET","POST"])
def index(name=None):
    return "Hello "+ name

app.run(debug=True)
```

`slightly_more_sinatra.rb`

```
require 'sinatra'

get '/:name' do
  "Hello #{params['name']}"
end
```

Here we see even more of the differences between ruby and python.  Sinatra, implicitly has a params HashMap that allows us to make use of the name parameter.  Where as the flask code expects you to make use of standard python, to pass in the name parameter explicitly.  

##Rendering Templates:

Now that we can do some basic stuff we'll start to do some more realistic stuff: creating basic dynamic websites via templating engines.  Flask and Sinatra follow the MVC framework, so far we've only dealt with the controller aspect of these two frameworks.  With the aid of templating engines, we'll be able to add logic to the views, to create dynamic web experiences, without the aid of JavaScript.

python app:

structure:

```
run.py
flask_app
	__init__.py
	views.py
	templates
		index.html
```

`run.py`:

```
from flask_app import app

app.run(
    debug=True,
    port=5000,
    host="0.0.0.0"
)
```

`views.py`:
```
from flask import render_template, request
from flask_app import app

@app.route("/",methods=["GET","POST"])
@app.route("/<param>",methods=["GET","POST"])
def index(param=None):
    if param:
        return render_template("index.html",param=param)
    return render_template("index.html")
```

`__init__.py`:

```
from flask import Flask

app = Flask(__name__)

from flask_app import views
```
    
`index.html`:

```
<!doctype html>
<html>
<head></head>
<body>
{% if not param %}
<p>Hello there folks!</p>
{% else %}
<p>Hello there, {{param}}</p>
{% endif %}
</body>
</html>
```

ruby app:
structure:

ruby_app
	app.rb
	views
		index.erb

`app.rb`:
```
require 'sinatra'
require 'erb'

get "/:name" do
  erb :index, :locals => {:name => params[:name]}
end

get "/" do
  erb :index, :locals => {:name => false}
end
```

`index.erb`:
```
<!doctype html>
<html>
<head></head>
<body>
  <% if name %>
  <p> Hello there, <%= name %></p>
  <% else %>
  <p> Hello there, folks</p>
  
  <% end %>
</body>
</html>
```

Here we see the similarities and differences between rendering templates:

Routing:
Flask allows you to have multiple routes point to the same function, allowing for very compact code, while sinatra requires each route be handled separately.  

Templating:
Both frameworks allow you to make use of a templating engine to add flow of control, iteration, or anything else programmatic you may desire to your front end.  

Here Sinatra allows for more flexibility, by explicitly calling the templating engine in the code, while Flask assumes you'll use jinja2, and wraps this functionality for you.  Of course, this can be changed, but not as easily as with Sinatra.



