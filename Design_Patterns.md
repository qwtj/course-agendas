# I. Introduction to Design Patterns

## Understanding Design Pattern Concepts

### Defining Design Patterns

*   Reusable solutions to common software design problems.
*   Templates for structuring code.
*   Vocabulary for discussing design.

### Elements of a Design Pattern

*   Name: Identifying the pattern.
*   Problem: The context in which the pattern applies.
*   Solution: The general arrangement of objects that solves the problem.
*   Consequences: The results and trade-offs of using the pattern.

## Categorizing Design Patterns

### Creational Patterns

*   Deal with object creation mechanisms.
*   Examples: Singleton, Factory Method, Abstract Factory, Builder, Prototype.

### Structural Patterns

*   Deal with object composition and relationships.
*   Examples: Adapter, Bridge, Composite, Decorator, Facade, Flyweight, Proxy.

### Behavioral Patterns

*   Deal with object interaction and algorithms.
*   Examples: Chain of Responsibility, Command, Interpreter, Iterator, Mediator, Memento, Observer, State, Strategy, Template Method, Visitor.

# II. Creational Design Patterns

## Singleton Pattern

### Understanding Singleton

*   Ensuring a class has only one instance.
*   Providing a global point of access to it.

### Implementation of Singleton

*   Private constructor to prevent instantiation from outside the class.
*   Static instance variable to hold the single instance.
*   Static method to provide access to the instance.

```java
public class Singleton {
    private static Singleton instance;
    private Singleton() {}
    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}
```

### Thread Safety Considerations

*   Implementing thread-safe Singleton using `synchronized` or double-checked locking.

```java
public class Singleton {
    private static volatile Singleton instance;
    private Singleton() {}
    public static Singleton getInstance() {
        if (instance == null) {
            synchronized (Singleton.class) {
                if (instance == null) {
                    instance = new Singleton();
                }
            }
        }
        return instance;
    }
}
```

## Factory Method Pattern

### Understanding Factory Method

*   Defining an interface for creating an object.
*   Letting subclasses decide which class to instantiate.

### Implementing Factory Method

*   Creating a product interface or abstract class.
*   Creating concrete product classes.
*   Creating a creator interface or abstract class with a factory method.
*   Creating concrete creator classes that override the factory method to return different product types.

```java
//Product Interface
interface Product {
    String operation();
}

//Concrete Products
class ConcreteProductA implements Product {
    public String operation() {
        return "ConcreteProductA";
    }
}

class ConcreteProductB implements Product {
    public String operation() {
        return "ConcreteProductB";
    }
}

//Creator Interface
interface Creator {
    Product factoryMethod();
}

//Concrete Creators
class ConcreteCreatorA implements Creator {
    public Product factoryMethod() {
        return new ConcreteProductA();
    }
}

class ConcreteCreatorB implements Creator {
    public Product factoryMethod() {
        return new ConcreteProductB();
    }
}
```

## Abstract Factory Pattern

### Understanding Abstract Factory

*   Providing an interface for creating families of related or dependent objects.
*   Without specifying their concrete classes.

### Implementing Abstract Factory

*   Defining abstract product interfaces (e.g., `AbstractProductA`, `AbstractProductB`).
*   Creating concrete product classes implementing the abstract product interfaces (e.g., `ConcreteProductA1`, `ConcreteProductA2`, `ConcreteProductB1`, `ConcreteProductB2`).
*   Defining an abstract factory interface.
*   Creating concrete factory classes that implement the abstract factory and create concrete product families.

## Builder Pattern

### Understanding Builder

*   Separating the construction of a complex object from its representation.
*   Allowing the same construction process to create different representations.

### Implementing Builder

*   Defining a `Product` class.
*   Creating an `AbstractBuilder` interface that defines methods for building the product's parts.
*   Creating concrete builder classes that implement the `AbstractBuilder` and provide different ways to build the product.
*   Creating a `Director` class that controls the building process.

```java
// Product
class Computer {
    private String CPU;
    private String RAM;
    public void setCPU(String CPU) { this.CPU = CPU; }
    public void setRAM(String RAM) { this.RAM = RAM; }
}

// Builder
interface ComputerBuilder {
    void buildCPU();
    void buildRAM();
    Computer getComputer();
}

// Concrete Builder
class GamingComputerBuilder implements ComputerBuilder {
    private Computer computer = new Computer();
    public void buildCPU() { computer.setCPU("High-end CPU"); }
    public void buildRAM() { computer.setRAM("32GB"); }
    public Computer getComputer() { return computer; }
}

// Director
class Director {
    private ComputerBuilder builder;
    public Director(ComputerBuilder builder) { this.builder = builder; }
    public Computer construct() {
        builder.buildCPU();
        builder.buildRAM();
        return builder.getComputer();
    }
}
```

## Prototype Pattern

### Understanding Prototype

*   Creating new objects by copying an existing object (the prototype).
*   Useful when creating objects is costly or complex.

### Implementing Prototype

*   Implementing a `clone()` method (typically from `Cloneable` interface) that creates a copy of the object.
*   Providing a registry or manager to hold prototypes.

```java
class Prototype implements Cloneable {
    private String data;
    public Prototype(String data) { this.data = data; }
    public Prototype clone() {
        try {
            return (Prototype) super.clone();
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }
    public String getData() { return data; }
}

// Usage
Prototype prototype = new Prototype("Original Data");
Prototype clone = prototype.clone();
clone.data = "Modified Data";
```

# III. Structural Design Patterns

## Adapter Pattern

### Understanding Adapter

*   Allowing classes with incompatible interfaces to work together.
*   Converting the interface of a class into another interface clients expect.

### Implementing Adapter

*   Identifying the target interface (the interface the client expects).
*   Identifying the adaptee (the class with the incompatible interface).
*   Creating an adapter class that implements the target interface and holds a reference to the adaptee.
*   Implementing the target interface methods by delegating to the adaptee's methods, adapting the data as needed.

## Bridge Pattern

### Understanding Bridge

*   Decoupling an abstraction from its implementation.
*   Allowing the abstraction and implementation to vary independently.

### Implementing Bridge

*   Creating an abstraction interface or abstract class.
*   Creating an implementation interface.
*   Creating concrete abstraction classes that hold a reference to an implementation object.
*   Creating concrete implementation classes that implement the implementation interface.

## Composite Pattern

### Understanding Composite

*   Treating individual objects and compositions of objects uniformly.
*   Representing part-whole hierarchies.

### Implementing Composite

*   Creating a component interface or abstract class that defines the common operations for both individual objects (leaves) and compositions of objects (composites).
*   Creating leaf classes that implement the component interface and represent individual objects.
*   Creating a composite class that implements the component interface, holds a collection of child components, and implements operations that operate on the children.

## Decorator Pattern

### Understanding Decorator

*   Adding responsibilities to objects dynamically and transparently.
*   Providing a flexible alternative to subclassing for extending functionality.

### Implementing Decorator

*   Creating a component interface or abstract class that defines the interface for objects that can have responsibilities added to them.
*   Creating concrete component classes that implement the component interface and represent the objects to which responsibilities can be added.
*   Creating a decorator abstract class that implements the component interface and holds a reference to a component object.
*   Creating concrete decorator classes that extend the decorator abstract class and add specific responsibilities to the component object.

## Facade Pattern

### Understanding Facade

*   Providing a simplified interface to a complex subsystem.
*   Hiding the complexity of the subsystem from the client.

### Implementing Facade

*   Identifying the subsystem components.
*   Creating a facade class that provides a simplified interface to the subsystem.
*   The facade class encapsulates the interactions with the subsystem components.

## Flyweight Pattern

### Understanding Flyweight

*   Using sharing to support large numbers of fine-grained objects efficiently.
*   Distinguishing between intrinsic (shared) and extrinsic (unshared) state.

### Implementing Flyweight

*   Creating a flyweight interface or abstract class that declares the operations that can be performed on flyweight objects.
*   Creating concrete flyweight classes that implement the flyweight interface and store intrinsic state.
*   Creating a flyweight factory class that manages flyweight objects and ensures that they are shared.
*   The client stores extrinsic state and passes it to the flyweight objects when invoking their operations.

## Proxy Pattern

### Understanding Proxy

*   Providing a surrogate or placeholder for another object to control access to it.
*   Different types of proxies: virtual, remote, protection.

### Implementing Proxy

*   Creating a subject interface or abstract class that defines the common interface for both the real subject and the proxy.
*   Creating a real subject class that implements the subject interface and represents the actual object.
*   Creating a proxy class that implements the subject interface and holds a reference to the real subject.
*   The proxy class controls access to the real subject by performing actions such as lazy initialization, access control, or remote communication.

# IV. Behavioral Design Patterns

## Chain of Responsibility Pattern

### Understanding Chain of Responsibility

*   Avoiding coupling the sender of a request to its receiver.
*   Giving multiple objects a chance to handle the request.
*   Chaining the receiving objects and passing the request along the chain until an object handles it.

### Implementing Chain of Responsibility

*   Define a handler interface with a method to handle requests and a reference to the next handler in the chain.
*   Implement concrete handler classes that implement the handler interface and attempt to handle the request, or pass it on to the next handler.
*   The client submits the request to the first handler in the chain.

## Command Pattern

### Understanding Command

*   Encapsulating a request as an object.
*   Allowing parameterization of clients with different requests.
*   Queueing or logging requests, and supporting undoable operations.

### Implementing Command

*   Define a command interface with an `execute()` method.
*   Implement concrete command classes that implement the command interface and encapsulate a specific request.
*   Create an invoker class that holds a command object and calls its `execute()` method to execute the request.
*   Create a receiver class that performs the actual work when the command is executed.

## Interpreter Pattern

### Understanding Interpreter

*   Defining a grammatical representation for a language.
*   Providing an interpreter to deal with this grammar.

### Implementing Interpreter

*   Define an expression interface or abstract class.
*   Implement concrete expression classes that represent the grammar rules.
*   Create a context class that contains information about the interpretation process.
*   The client creates a syntax tree of expression objects and then calls the `interpret()` method on the root of the tree.

## Iterator Pattern

### Understanding Iterator

*   Providing a way to access the elements of an aggregate object sequentially without exposing its underlying representation.

### Implementing Iterator

*   Define an iterator interface with methods for accessing the next element, checking if there are more elements, and resetting the iterator.
*   Define an aggregate interface with a method to create an iterator.
*   Implement concrete iterator classes that implement the iterator interface and provide access to the elements of a specific aggregate.
*   Implement concrete aggregate classes that implement the aggregate interface and create the corresponding iterator.

## Mediator Pattern

### Understanding Mediator

*   Defining an object that encapsulates how a set of objects interact.
*   Promoting loose coupling by keeping objects from referring to each other explicitly.
*   Letting their interaction be mediated by the mediator object.

### Implementing Mediator

*   Define a mediator interface that defines the methods for communication between colleagues.
*   Implement concrete mediator classes that implement the mediator interface and coordinate the interactions between colleagues.
*   Define a colleague interface or abstract class.
*   Implement concrete colleague classes that hold a reference to the mediator and communicate with other colleagues through the mediator.

## Memento Pattern

### Understanding Memento

*   Without violating encapsulation, capturing and externalizing an object's internal state.
*   So that the object can be restored to this state later.

### Implementing Memento

*   Define a memento class that stores the state of the originator object.
*   The memento class should be opaque to all objects except the originator.
*   Define an originator class that can create a memento containing its current state and restore its state from a memento.
*   Define a caretaker class that is responsible for storing and retrieving mementos.

## Observer Pattern

### Understanding Observer

*   Defining a one-to-many dependency between objects.
*   So that when one object changes state, all its dependents are notified and updated automatically.

### Implementing Observer

*   Define a subject interface or abstract class that defines methods for adding, removing, and notifying observers.
*   Implement concrete subject classes that implement the subject interface and maintain a list of observers.
*   When the subject's state changes, it notifies all observers.
*   Define an observer interface that defines a method to be called when the subject's state changes.
*   Implement concrete observer classes that implement the observer interface and update their state accordingly.

## State Pattern

### Understanding State

*   Allowing an object to alter its behavior when its internal state changes.
*   The object will appear to change its class.

### Implementing State

*   Define a state interface or abstract class that defines the methods that represent the object's behavior in a particular state.
*   Implement concrete state classes that implement the state interface and provide the specific behavior for each state.
*   Create a context class that holds a reference to the current state object and delegates requests to the state object.
*   The context class can also have methods for changing the state.

## Strategy Pattern

### Understanding Strategy

*   Defining a family of algorithms.
*   Encapsulating each one.
*   Making them interchangeable.
*   Strategy lets the algorithm vary independently from clients that use it.

### Implementing Strategy

*   Define a strategy interface or abstract class that defines the common interface for all algorithms.
*   Implement concrete strategy classes that implement the strategy interface and provide a specific implementation of the algorithm.
*   Create a context class that holds a reference to a strategy object and delegates the algorithm to the strategy object.
*   The client can choose which strategy to use by setting the context's strategy object.

## Template Method Pattern

### Understanding Template Method

*   Defining the skeleton of an algorithm in an operation.
*   Deferring some steps to subclasses.
*   Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.

### Implementing Template Method

*   Define an abstract class with a template method that defines the skeleton of the algorithm.
*   The template method calls abstract methods that are implemented by subclasses.
*   The subclasses implement the abstract methods to provide the specific steps of the algorithm.

## Visitor Pattern

### Understanding Visitor

*   Representing an operation to be performed on the elements of an object structure.
*   Visitor lets you define a new operation without changing the classes of the elements on which it operates.

### Implementing Visitor

*   Define a visitor interface that defines the visit methods for each element type.
*   Implement concrete visitor classes that implement the visitor interface and provide the specific implementation of the operation for each element type.
*   Define an element interface that defines an `accept()` method that takes a visitor as an argument.
*   Implement concrete element classes that implement the element interface and implement the `accept()` method by calling the appropriate visit method on the visitor object.
*   Create an object structure that contains the elements. The client traverses the object structure and calls the `accept()` method on each element, passing a visitor object.
