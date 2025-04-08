# I. Introduction to Design Patterns

## Understanding Design Patterns

### Definition and Purpose

*   What problems do design patterns solve?
*   Benefits of using design patterns: reusability, maintainability, scalability.
*   Design patterns vs. algorithms vs. data structures.

### History and Evolution of Design Patterns

*   The Gang of Four (GoF) book: *Design Patterns: Elements of Reusable Object-Oriented Software*.
*   Evolution of design patterns in different programming paradigms.

## Core Principles of Object-Oriented Design

### Abstraction

*   Hiding complex implementation details.
*   Providing a simplified interface.

### Encapsulation

*   Bundling data and methods that operate on that data within a class.
*   Protecting internal state from external access.

### Inheritance

*   Creating new classes from existing classes.
*   Code reuse and polymorphism.

### Polymorphism

*   The ability of an object to take on many forms.
*   Method overriding and interface implementation.

# II. Creational Patterns

## Understanding Creational Patterns

### Purpose and Applicability

*   Abstracting the instantiation process.
*   When to use creational patterns.

### Types of Creational Patterns

*   Singleton, Factory Method, Abstract Factory, Builder, Prototype.

## Singleton Pattern

### Intent and Motivation

*   Ensuring a class has only one instance and providing a global point of access.

### Implementation

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

*   Using synchronized blocks or double-checked locking.
*   Eager initialization vs. lazy initialization.

## Factory Method Pattern

### Intent and Motivation

*   Defining an interface for creating objects, but letting subclasses decide which class to instantiate.

### Implementation

```java
interface Product {
    void operation();
}

class ConcreteProductA implements Product {
    public void operation() { System.out.println("Product A"); }
}

interface Creator {
    Product factoryMethod();
}

class ConcreteCreatorA implements Creator {
    public Product factoryMethod() { return new ConcreteProductA(); }
}
```

### Benefits and Drawbacks

*   Decoupling client code from concrete classes.
*   Increased complexity due to additional classes.

## Abstract Factory Pattern

### Intent and Motivation

*   Providing an interface for creating families of related objects without specifying their concrete classes.

### Implementation

```java
interface AbstractFactory {
    AbstractProductA createProductA();
    AbstractProductB createProductB();
}

interface AbstractProductA {}
interface AbstractProductB {}
```

### Scenarios and Use Cases

*   Creating UI components for different operating systems (Windows, macOS).

## Builder Pattern

### Intent and Motivation

*   Separating the construction of a complex object from its representation.
*   Allowing the same construction process to create different representations.

### Implementation

```java
class Product {
    private String part1;
    private String part2;

    public void setPart1(String part1) { this.part1 = part1; }
    public void setPart2(String part2) { this.part2 = part2; }
}

interface Builder {
    void buildPart1();
    void buildPart2();
    Product getResult();
}
```

### Advantages and Disadvantages

*   Fine-grained control over object construction.
*   Increased number of classes.

## Prototype Pattern

### Intent and Motivation

*   Creating new objects by copying an existing object (the prototype).

### Implementation

```java
interface Prototype extends Cloneable {
    Prototype clone();
    void operation();
}

class ConcretePrototype implements Prototype {
    public Prototype clone() {
        try {
            return (Prototype) super.clone();
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }
    public void operation() { System.out.println("Prototype Operation"); }
}
```

### Shallow vs. Deep Copy

*   Understanding the difference between copying references and copying objects.

# III. Structural Patterns

## Understanding Structural Patterns

### Purpose and Applicability

*   Dealing with object composition and relationships.
*   When to use structural patterns.

### Types of Structural Patterns

*   Adapter, Bridge, Composite, Decorator, Facade, Flyweight, Proxy.

## Adapter Pattern

### Intent and Motivation

*   Allowing classes with incompatible interfaces to work together.

### Implementation

```java
interface Target {
    void request();
}

class Adaptee {
    public void specificRequest() { System.out.println("Adaptee's specific request"); }
}

class Adapter implements Target {
    private Adaptee adaptee;

    public Adapter(Adaptee adaptee) { this.adaptee = adaptee; }

    public void request() { adaptee.specificRequest(); }
}
```

### Class Adapter vs. Object Adapter

*   Using inheritance vs. composition.

## Bridge Pattern

### Intent and Motivation

*   Decoupling an abstraction from its implementation so that the two can vary independently.

### Implementation

```java
interface Implementor {
    void operationImpl();
}

abstract class Abstraction {
    protected Implementor implementor;

    protected Abstraction(Implementor implementor) { this.implementor = implementor; }

    public abstract void operation();
}
```

### Benefits and Drawbacks

*   Improved flexibility and extensibility.
*   Increased complexity.

## Composite Pattern

### Intent and Motivation

*   Composing objects into tree structures to represent part-whole hierarchies.

### Implementation

```java
interface Component {
    void operation();
}

class Leaf implements Component {
    public void operation() { System.out.println("Leaf"); }
}

class Composite implements Component {
    private List<Component> children = new ArrayList<>();

    public void add(Component child) { children.add(child); }

    public void remove(Component child) { children.remove(child); }

    public void operation() {
        for (Component child : children) {
            child.operation();
        }
    }
}
```

### When to Use Composite Pattern

*   Representing hierarchical data structures.

## Decorator Pattern

### Intent and Motivation

*   Adding responsibilities to objects dynamically without affecting other objects.

### Implementation

```java
interface Component {
    void operation();
}

class ConcreteComponent implements Component {
    public void operation() { System.out.println("Concrete Component"); }
}

abstract class Decorator implements Component {
    protected Component component;

    public Decorator(Component component) { this.component = component; }

    public void operation() { component.operation(); }
}
```

### Open/Closed Principle

*   Decorators allow adding functionality without modifying existing classes.

## Facade Pattern

### Intent and Motivation

*   Providing a simplified interface to a complex subsystem.

### Implementation

```java
class SubsystemA {
    public void operationA() { System.out.println("Subsystem A"); }
}

class Facade {
    private SubsystemA subsystemA = new SubsystemA();

    public void operation() {
        subsystemA.operationA();
    }
}
```

### Benefits and Drawbacks

*   Reduced complexity for clients.
*   May hide useful functionality.

## Flyweight Pattern

### Intent and Motivation

*   Using sharing to support large numbers of fine-grained objects efficiently.

### Implementation

```java
interface Flyweight {
    void operation(String extrinsicState);
}

class ConcreteFlyweight implements Flyweight {
    private String intrinsicState;

    public ConcreteFlyweight(String intrinsicState) { this.intrinsicState = intrinsicState; }

    public void operation(String extrinsicState) {
        System.out.println("Intrinsic: " + intrinsicState + ", Extrinsic: " + extrinsicState);
    }
}
```

### Intrinsic vs. Extrinsic State

*   Understanding the difference between shared and unshared state.

## Proxy Pattern

### Intent and Motivation

*   Providing a surrogate or placeholder for another object to control access to it.

### Implementation

```java
interface Subject {
    void request();
}

class RealSubject implements Subject {
    public void request() { System.out.println("Real Subject Request"); }
}

class Proxy implements Subject {
    private RealSubject realSubject;

    public void request() {
        if (realSubject == null) {
            realSubject = new RealSubject();
        }
        realSubject.request();
    }
}
```

### Types of Proxies

*   Virtual proxy, remote proxy, protection proxy.

# IV. Behavioral Patterns

## Understanding Behavioral Patterns

### Purpose and Applicability

*   Defining communication and interaction patterns between objects.
*   When to use behavioral patterns.

### Types of Behavioral Patterns

*   Chain of Responsibility, Command, Interpreter, Iterator, Mediator, Memento, Observer, State, Strategy, Template Method, Visitor.

## Chain of Responsibility Pattern

### Intent and Motivation

*   Avoiding coupling the sender of a request to its receiver by giving multiple objects a chance to handle the request.

### Implementation

```java
abstract class Handler {
    private Handler next;

    public void setNext(Handler next) { this.next = next; }

    public abstract void handleRequest(int request);

    protected void nextHandler(int request) {
        if (next != null) {
            next.handleRequest(request);
        }
    }
}

class ConcreteHandler1 extends Handler {
    public void handleRequest(int request) {
        if (request >= 0 && request < 10) {
            System.out.println("Handler 1 handled request " + request);
        } else {
            nextHandler(request);
        }
    }
}
```

### Benefits and Drawbacks

*   Reduced coupling between sender and receiver.
*   Request may not be handled.

## Command Pattern

### Intent and Motivation

*   Encapsulating a request as an object, thereby allowing for parameterizing clients with different requests, queuing or logging requests, and supporting undoable operations.

### Implementation

```java
interface Command {
    void execute();
}

class ConcreteCommand implements Command {
    private Receiver receiver;

    public ConcreteCommand(Receiver receiver) { this.receiver = receiver; }

    public void execute() { receiver.action(); }
}

class Receiver {
    public void action() { System.out.println("Receiver action"); }
}
```

### Benefits and Drawbacks

*   Decoupling sender from receiver.
*   Increased number of classes.

## Interpreter Pattern

### Intent and Motivation

*   Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.

### Implementation

```java
interface Expression {
    boolean interpret(String context);
}

class TerminalExpression implements Expression {
    private String data;

    public TerminalExpression(String data) { this.data = data; }

    public boolean interpret(String context) {
        return context.contains(data);
    }
}
```

### When to Use Interpreter Pattern

*   Implementing simple domain-specific languages.

## Iterator Pattern

### Intent and Motivation

*   Providing a way to access the elements of an aggregate object sequentially without exposing its underlying representation.

### Implementation

```java
interface Iterator<T> {
    boolean hasNext();
    T next();
}

interface Aggregate {
    Iterator<Integer> createIterator();
}

class ConcreteAggregate implements Aggregate {
    private List<Integer> items = new ArrayList<>();

    public Iterator<Integer> createIterator() {
        return new ConcreteIterator(this);
    }

    private class ConcreteIterator implements Iterator<Integer> {
        private ConcreteAggregate aggregate;
        private int position = 0;

        public ConcreteIterator(ConcreteAggregate aggregate) {
            this.aggregate = aggregate;
        }

        public boolean hasNext() {
            return position < aggregate.items.size();
        }

        public Integer next() {
            if (hasNext()) {
                return aggregate.items.get(position++);
            }
            return null;
        }
    }
}
```

### External vs. Internal Iterators

*   Controlling iteration from outside vs. inside the aggregate object.

## Mediator Pattern

### Intent and Motivation

*   Defining an object that encapsulates how a set of objects interact.

### Implementation

```java
interface Mediator {
    void sendMessage(String message, Colleague colleague);
}

abstract class Colleague {
    protected Mediator mediator;

    public Colleague(Mediator mediator) { this.mediator = mediator; }

    public abstract void receive(String message);
}
```

### Benefits and Drawbacks

*   Reduced coupling between colleagues.
*   Centralized control may become complex.

## Memento Pattern

### Intent and Motivation

*   Without violating encapsulation, capture and externalize an object's internal state so that the object can be restored to this state later.

### Implementation

```java
class Originator {
    private String state;

    public void setState(String state) { this.state = state; }

    public String getState() { return state; }

    public Memento saveStateToMemento() { return new Memento(state); }

    public void getStateFromMemento(Memento memento) { state = memento.getState(); }
}

class Memento {
    private String state;

    public Memento(String state) { this.state = state; }

    public String getState() { return state; }
}
```

### When to Use Memento Pattern

*   Implementing undo/redo functionality.

## Observer Pattern

### Intent and Motivation

*   Defining a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.

### Implementation

```java
interface Observer {
    void update();
}

interface Subject {
    void attach(Observer observer);
    void detach(Observer observer);
    void notifyObservers();
}

class ConcreteSubject implements Subject {
    private List<Observer> observers = new ArrayList<>();
    private int state;

    public int getState() { return state; }

    public void setState(int state) {
        this.state = state;
        notifyObservers();
    }

    public void attach(Observer observer) { observers.add(observer); }

    public void detach(Observer observer) { observers.remove(observer); }

    public void notifyObservers() {
        for (Observer observer : observers) {
            observer.update();
        }
    }
}

class ConcreteObserver implements Observer {
    private ConcreteSubject subject;
    private int observerState;

    public ConcreteObserver(ConcreteSubject subject) { this.subject = subject; }

    public void update() {
        observerState = subject.getState();
        System.out.println("Observer state updated to: " + observerState);
    }
}
```

### Push vs. Pull Model

*   Sending state information vs. allowing observers to request it.

## State Pattern

### Intent and Motivation

*   Allowing an object to alter its behavior when its internal state changes. The object will appear to change its class.

### Implementation

```java
interface State {
    void doAction(Context context);
}

class Context {
    private State state;

    public void setState(State state) { this.state = state; }

    public State getState() { return state; }

    public void doAction() {
        state.doAction(this);
    }
}

class StartState implements State {
    public void doAction(Context context) {
        System.out.println("Start State");
        context.setState(this);
    }
}
```

### Benefits and Drawbacks

*   Improved organization and maintainability.
*   Increased number of classes.

## Strategy Pattern

### Intent and Motivation

*   Defining a family of algorithms, encapsulate each one, and make them interchangeable.

### Implementation

```java
interface Strategy {
    int execute(int a, int b);
}

class Addition implements Strategy {
    public int execute(int a, int b) { return a + b; }
}

class Context {
    private Strategy strategy;

    public Context(Strategy strategy) { this.strategy = strategy; }

    public int executeStrategy(int a, int b) {
        return strategy.execute(a, b);
    }
}
```

### When to Use Strategy Pattern

*   Selecting algorithms at runtime.

## Template Method Pattern

### Intent and Motivation

*   Defining the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.

### Implementation

```java
abstract class AbstractClass {
    public void templateMethod() {
        primitiveOperation1();
        primitiveOperation2();
    }

    protected abstract void primitiveOperation1();
    protected abstract void primitiveOperation2();
}

class ConcreteClass extends AbstractClass {
    protected void primitiveOperation1() { System.out.println("Concrete Operation 1"); }
    protected void primitiveOperation2() { System.out.println("Concrete Operation 2"); }
}
```

### Benefits and Drawbacks

*   Code reuse and flexibility.
*   May be difficult to modify the algorithm's structure.

## Visitor Pattern

### Intent and Motivation

*   Representing an operation to be performed on the elements of an object structure. Visitor lets you define a new operation without changing the classes of the elements on which it operates.

### Implementation

```java
interface Visitor {
    void visit(ConcreteElementA element);
    void visit(ConcreteElementB element);
}

interface Element {
    void accept(Visitor visitor);
}
```

### Double Dispatch

*   Using method overloading to determine the correct visitor method to call.

# V. Advanced Design Pattern Concepts

## Anti-Patterns

### Understanding Anti-Patterns

*   Commonly occurring solutions to problems that generate decidedly negative consequences.

### Examples of Anti-Patterns

*   God Class, Spaghetti Code, Lava Flow, Big Ball of Mud.

## Design Pattern Principles

### SOLID Principles

*   Single Responsibility Principle, Open/Closed Principle, Liskov Substitution Principle, Interface Segregation Principle, Dependency Inversion Principle.

### GRASP Principles

*   General Responsibility Assignment Software Patterns

## Design Patterns in Practice

### Applying Design Patterns in Real-World Scenarios

*   Examples from frameworks and libraries.
*   Case studies of successful design pattern implementations.

### Choosing the Right Design Pattern

*   Considering trade-offs and constraints.
*   Balancing complexity and flexibility.

## Evolving Design Patterns

### Combining Design Patterns

*   Using multiple patterns together to solve complex problems.

### Customizing Design Patterns

*   Adapting patterns to specific project needs.

## Concurrency Patterns

### Introduction to Concurrency Patterns

*   Dealing with multi-threaded and concurrent systems.

### Examples of Concurrency Patterns

*   Double-Checked Locking, Thread Pool, Producer-Consumer.
