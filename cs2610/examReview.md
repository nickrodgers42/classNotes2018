# Web Dev Exam Review

<!-- ## Quiz 7

1. What is meant by "database schema"?
    * The structure of a database
1. T/F A database table and a class in an object-oriented programming language are conceptually quite similar
    * True
1. What is meant by "Semantic Versioning"?
    * A formal convention for specifying compatibility using a three-part version number: major version, minor version, and patch
1. How many results will Question.objects.get() return?
    * exactly 1; any other quality is treated as an error
1. How many results may Question.objects.filter() return?
    * 0 or more
1. Broadly speaking, what sort of "views" may we have on our data?
    * Detail View, List view -->

## Quiz 8

1. What is a template in Django?
    * Partially-formatted webpage file with defined style and layout, containing regions to be filled in programatically
1. What type of Django template entity is surrounded by {{}}?
    * A variable
1. What is a Django context object?
    * The data we send to the template renderer, packaged in a Python dictionary
1. What is the Django template entity which is placed within {{}} and goes to the right of the | symbol
    * Filter
1. Which Django template tag must you include at the top of your template to enable static content such as CSS files and images?
    * {% load static &}

## Quiz 9

1. T/F A python dictionary imposes a well-defined ordering upon its contents
    * False
1. T/F A dictionary in python is created with angle brackets
    * False
1. What is an HTML Form?
    * A means of enabling users of webpages to communicate back to a webserver
1. At minimum an HTML form should be given which attributes
    * `action` and `method`
1. Which best describes the first line of an HTTP Request?
    * METHOD PATH VERSION
1. The git command to create a tag named `Version1` on object 42f64ff7 is
    * `git tag Version1 42f64ff7`

## Quiz 10

1. T/F POST requests use the Content-Length header
    * True
1. What is a difference between GET and POST?
    * POST requests have a body; GET requests are header-only
1. Which operation performas *implicit* type conversion?
    * 123=='123'
1. Which of the following is ***not*** a comparison operator in JavaScript?
    * <==
1. T/FThe following command prints "Hello World" to the console. `print("Hello World");
    * False

## Quiz 11

1. How do I copy one node (and of of its children nodes) in the DOM (the 'target') and place it elsewhere (the 'destination')?
    * destionation.appendChild(target.cloneNode(true));
1. Which JavaScript method attaches a node to the DOM?
    * .appendChild()
1. How many properties does the following JavaScript object contain?
    ```js
    var person = {
        name: ['Bob', 'Smith'],
        age: 32,
        gender: 'male',
        interests: ['music', 'skiing'],
        bio: function() {
            alert(this.name[0] + ' ' + this.name[1] + ' is ' + this.age + ' years old. He likes ' + this.interests[0] + ' and ' + this.interests[1] + '.');
        },
        greeting: function() {
            alert('Hi! I\'m ' + this.name[0] + '.');
        }
    };
    ```
    * 6
1. What is the result of the following JavaScript expression? `typeof NaN === "number"
    * true
1. T/F Arrays are basically "glorified objects in JavaScript
    * true

Review Django 

* Templates - what they are, how to use them
    * partially formatted webpage w/ regions to fill in
* What is Django?
    * Python-based web framework
* What design paradigm does Django adhere to? 
    * MVC (model view controller)
        * Model - database
        * view - templates
        * controller - 

HTML Forms

* method="" How to send the data
* action="" Where to send the data`<input>`, and related elements

CRUD

* C Create = Make a new item 
* R Read = Retrieve data
* U Update = Modify an already extant item
* D Delete = Remove an item

POST, GET, PUT, DELETE

Idempotent Said of an operation for which repeated evaluations don't change the state of the system
e.g. If you delete row #3 from the DB, I can't tell how many times you called the DELETE operation by looking at the DB after the fact.
e.g. If you create a record in the DB 6 times, the system looks different than if you created an object 60 times

Safe The operation has no effect on the system

HTTP requests: 
* Syntax - what does the 1st line of the req. look like?
    * where would the payload go? 
* Headers - which headers correspond to which requests? 
* What is "URL encoding"?

How to ask questions: review that essay