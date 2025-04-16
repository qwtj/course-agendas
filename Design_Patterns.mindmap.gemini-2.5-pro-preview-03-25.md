# Design Patterns #SoftwareDesign #Architecture #BestPractices
An overview of repeatable solutions to commonly occurring problems in software design. Patterns provide templates or blueprints, not concrete code, to guide development. [17, 19, 24]

## Introduction to Design Patterns #Fundamentals #Concepts #Basics
Defines what design patterns are, their purpose, history, and core ideas.

### What is a Design Pattern? #Definition #CoreConcept
A general, reusable solution to a common problem within a given context in software design. It's a template or description, not finished code. [17, 19, 24]

### History and Origin #GoF #Background
Brief history, including Christopher Alexander's architectural patterns and the seminal "Design Patterns: Elements of Reusable Object-Oriented Software" book by the Gang of Four (GoF) - Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides. [1, 12, 18, 19]

### Purpose and Goals #Objectives #Rationale
Why use patterns? To solve recurring problems, improve code reusability, maintainability, scalability, and communication among developers. [3, 9, 17, 28]

### Elements of a Pattern #Structure #Format
Common structure: Pattern Name, Problem, Solution, Consequences (trade-offs). [7]

### Pattern vs. Algorithm vs. Framework #Distinction #Comparison
Clarifying the differences between these related but distinct concepts. Patterns are more abstract than algorithms and less specific than frameworks.

## Classification of Design Patterns #Categories #Types #Organization
Patterns are typically grouped based on their purpose or intent. [5, 8, 12, 18, 20, 22, 24, 28]

### Gang of Four (GoF) Categories #GoF #Classification
The most widely recognized classification from the GoF book. [1, 5, 8, 12, 18, 20, 22]

#### Creational Patterns #ObjectCreation #Instantiation
Deal with object creation mechanisms, trying to create objects in a manner suitable to the situation, increasing flexibility and reuse. [1, 2, 5, 7, 8, 18, 22, 28]

#### Structural Patterns #Composition #Relationships
Explain how to assemble objects and classes into larger structures while keeping them flexible and efficient. Deals with class structure like inheritance and composition. [1, 2, 5, 7, 8, 18, 22, 28]

#### Behavioral Patterns #Interaction #Communication #Responsibility
Concerned with algorithms and the assignment of responsibilities between objects, focusing on how objects interact and communicate. [1, 2, 5, 8, 18, 22, 28]

### Other Pattern Categories #BeyondGoF #Specialized
Patterns addressing areas beyond the original GoF scope.

#### Architectural Patterns #HighLevel #SystemDesign
High-level patterns for overall system structure (e.g., MVC, MVP, MVVM, Microservices, Layered Architecture). [22]

#### Concurrency Patterns #Threading #Parallelism
Patterns for managing concurrent execution and shared resources (e.g., Active Object, Monitor Object, Lock). [19]

#### Cloud Design Patterns #CloudComputing #Scalability
Patterns specific to designing applications for cloud environments (e.g., Retry, Circuit Breaker, CQRS).

#### UI/Interaction Patterns #Frontend #UserInterface
Patterns specific to user interface design and user interaction flows.

#### Idioms #LowLevel #LanguageSpecific
Low-level patterns specific to a particular programming language. [5]

## Creational Patterns (GoF) #ObjectCreation #Instantiation #GoF
Patterns focused on object instantiation processes. [1, 2, 4, 5, 7, 8, 12, 16, 20, 22, 28]

### Abstract Factory #Kit #FamilyOfObjects
Provide an interface for creating families of related or dependent objects without specifying their concrete classes. [1, 4, 5, 7, 8, 12, 20, 22]
Use case: Create families of related objects. Hides implementation details. Allows easy substitution of factories.
Cons: Adding new product types requires modifying the abstract factory interface and its subclasses. [4]

### Builder #StepByStep #ComplexObject
Separate the construction of a complex object from its representation so that the same construction process can create different representations. [1, 2, 4, 5, 7, 8, 12, 13, 20, 22]
Use case: Create complex objects step-by-step, allow different configurations. [4]
Pros: Flexible construction, allows different representations, supports immutable objects. [4, 13]
Cons: Can introduce boilerplate code, client needs awareness of the builder. [4, 13]

### Factory Method #VirtualConstructor #SubclassCreation
Define an interface for creating an object, but let subclasses decide which class to instantiate. [1, 2, 4, 5, 7, 8, 12, 13, 16, 20, 22]
Use case: Delegate object creation responsibility to subclasses. [4]
Pros: Encapsulates creation in subclasses, flexible for new types, promotes loose coupling. [4, 13]
Cons: Requires subclass creation for each type (potential class explosion), client dependency on concrete factory. [4, 13]

### Prototype #Cloning #Copying
Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype. [1, 2, 4, 5, 8, 12, 16, 20, 22]
Use case: Creating new objects from similar existing instances, especially when creation is costly. [1, 4, 8]
Pros: Avoids subclassing creator, offers flexibility in configuration/state. [4]
Cons: Cloning complex objects can be challenging (deep copy), requires careful prototype management. [4]

### Singleton #SingleInstance #GlobalAccess
Ensure a class only has one instance, and provide a global point of access to it. [1, 4, 5, 8, 12, 13, 16, 18, 20, 22]
Use case: Ensure only one instance exists (e.g., loggers, configuration managers, hardware interfaces). [4, 18]
Pros: Controlled access to sole instance, guarantees single instance, allows lazy initialization. [4]
Cons: Can introduce global state, violate single responsibility, make testing harder, challenging thread safety. [4]

## Structural Patterns (GoF) #Composition #Relationships #GoF
Patterns focused on class and object composition. [1, 2, 5, 7, 8, 12, 18, 20, 22, 28]

### Adapter (Wrapper) #InterfaceConversion #Compatibility
Convert the interface of a class into another interface clients expect. Adapter lets classes work together that couldn't otherwise because of incompatible interfaces. [1, 2, 7, 8, 12, 18, 20, 22]
Use case: Make two incompatible interfaces work together. [1, 12, 18]

### Bridge #Decoupling #AbstractionImplementation
Decouple an abstraction from its implementation so that the two can vary independently. [2, 7, 8, 12, 20, 22]
Use case: Separate interface from implementation, hiding implementation details. [1]

### Composite #TreeStructure #PartWholeHierarchy
Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly. [1, 2, 7, 8, 12, 20, 22]
Use case: Implement part-whole hierarchies, treat individual and composite objects uniformly. [1, 8]

### Decorator (Wrapper) #DynamicBehavior #Enhancement
Attach additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality. [2, 7, 8, 12, 20, 22]
Use case: Modify functionality of an object at runtime, add responsibilities dynamically. [1, 8]

### Facade #SimplifiedInterface #Subsystem
Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use. [2, 7, 8, 12, 18, 20, 22]
Use case: Provide a simple interface to a complex subsystem. [12, 18]

### Flyweight #Sharing #FineGrainedObjects
Use sharing to support large numbers of fine-grained objects efficiently. Reduces memory usage by sharing common parts of state among multiple objects. [1, 2, 7, 12, 20, 22]
Use case: Efficiently support many fine-grained objects, caching and reusing immutable object instances. [1, 7, 12]

### Proxy #Placeholder #ControlledAccess
Provide a surrogate or placeholder for another object to control access to it. [1, 2, 12, 20, 22]
Use case: Control access to an object, lazy initialization, logging, access control. [1, 12]

## Behavioral Patterns (GoF) #Interaction #Communication #Responsibility #GoF
Patterns focused on object interaction and responsibility assignment. [1, 2, 5, 8, 12, 18, 20, 22, 28]

### Chain of Responsibility #RequestHandling #DecoupledSenderReceiver
Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it. [12, 20, 22]
Use case: Decouple sender and receiver, allow multiple objects to handle a request. [12]

### Command #EncapsulateRequest #ActionObject
Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations. [1, 12, 20, 22]
Use case: Implement loose coupling in request-response models, encapsulate actions/parameters. [1, 12]

### Interpreter #LanguageGrammar #ExpressionEvaluation
Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language. [1, 5, 12, 20, 22]
Use case: Define a grammar and interpret sentences in a language. [1, 5, 12]

### Iterator #Traversal #SequentialAccess
Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation. [5, 20, 22]
Use case: Provide standard way to traverse a collection without exposing implementation. [1, 5]

### Mediator #DecoupledCommunication #CentralControl
Define an object that encapsulates how a set of objects interact. Mediator promotes loose coupling by keeping objects from referring to each other explicitly. [5, 20, 22]
Use case: Reduce dependencies between objects, centralize complex communication logic. [5]

### Memento #StateCapture #UndoRedo
Without violating encapsulation, capture and externalize an object's internal state so that the object can be restored to this state later. [1, 5, 20, 22]
Use case: Save and restore object state (e.g., undo functionality). [1, 5]

### Observer (Publish-Subscribe) #StateChange #Notification
Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically. [1, 5, 20, 22]
Use case: Notify multiple objects about state changes in another object. [1, 5]

### State #BehaviorChange #StateBasedLogic
Allow an object to alter its behavior when its internal state changes. The object will appear to change its class. [1, 5, 20, 22]
Use case: Allow object behavior to change based on its internal state. [1, 5]

### Strategy #AlgorithmFamily #InterchangeableBehavior
Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it. [1, 9, 18, 20, 22]
Use case: Select algorithm/behavior at runtime from multiple options. [1, 9, 18]

### Template Method #AlgorithmSkeleton #SubclassSteps
Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure. [20, 22]
Use case: Define algorithm skeleton, let subclasses implement specific steps.

### Visitor #OperationOnElements #SeparationOfConcerns
Represent an operation to be performed on the elements of an object structure. Visitor lets you define a new operation without changing the classes of the elements on which it operates. [1, 20, 22]
Use case: Perform operations on a group of similar objects without modifying their classes. [1]

## Design Principles #Guidelines #BestPractices #OOP
Underlying principles that guide good object-oriented design and often motivate the use of patterns.

### SOLID Principles #OOP #Maintainability #Flexibility
A set of five principles for object-oriented design aimed at making software designs more understandable, flexible, and maintainable. [25, 27, 29]

#### Single Responsibility Principle (SRP) #Focus #Cohesion
A class should have only one reason to change, meaning it should have only one job or responsibility. [25, 29]
Benefits: Maintainability, Testability, Flexibility. [25]

#### Open/Closed Principle (OCP) #Extension #Modification
Software entities (classes, modules, functions, etc.) should be open for extension but closed for modification. [25, 29]

#### Liskov Substitution Principle (LSP) #Substitutability #Inheritance
Objects of a superclass should be replaceable with objects of its subclasses without affecting the correctness of the program. [25, 29]

#### Interface Segregation Principle (ISP) #ClientSpecificInterfaces #Decoupling
Clients should not be forced to depend on interfaces they do not use. Prefer smaller, specific interfaces over large, general-purpose ones. [25, 29]
Benefits: Decoupling, Flexibility, Avoids unnecessary dependencies. [25]

#### Dependency Inversion Principle (DIP) #Abstraction #Decoupling
High-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details; details should depend on abstractions. [25, 29]
Benefits: Loose coupling, Flexibility, Maintainability. [25]

### GRASP Principles #ResponsibilityAssignment #OOP
General Responsibility Assignment Software Patterns/Principles - guidelines for assigning responsibilities to classes and objects. [21, 26, 27]

#### Information Expert #DataKnowledge #Responsibility
Assign responsibility to the class that has the information necessary to fulfill it. [21, 26]

#### Creator #ObjectCreation #InstantiationSource
Assign class B the responsibility to create an instance of class A if B aggregates, contains, records, closely uses, or has the initializing data for A. [21, 26]

#### Controller #UIEvents #SystemOperations
Assign the responsibility for receiving or handling a system event message to a class representing the overall system, a root object, a use case controller, or a facade controller. [21]

#### Low Coupling #MinimizingDependencies #Interconnection
Assign responsibilities so that coupling (dependency between classes) remains low. [21, 26]

#### High Cohesion #FocusedResponsibility #Relatedness
Assign responsibilities so that cohesion (how strongly related and focused the responsibilities of an element are) remains high. [21, 26]

#### Polymorphism #VaryingBehavior #InterfaceImplementation
Assign responsibility for defining variation of behavior based on type to the types for which this variation happens. [21, 26]

#### Pure Fabrication #ArtificialClass #LowCouplingHighCohesion
Assign a highly cohesive set of responsibilities to an artificial or convenience class that does not represent a problem domain concept – something made up, to support high cohesion, low coupling, and reuse. [21, 26]

#### Indirection #IntermediateObject #Decoupling
Assign responsibility to an intermediate object to mediate between other components or services so that they are not directly coupled. [21, 26]

#### Protected Variations #Encapsulation #Stability
Identify points of predicted variation or instability; assign responsibilities to create a stable interface around them. Protect elements from the variations on other elements. [21, 26]

### Other Principles #DesignPhilosophy #Guidelines
Other influential design ideas.

#### Principle of Least Astonishment (POLA) #Predictability #IntuitiveDesign
A component of a system should behave in a way that most users would expect it to behave; the behavior should not astonish or surprise users.

#### Don't Repeat Yourself (DRY) #CodeDuplication #Efficiency
Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.

#### Keep It Simple, Stupid (KISS) #Simplicity #Clarity
Most systems work best if they are kept simple rather than made complicated; therefore, simplicity should be a key goal in design, and unnecessary complexity should be avoided.

#### You Ain't Gonna Need It (YAGNI) #Minimalism #AvoidOverengineering
Programmers should not add functionality until deemed necessary.

## Benefits and Drawbacks of Design Patterns #ProsCons #Tradeoffs #Evaluation
Understanding the advantages and disadvantages of using design patterns.

### Advantages #Benefits #Pros
Reusability, Improved Communication, Proven Solutions, Maintainability, Scalability, Flexibility, Reduced Development Time/Cost, Code Quality. [3, 4, 9, 10, 13, 17, 19, 28]

### Disadvantages #Drawbacks #Cons #Limitations
Potential for Over-engineering, Added Complexity if Misused, Can Obscure Simple Solutions, Learning Curve, May Not Fit Specific Problems Perfectly, Performance Overhead (sometimes), Requires Management/Documentation. [3, 4, 9, 10, 13]

## Applying Design Patterns #Implementation #Usage #Context
How to effectively use patterns in software development.

### Identifying the Right Pattern #Selection #ProblemMatching
Analyzing the problem context and choosing the most appropriate pattern.

### Implementing Patterns #CodeStructure #Integration
Translating the pattern concept into concrete code within a specific language or framework. [20]

### Refactoring Towards Patterns #CodeImprovement #Evolution
Applying patterns to existing code to improve its structure and quality.

### Combining Patterns #Composition #Synergy
Using multiple patterns together to solve complex problems.

### Common Pitfalls #Mistakes #Challenges
Avoiding common errors like forcing a pattern where it doesn't fit, misunderstanding the pattern's intent, or over-engineering. [3, 10, 13]

## Anti-Patterns #BadPractices #Pitfalls #CommonMistakes
Commonly occurring solutions or practices that are ineffective or counterproductive. [6, 11, 14, 15, 23]

### Definition #WhatIsAnAntiPattern
A commonly used process, structure, or pattern of action that appears effective but has more bad consequences than good, especially when a better solution exists. [11, 23]

### Examples of Anti-Patterns #SpecificAntiPatterns #Illustrations

#### Spaghetti Code #Unstructured #HardToFollow
Poorly structured code, often with excessive GOTO statements or lack of modularity, making it hard to understand and maintain. [23]

#### God Object / God Class #Overloaded #LowCohesion
A class that knows or does too much, centralizing too much responsibility, leading to low cohesion and high coupling. [11, 23]

#### Lava Flow #DeadCode #Obsolete
Keeping obsolete or undesired code ("hardened lava") because removing it is too difficult or risky.

#### Big Ball of Mud #Unstructured #MessyArchitecture
A system lacking a perceivable architecture, often complex and tangled. [11]

#### Magic Numbers / String Literals #UnnamedConstants #PoorReadability
Using unexplained numeric or string literals directly in code instead of named constants. [11, 23]

#### Poltergeists #ShortLivedClasses #UnnecessaryComplexity
Classes with limited responsibility and a short lifespan, often just used to invoke methods in other classes. [11]

#### Golden Hammer #OverusingFamiliarTool #InappropriateSolution
Relying excessively on a familiar tool or pattern, even when it's not the best fit for the problem. [15]

#### Reinventing the Wheel #DuplicateEffort #IgnoringExistingSolutions
Creating a custom solution for a problem when a well-established solution already exists. [15]

#### Analysis Paralysis #Overthinking #Inaction
Spending excessive time analyzing or designing, preventing progress on implementation. [15]

#### Schema Design Anti-Patterns (Databases) #DatabaseDesign #Inefficiency
Inefficient database schema structures like unbounded arrays, too many collections, unnecessary indexes, bloated documents. [6]

## Resources and Further Learning #References #Education #Study
Materials for deepening understanding of design patterns.

### Books #Literature #ClassicTexts
Key books like "Design Patterns: Elements of Reusable Object-Oriented Software" (GoF). [1, 18]

### Websites and Blogs #OnlineResources #Tutorials
Websites like Refactoring.Guru, SourceMaking, Dofactory, Baeldung, etc. [2, 17, 20, 23, 24]

### Courses #Training #Education
Online courses and university modules covering design patterns.

### Communities #Forums #Discussion
Online forums and communities where developers discuss patterns.
