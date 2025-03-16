# I. Introduction to Meteor

## Understanding Meteor's Core Principles

### Isomorphic JavaScript
*   Definition: Code that runs on both the client and the server.
*   Benefits: Code reuse, SEO improvements, performance gains.
*   Example: Sharing validation logic between client and server.

### Reactive Programming
*   Definition: Data changes automatically update the user interface.
*   How Meteor implements reactivity: Using MongoDB's oplog and publish/subscribe patterns.
*   Example: A real-time leaderboard that updates when scores change.

## Setting up a Meteor Development Environment

### Installing Meteor
*   Command: `curl https://install.meteor.com/ | sh`
*   Verifying installation: `meteor --version`

### Creating a New Meteor Project
*   Command: `meteor create myapp`
*   Directory structure: Understanding the `client`, `server`, `imports`, and `public` folders.

### Running the Development Server
*   Command: `meteor run`
*   Accessing the app in your browser: `http://localhost:3000`

# II. Building the User Interface with Blaze

## Understanding Blaze Templates

### Creating Basic Templates
*   Syntax: Using `<template>` tags in HTML files.
*   Example:

    ```html
    <template name="hello">
        <h1>Hello, {{name}}!</h1>
    </template>
    ```

### Data Contexts
*   Definition: Data available within a template.
*   Passing data to templates: Using helpers.
*   Example: Defining a helper to return the user's name.

    ```javascript
    Template.hello.helpers({
        name: function () {
            return "World";
        }
    });
    ```

### Event Handling
*   Syntax: Using `{{> TemplateName event="eventName"}}`
*   Example: Handling a button click.

    ```html
    <template name="myButton">
        <button>Click Me</button>
    </template>
    ```

    ```javascript
    Template.myButton.events({
        'click button': function (event, template) {
            alert('Button clicked!');
        }
    });
    ```

## Working with Forms

### Creating Forms in Blaze
*   Using HTML `<form>` elements.
*   Handling form submissions with events.

### Input Binding
*   Connecting form inputs to data.
*   Example: Binding an input field to a reactive variable.

    ```html
    <template name="myForm">
        <input type="text" value="{{myValue}}">
    </template>
    ```

    ```javascript
    Template.myForm.helpers({
        myValue: function () {
            return Session.get('inputValue');
        }
    });

    Template.myForm.events({
        'keyup input': function (event, template) {
            Session.set('inputValue', event.target.value);
        }
    });
    ```

# III. Data Management with MongoDB and Meteor

## Understanding MongoDB Integration

### The Minimongo Client-Side Database
*   Definition: A client-side in-memory database that mirrors a subset of the server's MongoDB database.
*   How Minimongo enables offline access and reactivity.

### Defining Collections
*   Syntax: `MyCollection = new Mongo.Collection('my_collection');`
*   Creating collections on both the client and server.

### Inserting, Updating, and Removing Data
*   Methods: `insert()`, `update()`, `remove()`
*   Example:

    ```javascript
    MyCollection.insert({ name: 'John', age: 30 });
    MyCollection.update({ name: 'John' }, { $set: { age: 31 } });
    MyCollection.remove({ name: 'John' });
    ```

## Publish and Subscribe

### Publishing Data from the Server
*   Method: `Meteor.publish('publicationName', function () { return MyCollection.find(); });`
*   Security considerations: Restricting data access.

### Subscribing to Data on the Client
*   Method: `Meteor.subscribe('publicationName');`
*   Using `Tracker.autorun` to react to data changes.

### Advanced Publication Techniques
*   Using parameters to filter published data.
*   Creating dynamic publications based on user roles.

# IV. Authentication and Authorization

## Implementing User Authentication

### Using the `accounts` Package
*   Adding the package: `meteor add accounts-password`
*   Creating user accounts: `Accounts.createUser()`
*   Logging in users: `Meteor.loginWithPassword()`

### Handling User Sessions
*   Using `Meteor.userId()` to identify the current user.
*   Understanding session management.

### Customizing Authentication Flows
*   Using `accounts-ui` for a pre-built UI.
*   Implementing custom login forms.

## Authorization and Access Control

### Roles and Permissions
*   Using the `alanning:roles` package.
*   Assigning roles to users: `Roles.addUsersToRoles()`
*   Checking user roles: `Roles.userIsInRole()`

### Securing Methods
*   Checking user permissions before executing server-side methods.
*   Example:

    ```javascript
    Meteor.methods({
        'updateProfile': function (profile) {
            if (!Roles.userIsInRole(this.userId, 'admin')) {
                throw new Meteor.Error('not-authorized');
            }
            // Update profile logic here
        }
    });
    ```

# V. Methods and Server-Side Logic

## Defining Methods

### Syntax: `Meteor.methods({ 'methodName': function () { ... } });`
*   Running code on the server.
*   Accessing the database securely.
*   Example: A method to increment a counter.

    ```javascript
    Meteor.methods({
        'incrementCounter': function () {
            Counters.update({}, { $inc: { value: 1 } });
        }
    });
    ```

## Calling Methods from the Client

### Using `Meteor.call('methodName', arguments, callback);`
*   Passing data to the server.
*   Handling method results and errors.

### Error Handling
*   Using `try...catch` blocks on the server.
*   Returning errors to the client.

# VI. Packaging and Deployment

## Understanding Meteor Packages

### Core Packages
*   `meteor-base`, `mobile-experience`, `mongo`, `blaze-html-templates`, `reactive-var`, `jquery`, `tracker`, `es5-shim`, `ecmascript`

### Adding and Removing Packages
*   Commands: `meteor add packageName`, `meteor remove packageName`

### Creating Custom Packages
*   Structuring a package directory.
*   Defining package dependencies.

## Deploying a Meteor Application

### Deploying to Meteor Cloud
*   Creating a Meteor Cloud account.
*   Deploying with `meteor deploy myapp.meteor.com`

### Deploying to Other Platforms
*   Using `meteor build` to create a deployable bundle.
*   Deploying to Galaxy, AWS, or Heroku.
