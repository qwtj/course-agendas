# I. Introduction to Flask

## Understanding Web Frameworks

### Role of Web Frameworks
    *  Simplify web development.
    *  Provide structure and tools for common tasks.

### MVC (Model-View-Controller) Architecture
    *  Understanding the components: Model, View, Controller.
    *  How Flask aligns with the MVC pattern (or its variants).

## Setting up a Flask Environment

### Installing Python and pip
    *  Download and install Python.
    *  Verifying pip installation: `pip --version`.

### Creating a Virtual Environment
    *  Purpose of virtual environments.
    *  Creating a virtual environment: `python -m venv venv`.
    *  Activating the environment:
        *   Windows: `venv\Scriptsctivate`
        *   macOS/Linux: `source venv/bin/activate`

### Installing Flask
    *  Using pip to install Flask: `pip install Flask`.
    *  Verifying the installation: `python -c "import flask; print(flask.__version__)"`.

# II. Basic Flask Application

## Creating a Basic Flask Application File

### Importing the Flask Class
    *  `from flask import Flask`

### Creating a Flask App Instance
    *  `app = Flask(__name__)`
    *  Understanding the `__name__` argument.

### Defining Routes and Views

### Using the `@app.route` Decorator
    *  Associating URLs with Python functions.
    *  Example: `@app.route('/')`

### Defining View Functions
    *  Returning simple strings from view functions.
    *  Example:
    ```python
    from flask import Flask

    app = Flask(__name__)

    @app.route('/')
    def hello_world():
        return 'Hello, World!'
    ```

### Running the Flask Application

### Using `app.run()`
    *  `app.run(debug=True)`
    *  Understanding the `debug` mode.

### Accessing the Application in a Browser
    *  Default address: `http://127.0.0.1:5000/`.

## Handling Different Routes

### Defining Multiple Routes
    *  Creating separate routes for different pages.
    *  Example: `@app.route('/about')` and `@app.route('/contact')`

### Dynamic Routes with Variables

### Using `<variable_name>` in Routes
    *  Passing values from the URL to the view function.
    *  Example: `@app.route('/user/<username>')`

### Specifying Data Types in Routes
    *  Using `<int:variable_name>` for integers and `<float:variable_name>` for floating-point numbers.
    *  Example: `@app.route('/post/<int:post_id>')`

### Accessing Route Variables in the View Function
    *  Passing the variable as an argument to the view function.
    *  Example:
    ```python
    from flask import Flask

    app = Flask(__name__)

    @app.route('/user/<username>')
    def show_user_profile(username):
        return f'User: {username}'

    @app.route('/post/<int:post_id>')
    def show_post(post_id):
        return f'Post ID: {post_id}'
    ```

# III. Templates and Static Files

## Introduction to Jinja2 Templating

### Purpose of Templating Engines
    *  Separating presentation logic from application logic.

### Jinja2 Syntax Basics
    *  Variables: `{{ variable }}`
    *  Control structures: `{% if condition %}`, `{% for item in list %}`

## Rendering Templates

### Using `render_template()`
    *  Importing `render_template` from `flask`.
    *  `from flask import render_template`

### Creating Template Files
    *  Storing templates in a `templates` folder.
    *  Naming convention: `template_name.html`

### Passing Variables to Templates
    *  Passing data as keyword arguments to `render_template()`.
    *  Example: `return render_template('index.html', name=username)`

### Example Template:
    ```html
    <!DOCTYPE html>
    <html>
    <head>
        <title>My Page</title>
    </head>
    <body>
        <h1>Hello, {{ name }}!</h1>
    </body>
    </html>
    ```

## Working with Static Files

### Purpose of Static Files
    *  Serving images, CSS, JavaScript, etc.

### Storing Static Files
    *  Storing static files in a `static` folder.

### Referencing Static Files in Templates
    *  Using the `url_for()` function.
    *  `url_for('static', filename='style.css')`

### Example: Linking a CSS File
    ```html
    <!DOCTYPE html>
    <html>
    <head>
        <title>My Page</title>
        <link rel="stylesheet" type="text/css" href="{{ url_for('static', filename='style.css') }}">
    </head>
    <body>
        <h1>Hello, World!</h1>
    </body>
    </html>
    ```

# IV. Forms and User Input

## Handling Form Data

### Creating HTML Forms
    *  Using the `<form>` element.
    *  Specifying the `action` and `method` attributes.

### Form Methods: GET vs. POST
    *  Understanding the differences between `GET` and `POST` requests.

### Accessing Form Data in Flask

### Using `request.form`
    *  Importing `request` from `flask`.
    *  `from flask import request`
    *  Accessing form fields: `request.form['field_name']`

### Example: Processing Form Data
    ```python
    from flask import Flask, request, render_template

    app = Flask(__name__)

    @app.route('/login', methods=['GET', 'POST'])
    def login():
        if request.method == 'POST':
            username = request.form['username']
            password = request.form['password']
            return f'Username: {username}, Password: {password}'
        return render_template('login.html')
    ```

### login.html Example

```html
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username"><br><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
```

## Form Validation

### Why Form Validation is Important
    *  Preventing malicious input and data integrity.

### Basic Validation Techniques

### Checking for Empty Fields
    *  Using Python's `if` statements.

### Data Type Validation
    *  Ensuring that the input matches the expected data type (e.g., integer, email).

### Using Flask-WTF for Form Handling

### Installing Flask-WTF
    *  `pip install Flask-WTF`

### Defining Forms with Flask-WTF
    *  Creating a form class using `FlaskForm`.
    *  Defining form fields with validators.

### Example:
    ```python
    from flask_wtf import FlaskForm
    from wtforms import StringField, PasswordField, SubmitField
    from wtforms.validators import DataRequired

    class LoginForm(FlaskForm):
        username = StringField('Username', validators=[DataRequired()])
        password = PasswordField('Password', validators=[DataRequired()])
        submit = SubmitField('Sign In')
    ```

### Integrating Flask-WTF Forms in Views
    *  Creating a form instance in the view function.
    *  Passing the form to the template.
    *  Validating the form using `form.validate_on_submit()`.

# V. Databases

## Connecting to a Database

### Choosing a Database
    *  SQLite, PostgreSQL, MySQL, etc.

### Installing a Database Driver
    *  Example: `pip install psycopg2-binary` for PostgreSQL.

### Connecting to the Database in Flask
    *  Using `sqlite3` for SQLite or other appropriate libraries.
    *  Example using SQLite:
    ```python
    import sqlite3

    conn = sqlite3.connect('mydatabase.db')
    cursor = conn.cursor()
    ```

## Defining Models

### Using an ORM (Object-Relational Mapper)
    *  SQLAlchemy, Peewee, etc.

### Why Use an ORM?
    *  Abstraction of database interactions.
    *  Improved code readability and maintainability.

### Defining Models with SQLAlchemy
    *   Installing SQLAlchemy: `pip install Flask-SQLAlchemy`
    *   Using Flask-SQLAlchemy for database integration.
    *   Defining model classes that represent database tables.
    *   Example:

    ```python
    from flask import Flask
    from flask_sqlalchemy import SQLAlchemy

    app = Flask(__name__)
    app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///mydatabase.db'
    db = SQLAlchemy(app)

    class User(db.Model):
        id = db.Column(db.Integer, primary_key=True)
        username = db.Column(db.String(80), unique=True, nullable=False)
        email = db.Column(db.String(120), unique=True, nullable=False)

        def __repr__(self):
            return f'<User {self.username}>'
    ```

## Performing CRUD Operations (Create, Read, Update, Delete)

### Creating Records
    *  Creating new model instances and saving them to the database.
    *  Example:
    ```python
    user = User(username='john_doe', email='john@example.com')
    db.session.add(user)
    db.session.commit()
    ```

### Reading Records
    *  Querying the database to retrieve records.
    *  Example:
    ```python
    user = User.query.filter_by(username='john_doe').first()
    ```

### Updating Records
    *  Modifying existing records in the database.
    *  Example:
    ```python
    user.email = 'new_email@example.com'
    db.session.commit()
    ```

### Deleting Records
    *  Removing records from the database.
    *  Example:
    ```python
    db.session.delete(user)
    db.session.commit()
    ```
