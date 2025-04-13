# I. Introduction to Design Patterns

## What are Design Patterns?
"<llm_prompt>Starting with a level 2 heading, define what software design patterns are, focusing on their role as reusable solutions to common problems within specific contexts in software design. Explain the concept and how they represent evolved best practices. Include a brief glossary definition for 'Design Pattern'.</llm_prompt>"

## History and Origin (The Gang of Four)
"<llm_prompt>Starting with a level 2 heading, provide the historical background of the Gang of Four (GoF) - Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides - and their seminal 1994 book, 'Design Patterns: Elements of Reusable Object-Oriented Software'.</llm_prompt>"

## Purpose and Benefits
"<llm_prompt>Starting with a level 2 heading, explain the primary purposes and benefits of using design patterns in software development. Cover aspects like improved code structure, reusability, flexibility, maintainability, extensibility, and the establishment of a shared vocabulary among developers. Provide a concise summary of these benefits.</llm_prompt>"

## Essential Elements of a Pattern
"<llm_prompt>Starting with a level 2 heading, describe the standard structure used to document design patterns as presented by the GoF. Detail each common section: Pattern Name, Intent (Purpose), Motivation (Problem/Context), Applicability (When to Use), Structure (e.g., UML diagram description), Participants (Classes/Objects and their roles), Collaborations (How participants interact), Consequences (Pros, Cons, Trade-offs), and Implementation (Guidance, techniques, code examples). Include a glossary definition for 'Pattern Format'.</llm_prompt>"

## Classification of Patterns
"<llm_prompt>Starting with a level 2 heading, introduce the three main categories used by the GoF to classify design patterns: Creational, Structural, and Behavioral. Briefly explain the focus of each category.</llm_prompt>"
*   "<llm_prompt>Define 'Creational Patterns' and their focus on object creation mechanisms.</llm_prompt>"
*   "<llm_prompt>Define 'Structural Patterns' and their focus on class and object composition.</llm_prompt>"
*   "<llm_prompt>Define 'Behavioral Patterns' and their focus on object interaction and responsibility distribution.</llm_prompt>"

### Section I Summary & Reflection
"<llm_prompt>Provide a concise summary paragraph covering the key concepts introduced in Section I: what patterns are, their origin, benefits, documentation structure, and classification. Follow this with a reflective prompt asking the learner to consider a recent coding problem they faced and how a design pattern might have offered a structured solution.</llm_prompt>"

### Section I Quiz
"<llm_prompt>Generate a short multiple-choice quiz (3-5 questions) to test understanding of the fundamental concepts of design patterns covered in Section I, including their purpose, benefits, and classification.</llm_prompt>"

# II. Creational Patterns

"<llm_prompt>Starting with a level 1 heading, introduce Creational Patterns as defined by the Gang of Four. Explain that these patterns deal with object creation mechanisms, aiming to increase flexibility and control over the instantiation process. Briefly list the five GoF creational patterns: Abstract Factory, Builder, Factory Method, Prototype, and Singleton.</llm_prompt>"

## Abstract Factory
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Abstract Factory pattern. Describe its purpose: providing an interface for creating families of related or dependent objects without specifying their concrete classes (often referred to as a 'kit'). Include a glossary definition for 'Abstract Factory'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Abstract Factory pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a typical problem scenario or context that motivates the use of the Abstract Factory pattern, focusing on the need to decouple clients from concrete product classes.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where applying the Abstract Factory pattern is most appropriate.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the typical class structure and relationships involved in the Abstract Factory pattern. Request a textual description suitable for generating a UML class diagram, identifying the AbstractFactory, ConcreteFactory, AbstractProduct, ConcreteProduct, and Client components.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of each participant (classes or objects) identified in the structure of the Abstract Factory pattern.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the participants in the Abstract Factory pattern interact to create families of objects.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the benefits and drawbacks (pros and cons) of using the Abstract Factory pattern. Include points like isolation of concrete classes, ease of exchanging product families, promoting consistency, and potential difficulty in supporting new kinds of products.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and considerations for the Abstract Factory pattern. Include a simple code example (e.g., in Java, C#, Python, or pseudocode) demonstrating its basic structure. Mention common issues like managing the creation of specific factory instances.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list some real-world examples or common use cases of the Abstract Factory pattern in software libraries or frameworks (e.g., GUI toolkits).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, describe the relationship between Abstract Factory and other patterns like Factory Method, Prototype, and Singleton. Explain how they might be used together or serve as alternatives.</llm_prompt>"

## Builder
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Builder pattern. Explain its purpose: separating the construction of a complex object from its representation, allowing the same construction process to create various representations. Include a glossary definition for 'Builder'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Builder pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a problem scenario motivating the Builder pattern, focusing on complex object construction with many optional parts or configurations (telescoping constructors).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where applying the Builder pattern is most beneficial.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Builder pattern's structure. Request a textual description for a UML diagram, identifying Builder, ConcreteBuilder, Director, and Product.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants in the Builder pattern.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain the interactions: how the Director uses the Builder interface to construct the Product step-by-step, and how the client retrieves the result from the Builder.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons of the Builder pattern, such as isolating construction code, finer control over the construction process, ability to vary internal representation, and potentially increased number of classes.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance for the Builder pattern, including a simple code example. Discuss common issues like abstracting the construction steps.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples of the Builder pattern (e.g., document converters, complex UI builders).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss how Builder relates to patterns like Abstract Factory and Composite.</llm_prompt>"

## Factory Method
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Factory Method pattern. Explain its purpose: defining an interface for creating an object but letting subclasses decide which class to instantiate (virtual constructor), deferring instantiation. Include a glossary definition for 'Factory Method'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Factory Method pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Factory Method pattern, often involving a framework needing to create objects whose specific type is determined by subclasses.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Factory Method pattern is applicable.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Factory Method pattern's structure. Request a textual description for a UML diagram, identifying Product, ConcreteProduct, Creator, and ConcreteCreator.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants in the Factory Method pattern.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Creator relies on its subclasses' implementation of the factory method to create the appropriate ConcreteProduct.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons, including providing hooks for subclasses, connecting parallel class hierarchies, and potentially requiring subclassing just for creation logic.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example for the Factory Method pattern. Discuss variations like parameterized factory methods.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (e.g., framework internals, document handling applications).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Factory Method and Abstract Factory, Template Method, and Prototype.</llm_prompt>"

## Prototype
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Prototype pattern. Explain its purpose: specifying the kinds of objects to create using a prototypical instance and creating new objects by copying (cloning) this prototype. Include a glossary definition for 'Prototype' and 'Cloning'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Prototype pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Prototype pattern, focusing on situations where object creation is expensive or complex, or when classes are specified at runtime.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Prototype pattern is useful.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Prototype pattern's structure. Request a textual description for a UML diagram, identifying Prototype, ConcretePrototype, and Client.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Client asks a prototype to clone itself.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons, such as adding/removing products at runtime, specifying new objects by varying values, reducing subclassing, and the complexities of cloning (deep vs. shallow copy).</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance, including a simple code example. Crucially, discuss the difference and implementation challenges of 'shallow copy' vs. 'deep copy'.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (e.g., cell simulation, graphical object copying).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Prototype and Abstract Factory, Composite, and Decorator.</llm_prompt>"

## Singleton
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Singleton pattern. Explain its purpose: ensuring a class has only one instance and providing a global point of access to it. Include a glossary definition for 'Singleton'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Singleton pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe scenarios motivating the Singleton pattern, such as managing access to a shared resource (e.g., logger, configuration, database connection pool).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list situations where the Singleton pattern is applicable.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Singleton pattern's structure. Request a textual description for a UML diagram, identifying the Singleton class with its static instance and static access method.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, describe the Singleton class itself and its responsibilities.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how clients access the unique instance solely through the Singleton's access method.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: controlled access to the sole instance, reduced namespace, potential for refinement, but also introduction of global state, potential hiding of dependencies, and difficulties with testing and concurrency.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and code examples. Cover critical issues like 'thread-safety', 'lazy initialization' vs. 'eager initialization', and potential pitfalls in different programming languages.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (logging, configuration managers, window managers).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Singleton and Abstract Factory, Builder, and Prototype.</llm_prompt>"

### Section II Summary & Reflection
"<llm_prompt>Provide a concise summary paragraph covering the key concepts of Creational Patterns discussed in Section II: Abstract Factory, Builder, Factory Method, Prototype, and Singleton, emphasizing their shared goal of flexible object creation. Follow with a reflective prompt asking the learner to consider which creational pattern might be most useful for managing different types of user configurations in an application.</llm_prompt>"

### Section II Quiz
"<llm_prompt>Generate a short multiple-choice quiz (5-7 questions) testing understanding of the five creational patterns covered in Section II. Include questions that differentiate between patterns like Abstract Factory and Factory Method, or Builder and Abstract Factory.</llm_prompt>"

# III. Structural Patterns

"<llm_prompt>Starting with a level 1 heading, introduce Structural Patterns as defined by the Gang of Four. Explain that these patterns deal with how classes and objects are composed to form larger structures, focusing on simplifying structure and identifying relationships between entities. Briefly list the seven GoF structural patterns: Adapter, Bridge, Composite, Decorator, Facade, Flyweight, and Proxy.</llm_prompt>"

## Adapter (Wrapper)
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Adapter (or Wrapper) pattern. Explain its purpose: converting the interface of a class into another interface clients expect, allowing classes with incompatible interfaces to work together. Include glossary definitions for 'Adapter' and 'Wrapper'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Adapter pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Adapter pattern, often involving integrating existing legacy code or third-party libraries with different interfaces.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Adapter pattern is applicable.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the structure for both 'Class Adapter' (using multiple inheritance) and 'Object Adapter' (using composition). Request textual descriptions suitable for UML diagrams for both variations, identifying Target, Client, Adaptee, and Adapter.</llm_prompt>"
#### Class Adapter vs. Object Adapter
"<llm_prompt>Starting with a level 4 heading, compare and contrast the Class Adapter and Object Adapter variations, discussing their respective trade-offs (e.g., overriding adaptee behavior vs. working with adaptee subclasses).</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants for both adapter variations.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Client interacts with the Adapter (Target interface), and how the Adapter delegates requests to the Adaptee.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons of using the Adapter pattern, considering both variations. Include aspects like decoupling, reusability, and potential overhead.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and simple code examples for both Class and Object Adapter (where language features permit).</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (e.g., toolkit adapters, wrapper libraries for system calls).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Adapter and patterns like Bridge, Decorator, and Proxy.</llm_prompt>"

## Bridge
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Bridge pattern. Explain its purpose: decoupling an abstraction from its implementation so that the two can vary independently, often separating inheritance hierarchies. Include a glossary definition for 'Bridge'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Bridge pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Bridge pattern, focusing on situations where both an abstraction and its implementation need to be extended independently (avoiding a proliferation of subclasses).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Bridge pattern is most appropriate.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Bridge pattern's structure. Request a textual description for a UML diagram, identifying Abstraction, RefinedAbstraction, Implementor, and ConcreteImplementor.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Abstraction forwards client requests to its Implementor object.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: decoupling interface and implementation, improved extensibility, hiding implementation details, but potentially increasing complexity.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example for the Bridge pattern.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (e.g., device drivers, windowing systems).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Bridge and Abstract Factory, and how it differs from Adapter.</llm_prompt>"

## Composite
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Composite pattern. Explain its purpose: composing objects into tree structures to represent part-whole hierarchies, allowing clients to treat individual objects and compositions uniformly. Include glossary definitions for 'Composite' and 'Part-Whole Hierarchy'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Composite pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Composite pattern, typically involving hierarchical structures like graphic drawing systems or file systems.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Composite pattern is useful.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Composite pattern's structure. Request a textual description for a UML diagram, identifying Component, Leaf, Composite, and Client.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how Clients use the Component interface, and how Composite objects forward requests to their children.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: defining class hierarchies of simple and complex objects, simplifying client code, making it easy to add new components, but potentially making the design overly general or difficult to restrict composition.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example. Discuss issues like child management, sharing components, and maximizing the Component interface.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (GUI frameworks, file systems representations).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Composite and Decorator, Flyweight, Iterator, and Visitor.</llm_prompt>"

## Decorator (Wrapper)
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Decorator (or Wrapper) pattern. Explain its purpose: attaching additional responsibilities or behaviors to an object dynamically, providing a flexible alternative to subclassing for extending functionality. Include a glossary definition for 'Decorator'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Decorator pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Decorator pattern, such as adding features like borders or scrolling to GUI components without modifying their core classes.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Decorator pattern is applicable.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Decorator pattern's structure. Request a textual description for a UML diagram, identifying Component, ConcreteComponent, Decorator, and ConcreteDecorator.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how a Decorator forwards requests to its Component object and optionally performs additional actions before or after forwarding.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: more flexibility than static inheritance, avoiding feature-laden classes high up the hierarchy, potential for many small objects, and potential complexity in understanding decorator chains.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example for the Decorator pattern.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (I/O streams in Java/C#, GUI component enhancements).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Decorator and Adapter, Composite, and Strategy.</llm_prompt>"

## Facade
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Facade pattern. Explain its purpose: providing a unified, simplified interface to a set of interfaces within a complex subsystem, making the subsystem easier to use. Include a glossary definition for 'Facade'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Facade pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Facade pattern, focusing on simplifying interaction with a complex system (e.g., compiler, library, framework).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Facade pattern is useful.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Facade pattern's structure. Request a textual description for a UML diagram, identifying Facade and the various Subsystem classes it interacts with.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the Facade and the Subsystem classes.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how Clients interact with the Facade, which delegates requests to the appropriate subsystem components. Mention that subsystem classes are often unaware of the facade.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: shielding clients from subsystem complexity, promoting weak coupling, providing a simple default view but not preventing access to underlying classes if needed, and potentially becoming a god object if not managed.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example for the Facade pattern.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (interfaces to complex libraries, simplifying API calls).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Facade and Abstract Factory and Mediator.</llm_prompt>"

## Flyweight
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Flyweight pattern. Explain its purpose: using sharing to support large numbers of fine-grained objects efficiently by separating their state into intrinsic (shared, context-independent) and extrinsic (context-dependent) state. Include glossary definitions for 'Flyweight', 'Intrinsic State', and 'Extrinsic State'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Flyweight pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Flyweight pattern, typically involving memory constraints due to a huge number of similar objects (e.g., characters in a document editor, graphical symbols).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Flyweight pattern is applicable.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Flyweight pattern's structure. Request a textual description for a UML diagram, identifying Flyweight, ConcreteFlyweight, UnsharedConcreteFlyweight, FlyweightFactory, and Client.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how Clients retrieve Flyweights from the Factory, pass extrinsic state to Flyweight operations, and how the Factory manages shared Flyweight instances.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: significant memory savings, but increased runtime cost (state computation/lookup) and potentially complex implementation due to state management.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example. Discuss managing shared objects (factory) and handling extrinsic state.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (character formatting, graphical object rendering).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Flyweight and Composite, State, and Strategy.</llm_prompt>"

## Proxy
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Proxy pattern. Explain its purpose: providing a surrogate or placeholder for another object to control access to it, useful for lazy loading, access control, logging, remote communication, etc. Include a glossary definition for 'Proxy'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Proxy pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe scenarios motivating the Proxy pattern, covering different types like remote proxies, virtual proxies, protection proxies, and smart references.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the common situations and types of proxies where the pattern is applicable: 'Remote Proxy', 'Virtual Proxy', 'Protection Proxy', 'Smart Reference'. Briefly define each type.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Proxy pattern's structure. Request a textual description for a UML diagram, identifying Subject, RealSubject, Proxy, and Client.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Client interacts with the Subject interface (implemented by both Proxy and RealSubject), and how the Proxy controls access to the RealSubject, potentially creating/accessing it on demand.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: introducing a level of indirection, enabling various control mechanisms (lazy loading, security), but potentially adding complexity or overhead.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example, perhaps focusing on a Virtual Proxy or Protection Proxy.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (remote method invocation (RPC/RMI), lazy loading of images or data, access control mechanisms).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Proxy and Adapter (similar structure, different intent) and Decorator (similar structure, different purpose - adding behavior vs. controlling access).</llm_prompt>"

### Section III Summary & Reflection
"<llm_prompt>Provide a concise summary paragraph covering the key concepts of Structural Patterns discussed in Section III: Adapter, Bridge, Composite, Decorator, Facade, Flyweight, and Proxy, emphasizing their focus on organizing classes and objects into larger structures. Follow with a reflective prompt asking the learner to consider how they might use the Facade pattern to simplify interaction with a complex set of APIs in a project.</llm_prompt>"

### Section III Quiz
"<llm_prompt>Generate a short multiple-choice quiz (7-9 questions) testing understanding of the seven structural patterns covered in Section III.
 Include questions differentiating patterns with similar structures but different intents (e.g., Adapter vs. Proxy vs. Decorator; Adapter vs. Bridge).</llm_prompt>"

# IV. Behavioral Patterns

"<llm_prompt>Starting with a level 1 heading, introduce Behavioral Patterns as defined by the Gang of Four. Explain that these patterns are concerned with algorithms and the assignment of responsibilities between objects, describing complex control flow and communication patterns. Briefly list the eleven GoF behavioral patterns: Chain of Responsibility, Command, Interpreter, Iterator, Mediator, Memento, Observer, State, Strategy, Template Method, and Visitor.</llm_prompt>"

## Chain of Responsibility
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Chain of Responsibility pattern. Explain its purpose: avoiding coupling the sender of a request to its receiver by giving multiple objects a chance to handle the request, passing it along a chain until handled. Include a glossary definition for 'Chain of Responsibility'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Chain of Responsibility pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Chain of Responsibility pattern, such as handling events in a GUI or processing requests in a middleware system where different handlers might apply.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Chain of Responsibility pattern is applicable.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Chain of Responsibility pattern's structure. Request a textual description for a UML diagram, identifying Handler, ConcreteHandler, and Client.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Client initiates the request to the first handler in the chain, and how each handler either processes the request or forwards it to its successor.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: reduced coupling, added flexibility in assigning responsibilities, but receipt isn't guaranteed, and debugging can be complex.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example. Discuss how to represent the chain (e.g., pointers, list) and implement the forwarding logic.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (UI event bubbling, servlet filters, logging frameworks).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Chain of Responsibility and Composite.</llm_prompt>"

## Command
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Command pattern. Explain its purpose: encapsulating a request as an object, thereby parameterizing clients with different requests, queuing or logging requests, and supporting undoable operations. Include a glossary definition for 'Command'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Command pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Command pattern, such as implementing menu items, macro recording, or undo/redo functionality.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Command pattern is useful.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Command pattern's structure. Request a textual description for a UML diagram, identifying Command, ConcreteCommand, Client, Invoker, and Receiver.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Client creates a ConcreteCommand and sets its Receiver, the Invoker stores and triggers the Command, and the Command executes an action on the Receiver.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: decoupling invoker from receiver, commands as first-class objects, ability to assemble composite commands, ease of adding new commands, but potential for many command classes.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example. Discuss implementing 'Undo/Redo' support and managing command history. Mention implementing 'Macros' by composing commands.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (GUI button actions, transaction systems, wizards).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Command and Composite, Memento, and Prototype.</llm_prompt>"

## Interpreter
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Interpreter pattern. Explain its purpose: given a language, define a representation for its grammar along with an interpreter that uses this representation to interpret sentences in the language, often used for domain-specific languages (DSLs). Include a glossary definition for 'Interpreter' and 'Domain-Specific Language (DSL)'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Interpreter pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Interpreter pattern, such as implementing a simple query language or parsing regular expressions.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Interpreter pattern is applicable, emphasizing simple grammars.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Interpreter pattern's structure. Request a textual description for a UML diagram, identifying AbstractExpression, TerminalExpression, NonterminalExpression, Context, and Client. Often resembles a Composite structure.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Client builds an abstract syntax tree (AST) of Expression objects, and how the interpret operation is called recursively down the tree, using the Context for state.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: easy to vary/extend the grammar, straightforward implementation for simple grammars, but potentially complex for large grammars (maintenance challenges, requires a class per rule).</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example (e.g., evaluating simple arithmetic expressions). Discuss using parser generators for complex grammars.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (SQL parsing, regular expression engines, specialized languages).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Interpreter and Composite, Flyweight, Iterator, and Visitor.</llm_prompt>"

## Iterator
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Iterator pattern. Explain its purpose: providing a way to access the elements of an aggregate object (collection) sequentially without exposing its underlying representation. Include a glossary definition for 'Iterator' and 'Aggregate'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Iterator pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Iterator pattern, focusing on the need for a uniform way to traverse different collection structures (lists, trees, sets).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Iterator pattern is useful.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Iterator pattern's structure. Request a textual description for a UML diagram, identifying Iterator, ConcreteIterator, Aggregate, and ConcreteAggregate.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Client requests an Iterator from the Aggregate, and then uses the Iterator interface (e.g., `next()`, `hasNext()`, `currentItem()`) to traverse elements.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: supporting multiple traversal policies, simplifying the aggregate interface, allowing multiple simultaneous traversals, but potentially being less efficient for simple collections.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example. Discuss 'Internal vs. External' iterators, 'Robustness' (handling modifications during iteration), and managing iterator state.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (ubiquitous in collection libraries across most programming languages).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Iterator and Composite, Factory Method, and Memento.</llm_prompt>"

## Mediator
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Mediator pattern. Explain its purpose: defining an object that encapsulates how a set of objects (colleagues) interact, promoting loose coupling by preventing direct references and allowing independent variation of interactions. Include a glossary definition for 'Mediator' and 'Colleague'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Mediator pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Mediator pattern, often involving complex communication pathways between multiple objects (e.g., dialog boxes with interacting widgets).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Mediator pattern is applicable.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Mediator pattern's structure. Request a textual description for a UML diagram, identifying Mediator, ConcreteMediator, and various Colleague classes.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how Colleagues send and receive requests via the Mediator object, which coordinates the interactions.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: limiting subclassing, decoupling colleagues, simplifying object protocols, centralizing control, but potentially creating a monolithic Mediator god object.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example (e.g., a chat room or interacting GUI elements).</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (GUI coordination, air traffic control simulation).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Mediator and Facade (difference in intent) and Observer.</llm_prompt>"

## Memento
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Memento pattern. Explain its purpose: capturing and externalizing an object's internal state without violating encapsulation, allowing the object to be restored to this state later (e.g., for undo/rollback). Include glossary definitions for 'Memento', 'Originator', and 'Caretaker'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Memento pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Memento pattern, focusing on the need to save and restore object state, such as in undo mechanisms or transaction management.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Memento pattern is useful.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Memento pattern's structure. Request a textual description for a UML diagram, identifying Memento, Originator, and Caretaker. Emphasize the dual interface of Memento (wide for Originator, narrow for Caretaker).</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Caretaker requests a Memento from the Originator, holds it, and potentially passes it back to the Originator for restoration, without inspecting the Memento's content.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: preserving encapsulation boundaries, simplifying the Originator, but potentially high storage cost, defining the state scope, and exposing potentially sensitive information if not managed carefully.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example. Discuss language support for access control (e.g., friend classes, nested classes) to manage Memento access and minimizing state storage.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (undo/redo operations, database transaction rollback).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Memento and Command and Iterator.</llm_prompt>"

## Observer (Publish-Subscribe)
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Observer pattern (also known as Publish-Subscribe). Explain its purpose: defining a one-to-many dependency between objects (Subject and Observers) so that when the Subject changes state, all dependent Observers are notified and updated automatically. Include glossary definitions for 'Observer', 'Subject', and 'Publish-Subscribe'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Observer pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Observer pattern, such as keeping multiple views (e.g., spreadsheet, graph) synchronized with underlying data model changes.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Observer pattern is applicable.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Observer pattern's structure. Request a textual description for a UML diagram, identifying Subject, ConcreteSubject, Observer, and ConcreteObserver.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how ConcreteObservers register with the ConcreteSubject, how the Subject notifies Observers upon state change, and how Observers query the Subject for details.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: abstract coupling between Subject and Observer, support for broadcast communication, but potential for unexpected/cascading updates and dangling references ('lapsed listener problem').</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example. Discuss managing observer registration, 'Push vs. Pull' models for data transfer, handling dangling references, and potential concurrency issues.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (Model-View-Controller (MVC) frameworks, event handling systems, reactive programming libraries).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Observer and Mediator and Singleton.</llm_prompt>"

## State
"<llm_prompt>Starting with a level 2 heading, provide an overview of the State pattern. Explain its purpose: allowing an object (Context) to alter its behavior when its internal state changes, making the object appear to change its class by delegating behavior to different State objects. Include glossary definitions for 'State' and 'Context' (in this pattern's context).</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the State pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the State pattern, typically involving an object whose behavior depends heavily on its current state, often replacing large conditional statements (e.g., network connection states, TCP protocol states).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the State pattern is useful.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the State pattern's structure. Request a textual description for a UML diagram, identifying Context, State, and ConcreteState classes.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Context delegates state-specific requests to the current ConcreteState object, and how State objects can handle state transitions by changing the Context's current state.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: localizing state-specific behavior, making state transitions explicit, simplifying context code, but potentially increasing the number of classes and making state logic less centralized than conditional statements.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example (e.g., a media player state). Discuss who controls state transitions (Context vs. State objects) and strategies for creating/sharing State objects.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (TCP connection implementation, workflow systems).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between State and Flyweight, Singleton, and Strategy.</llm_prompt>"

## Strategy
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Strategy pattern. Explain its purpose: defining a family of algorithms, encapsulating each one, and making them interchangeable, allowing the algorithm to vary independently from clients that use it. Include a glossary definition for 'Strategy'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Strategy pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Strategy pattern, where multiple algorithms exist for a task and need to be selected dynamically (e.g., different sorting algorithms, layout managers, validation rules).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Strategy pattern is applicable.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Strategy pattern's structure. Request a textual description for a UML diagram, identifying Context, Strategy, and ConcreteStrategy classes.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Context is configured with a ConcreteStrategy object and delegates the algorithmic task to it. Clients typically interact only with the Context.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: defining families of related algorithms, providing an alternative to subclassing/conditionals, eliminating conditional statements, choice of implementations, but potentially increasing the number of objects and communication overhead between Context and Strategy.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example (e.g., different ways to calculate tax). Discuss passing necessary data to the strategy and making strategies optional.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (layout managers in GUI frameworks, sorting utilities, policy objects).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Strategy and Flyweight, State, Template Method, and Decorator. Highlight the similarities and differences with the State pattern.</llm_prompt>"

## Template Method
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Template Method pattern. Explain its purpose: defining the skeleton of an algorithm in a base class operation, deferring some steps (primitive operations or hooks) to subclasses, allowing subclasses to redefine specific steps without changing the overall algorithm structure. Include glossary definitions for 'Template Method', 'Primitive Operation', and 'Hook Operation'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Template Method pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Template Method pattern, often found in frameworks where common steps are fixed, but specific implementations vary (e.g., document processing, application lifecycle).</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Template Method pattern is useful.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Template Method pattern's structure. Request a textual description for a UML diagram, identifying AbstractClass (with the template method and abstract primitive operations) and ConcreteClass.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the template method in the AbstractClass calls primitive operations (implemented by ConcreteClass) and optional hook operations.</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: fundamental technique for code reuse (inversion of control), leads to frameworks, controls subclass extensions, but can be rigid and requires understanding the overall algorithm.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example (e.g., a report generation process). Discuss naming conventions, use of abstract vs. concrete methods, and the role of hook operations.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (common in application frameworks for defining application structure or request handling).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Template Method and Factory Method (often used together) and Strategy (solves similar problems via composition instead of inheritance).</llm_prompt>"

## Visitor
"<llm_prompt>Starting with a level 2 heading, provide an overview of the Visitor pattern. Explain its purpose: representing an operation to be performed on the elements of an object structure (often a Composite), allowing new operations to be defined without changing the classes of the elements on which it operates. Include glossary definitions for 'Visitor' and 'Object Structure'.</llm_prompt>"
### Intent
"<llm_prompt>Starting with a level 3 heading, clearly state the intent of the Visitor pattern.</llm_prompt>"
### Motivation
"<llm_prompt>Starting with a level 3 heading, describe a scenario motivating the Visitor pattern, such as performing different operations (type checking, code generation) on nodes of an abstract syntax tree in a compiler.</llm_prompt>"
### Applicability
"<llm_prompt>Starting with a level 3 heading, list the situations where the Visitor pattern is applicable, especially when operations need to be added to a stable object structure.</llm_prompt>"
### Structure
"<llm_prompt>Starting with a level 3 heading, describe the Visitor pattern's structure. Request a textual description for a UML diagram, identifying Visitor, ConcreteVisitor, Element, ConcreteElement, and ObjectStructure.</llm_prompt>"
### Participants
"<llm_prompt>Starting with a level 3 heading, list and describe the roles of the participants.</llm_prompt>"
### Collaborations
"<llm_prompt>Starting with a level 3 heading, explain how the Client creates a ConcreteVisitor and traverses the ObjectStructure. For each element, it calls `accept(visitor)`, which in turn calls the appropriate `visitConcreteElementX(this)` method on the visitor ('double dispatch').</llm_prompt>"
### Consequences
"<llm_prompt>Starting with a level 3 heading, discuss the pros and cons: making it easy to add new operations, gathering related operations together, but making it hard to add new ConcreteElement classes (requires updating all visitors), potentially breaking element encapsulation, and complexity of setup.</llm_prompt>"
### Implementation
"<llm_prompt>Starting with a level 3 heading, provide implementation guidance and a simple code example (e.g., calculating properties over a simple shape hierarchy). Explain the concept of 'double dispatch' and how it's achieved.</llm_prompt>"
### Known Uses
"<llm_prompt>Starting with a level 3 heading, list real-world examples (compiler operations like type checking or code generation, document processing).</llm_prompt>"
### Related Patterns
"<llm_prompt>Starting with a level 3 heading, discuss the relationship between Visitor and Composite, Interpreter, and Iterator.</llm_prompt>"

### Section IV Summary & Reflection
"<llm_prompt>Provide a concise summary paragraph covering the key concepts of Behavioral Patterns discussed in Section IV, emphasizing their focus on communication, responsibility, and algorithms among objects. Cover the breadth of patterns from Chain of Responsibility to Visitor. Follow with a reflective prompt asking the learner to compare and contrast the State and Strategy patterns based on their intent and implementation.</llm_prompt>"

### Section IV Quiz
"<llm_prompt>Generate a moderately sized multiple-choice quiz (11-15 questions) testing understanding of the eleven behavioral patterns covered in Section IV. Include questions requiring differentiation between patterns addressing similar concerns (e.g., Mediator vs. Observer, State vs. Strategy, Command vs. Chain of Responsibility).</llm_prompt>"

# V. Applying GoF Patterns

"<llm_prompt>Starting with a level 1 heading, transition to the practical application of GoF design patterns. Explain that understanding individual patterns is necessary but not sufficient; knowing when and how to apply them effectively in software design is crucial.</llm_prompt>"

## Choosing the Right Pattern
"<llm_prompt>Starting with a level 2 heading, provide guidance on selecting the appropriate design pattern for a given problem. Emphasize the importance of analyzing the problem, matching the context and intent of patterns, and carefully evaluating the consequences (trade-offs) of applying a potential pattern. Include steps like identifying the design challenge, considering relevant patterns, and comparing their applicability and impact.</llm_prompt>"

## Patterns and Software Architecture
"<llm_prompt>Starting with a level 2 heading, discuss the role of design patterns in shaping the overall software architecture. Explain how patterns contribute to achieving desirable architectural qualities like modularity, scalability, maintainability, and flexibility. Provide examples of how patterns like Facade, Bridge, or Observer can influence system-level design.</llm_prompt>"

## Relationship to Design Principles
"<llm_prompt>Starting with a level 2 heading, explore the connection between GoF design patterns and fundamental object-oriented design principles. Explain how patterns often embody or facilitate principles like SOLID (Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, Dependency Inversion), DRY (Don't Repeat Yourself), and KISS (Keep It Simple, Stupid). Provide specific examples: e.g., Strategy and Observer supporting the Open/Closed Principle, Singleton potentially violating Single Responsibility.</llm_prompt>"
### SOLID Principles and Patterns
"<llm_prompt>Starting with a level 3 heading, elaborate specifically on how various GoF patterns relate to each of the SOLID principles.</llm_prompt>"
### DRY/KISS Principles and Patterns
"<llm_prompt>Starting with a level 3 heading, discuss how patterns aim to adhere to DRY and KISS, and potential pitfalls where misuse might violate them.</llm_prompt>"

## Refactoring Towards Patterns
"<llm_prompt>Starting with a level 2 heading, introduce the concept of refactoring existing code to incorporate design patterns. Explain how patterns can guide code improvement efforts, leading to better structure, reduced complexity, and increased flexibility. Provide a hypothetical example or scenario of identifying a 'code smell' and refactoring it using a suitable pattern (e.g., replacing complex conditionals with State or Strategy).</llm_prompt>"

## Combining Patterns
"<llm_prompt>Starting with a level 2 heading, discuss how design patterns are often used in combination to solve more complex problems. Explain that patterns are not isolated solutions and can work synergistically. Provide examples of 'compound patterns' or common combinations, such as Model-View-Controller (MVC) using Observer, Strategy, Composite; Abstract Factory often implemented using Factory Methods; Composite often traversed using Iterator or Visitor.</llm_prompt>"
### Example: Model-View-Controller (MVC)
"<llm_prompt>Starting with a level 3 heading, analyze the MVC architectural pattern and identify the GoF patterns commonly used within its structure (e.g., Observer for updates, Strategy for view/controller logic, Composite for view hierarchies).</llm_prompt>"
### Example: Factory Combination
"<llm_prompt>Starting with a level 3 heading, explain how Abstract Factory can be implemented using multiple Factory Methods, or how Factory Methods can be used within other patterns like Template Method.</llm_prompt>"

### Section V Summary & Reflection
"<llm_prompt>Provide a concise summary paragraph covering the key aspects of applying GoF patterns discussed in Section V: choosing patterns, their architectural impact, relation to principles, refactoring, and combining patterns. Follow with a reflective prompt asking the learner to think about a system they know and identify potential areas where GoF patterns are used or could be applied.</llm_prompt>"

### Section V Quiz
"<llm_prompt>Generate a short multiple-choice quiz (4-6 questions) testing understanding of the concepts related to applying patterns covered in Section V, such as selecting patterns, their relation to SOLID principles, and common pattern combinations.</llm_prompt>"

# VI. Consequences and Criticisms

"<llm_prompt>Starting with a level 1 heading, address the important considerations regarding the limitations, potential drawbacks, and criticisms associated with GoF design patterns. Emphasize that patterns are tools, and like any tool, they can be misused or have negative consequences if applied improperly.</llm_prompt>"

## Potential Overuse
"<llm_prompt>Starting with a level 2 heading, discuss the risk of overusing design patterns, sometimes referred to as 'Patternitis' or 'Resume-Driven Development'. Explain how applying patterns unnecessarily can lead to overly complex designs, excessive abstraction, and unnecessary indirection, ultimately harming maintainability rather than helping it.</llm_prompt>"

## Performance Implications
"<llm_prompt>Starting with a level 2 heading, analyze the potential performance impact of using certain design patterns. Discuss how patterns introducing levels of indirection (e.g., Proxy, Decorator, Bridge, Mediator) or increased object creation (e.g., Command, Prototype, Flyweight factory) can incur runtime overhead compared to simpler, direct implementations. Emphasize the need to benchmark and profile when performance is critical.</llm_prompt>"

## Criticism of GoF Patterns
"<llm_prompt>Starting with a level 2 heading, present common criticisms leveled against the original GoF patterns. Discuss points like their static nature (tied heavily to OO and inheritance), their focus primarily on object-oriented languages (less direct applicability in functional paradigms), and how some patterns might be simplified or made redundant by newer language features (e.g., first-class functions potentially simplifying Strategy or Command). Mention the existence of modern pattern catalogs and alternatives.</llm_prompt>"

## Anti-Patterns
"<llm_prompt>Starting with a level 2 heading, briefly introduce the concept of 'Anti-Patterns'. Define them as common solutions to recurring problems that are ultimately ineffective or counterproductive. Explain that understanding anti-patterns (e.g., God Object, Lava Flow, Spaghetti Code) provides a valuable counterpoint to design patterns, highlighting common mistakes and bad practices to avoid. Provide links or references for further exploration of anti-patterns.</llm_prompt>"

### Section VI Summary & Reflection
"<llm_prompt>Provide a concise summary paragraph covering the key considerations and criticisms discussed in Section VI: overuse, performance implications, specific critiques of GoF patterns, and the concept of anti-patterns. Follow with a reflective prompt asking the learner to consider the trade-offs involved when deciding whether to apply a pattern, weighing benefits against potential complexity or performance costs.</llm_prompt>"

### Section VI Quiz
"<llm_prompt>Generate a short multiple-choice quiz (3-5 questions) testing understanding of the consequences and criticisms of GoF patterns covered in Section VI, including overuse, performance, and the concept of anti-patterns.</llm_prompt>"

# VII. Conclusion

"<llm_prompt>Starting with a level 1 heading, provide concluding thoughts on the Gang of Four design patterns, summarizing their significance and ongoing relevance in software engineering.</llm_prompt>"

## Lasting Impact
"<llm_prompt>Starting with a level 2 heading, summarize the enduring influence of the GoF book and the patterns themselves on the field of software engineering. Discuss their impact on design thinking, object-oriented programming practices, and establishing a common vocabulary for developers to communicate design ideas effectively.</llm_prompt>"

## Modern Relevance
"<llm_prompt>Starting with a level 2 heading, discuss the continued relevance of GoF patterns in modern software development, even with the rise of new paradigms and languages. Explain how the underlying principles often remain valid, although implementations might adapt. Discuss how the concepts have evolved and influenced newer patterns and architectural styles.</llm_prompt>"

## Further Learning Resources
"<llm_prompt>Starting with a level 2 heading, provide pointers to additional resources for deeper study of design patterns. Include suggestions for influential books (beyond the original GoF), reputable websites (e.g., Refactoring Guru, SourceMaking), online communities, and potentially tutorials or courses focused on practical application in specific languages or frameworks. Embed links where appropriate.</llm_prompt>"

### Final Reflection
"<llm_prompt>Pose a final reflective prompt encouraging the learner to synthesize their understanding. Ask them to identify the three GoF patterns they found most interesting or potentially useful for their own work and briefly explain why.</llm_prompt>"
