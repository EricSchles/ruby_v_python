#Django Versus Rails

##Intro

Sinatra and Flask both suffer from one simple problem: they are hard to scale.  With Rails and Django, there is a ton of design decisions that have been made for you, allowing you to go from idea to scale very, very fast.  This is in part because these web frameworks, come with many common functions and tasks already implemented.  Additionally configuration and convention have been handled for you, so as long as you are doing something standard, building is easy.

I will say that being creative is harder with Django and Rails, mostly because you have to work within the conventions set by these two frameworks, and if what you want to do, doesn't make sense with these set of conventions, building will be a struggle.

As a concrete example, say you want to develope a website, but want to do this in as functional a way as possible, this will be pretty tough with either framework since both are all about object oriented programming.

As an aside, if this is your intention, haskell or node.js might be worth looking into.

##Django v Rails

###The basics

####Running the server
For both Django and Rails they set all the conventions for you for the structure of your app.  

For Django this is done with: `django-admin startproject django_app`
For Rails this is done with: `rails new rails_app`

The next thing to do is make sure both worked:

cd into the django_app and run the following:

python manage.py runserver

point your browser at - http://localhost:8000

cd into the rails_app and run the following:

rails server

point your browser at - http://localhost:3000

####Creating Models / Our first migration

Both Rails and Django are models centric, unlike Flask and Sinatra which are controller centric.  This is clear from their design, and also from where the documentation starts :)

#####Creating A Model In Django:

Django comes with everything you need to run your first migration.  If you want to change the database edit settings.py.  For our purposes we'll make use of the built-in data store - sqlite

When you are done, go ahead and run:

`python manage.py migrate`

This will create your database, locally.  _Hurray_

Now we'll need to create an app, we do this with the following:

`python manage.py startapp basic`

This gives us among other things a file named models.py, which is where we will write our first model.

Now, we need to add our newly created app to our settings.py file in INSTALLED_APPS like so:

```
INSTALLED_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'basic', #our new app is now installed
)
```
Now we are free to go about adding models:

basic/models.py:

```
from django.db import models

# Create your models here.
class Topic(models.Model):
    title = models.CharField(max_length=200)
    description = models.CharField(max_length=10000)

```

Next we add our model to basic/admin.py:

```
from django.contrib import admin

from .models import Topic

# Register your models here.

class TopicAdmin(admin.ModelAdmin):
    fields = ['title','description']

admin.site.register(Topic,TopicAdmin)

```

Finally, we need only migrate our database as follows:

`python manage.py makemigrations basic`
`python manage.py sqlmigrate basic 0001`
`python manage.py migrate`

Now that we have a model, we can see it in the built-in admin panel:

Simply run:

`python manage.py createsuperuser`

Then start the server back up with:

`python manage.py runserver`

Now we should have access to our Topic, free to add data or remove it!

In fact, Syncano makes use of a very fancy version of this same wonderful and amazing tool to add and subtract data, for experimentation with your web app.  This is because our backend is written in Python/Django.


#####Creating A Model In Rails:

To do the same thing in Rails, is objectively much easier:

Head over to the top level of your Rails app and run:

`rails generate scaffold topic title:string description:text`

Then simply run:

`rake db:migrate`

Which will handle all the migration stuff we did in Django.

Now do:

`rails server`

And point your browser at:

`http://localhost:3000/topics`

You can now freely add topics as you please.

While Rails makes things, very very easy, that's not always the best thing, it's a choice.  Rails made a TON of decisions for you, so if you want to do things the way Rails wants you to, it's very easy, but doing anything else, means a lot of fighting with the framework.  Django gives you more control, but that means you have to do more work on your own.  Neither is correct, but both have advantages and drawbacks.  For someone that knows either framework well, they'll be able to accomplish the exact same thing, but in different, often very different ways.

##References/going further:

Please check out these great tutorials for more:

[Django-tutorial](https://docs.djangoproject.com/en/1.8/intro/tutorial01/)
[RoR](http://docs.railsbridge.org/intro-to-rails/intro-to-rails)
