# Gang of Four Patterns #DesignPatterns #GoF #SoftwareDesign
Overview of the foundational catalog of object-oriented design patterns presented in the book "Design Patterns: Elements of Reusable Object-Oriented Software".

## Introduction to Design Patterns #Context #Fundamentals #History
Setting the stage for understanding design patterns.
### What are Design Patterns? #Definition #Concept #ProblemSolving
Reusable solutions to commonly occurring problems within a given context in software design. They represent best practices evolved over time.
### History and Origin (The Gang of Four) #GoF #ErichGamma #RichardHelm #RalphJohnson #JohnVlissides
Background on the authors and the seminal 1994 book.
### Purpose and Benefits #Reusability #Flexibility #Communication
Why use design patterns? Improved code structure, maintainability, extensibility, and shared vocabulary.
### Essential Elements of a Pattern #PatternFormat #Structure #Context #Problem #Solution
Describes the typical structure used to document patterns (e.g., Name, Intent, Motivation, Applicability, Structure, Participants, Collaborations, Consequences, Implementation).
### Classification of Patterns #Categories #Creational #Structural #Behavioral
Overview of the three main categories defined by the GoF.

## Creational Patterns #ObjectCreation #Instantiation #Flexibility
Patterns concerned with the process of object creation, aiming to increase flexibility in *what*, *who*, *how*, and *when* objects get created.
### Abstract Factory #Kit #FamiliesOfObjects #Decoupling
Provides an interface for creating families of related or dependent objects without specifying their concrete classes.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #FactoryMethod #Prototype #Singleton
### Builder #StepByStepCreation #ComplexObjects #Representation
Separates the construction of a complex object from its representation, allowing the same construction process to create different representations.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #AbstractFactory #Composite
### Factory Method #VirtualConstructor #SubclassCreation #DeferInstantiation
Defines an interface for creating an object, but lets subclasses decide which class to instantiate. Lets a class defer instantiation to subclasses.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #AbstractFactory #TemplateMethod #Prototype
### Prototype #Cloning #Copying #Performance
Specifies the kinds of objects to create using a prototypical instance, and creates new objects by copying this prototype.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues #ShallowVsDeepCopy
#### Known Uses #RealWorldExamples
#### Related Patterns #AbstractFactory #Composite #Decorator
### Singleton #SingleInstance #GlobalAccess #ResourceManagement
Ensures a class only has one instance, and provides a global point of access to it.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons #TestingIssues
#### Implementation #CodeExamples #Issues #ThreadSafety #LazyInitialization
#### Known Uses #RealWorldExamples
#### Related Patterns #AbstractFactory #Builder #Prototype

## Structural Patterns #ObjectComposition #Relationships #StructureSimplification
Patterns concerned with how classes and objects are composed to form larger structures. They focus on simplifying structure by identifying relationships.
### Adapter (Wrapper) #InterfaceConversion #Compatibility #LegacyCode
Converts the interface of a class into another interface clients expect. Lets classes work together that couldn't otherwise because of incompatible interfaces.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram #ClassAdapter #ObjectAdapter
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Bridge #Decorator #Proxy
### Bridge #DecouplingAbstractionImplementation #HierarchySeparation
Decouples an abstraction from its implementation so that the two can vary independently.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #AbstractFactory #Adapter
### Composite #TreeStructure #PartWholeHierarchy #Uniformity
Composes objects into tree structures to represent part-whole hierarchies. Lets clients treat individual objects and compositions of objects uniformly.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Decorator #Flyweight #Iterator #Visitor
### Decorator (Wrapper) #DynamicBehavior #ResponsibilityAddition #SubclassingAlternative
Attaches additional responsibilities to an object dynamically. Provides a flexible alternative to subclassing for extending functionality.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Adapter #Composite #Strategy
### Facade #SimplifiedInterface #SubsystemAccess #HidingComplexity
Provides a unified interface to a set of interfaces in a subsystem. Defines a higher-level interface that makes the subsystem easier to use.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #AbstractFactory #Mediator
### Flyweight #FineGrainedObjects #Sharing #MemoryEfficiency
Uses sharing to support large numbers of fine-grained objects efficiently by separating intrinsic (shared) and extrinsic (contextual) state.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Composite #State #Strategy
### Proxy #Surrogate #AccessControl #LazyLoading #RemoteAccess
Provides a surrogate or placeholder for another object to control access to it.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse #RemoteProxy #VirtualProxy #ProtectionProxy #SmartReference
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Adapter #Decorator

## Behavioral Patterns #ObjectInteraction #Communication #ResponsibilityAssignment #Algorithms
Patterns concerned with algorithms and the assignment of responsibilities between objects. They describe patterns of communication between objects.
### Chain of Responsibility #RequestHandling #DecouplingSenderReceiver #LooseCoupling
Avoids coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chains the receiving objects and passes the request along the chain until an object handles it.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Composite
### Command #EncapsulateRequest #ActionObject #Parameterization #UndoRedo
Encapsulates a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues #UndoSupport #Macros
#### Known Uses #RealWorldExamples
#### Related Patterns #Composite #Memento #Prototype
### Interpreter #LanguageGrammar #ExpressionEvaluation #DomainSpecificLanguage
Given a language, defines a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Composite #Flyweight #Iterator #Visitor
### Iterator #SequentialAccess #AggregateTraversal #HidingRepresentation
Provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues #InternalVsExternal #Robustness
#### Known Uses #RealWorldExamples
#### Related Patterns #Composite #FactoryMethod #Memento
### Mediator #DecoupledInteraction #CentralizedControl #ObjectCommunication
Defines an object that encapsulates how a set of objects interact. Promotes loose coupling by keeping objects from referring to each other explicitly, and lets you vary their interaction independently.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Facade #Observer
### Memento #CaptureState #RestoreState #UndoMechanism #Encapsulation
Without violating encapsulation, captures and externalizes an object's internal state so that the object can be restored to this state later.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons #EncapsulationTradeoffs
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Command #Iterator
### Observer (Publish-Subscribe) #StateChangeNotification #Dependency #EventHandling
Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons #UnexpectedUpdates
#### Implementation #CodeExamples #Issues #PushVsPull #SubjectManagement
#### Known Uses #RealWorldExamples #MVC
#### Related Patterns #Mediator #Singleton
### State #AlterBehavior #StateBasedLogic #ConditionalAlternative
Allows an object to alter its behavior when its internal state changes. The object will appear to change its class.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons #StateTransitionLogic
#### Implementation #CodeExamples #Issues #StateObjectCreation
#### Known Uses #RealWorldExamples
#### Related Patterns #Flyweight #Singleton #Strategy
### Strategy #AlgorithmFamily #InterchangeableBehavior #Delegation
Defines a family of algorithms, encapsulates each one, and makes them interchangeable. Lets the algorithm vary independently from clients that use it.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples
#### Related Patterns #Flyweight #State #TemplateMethod #Decorator
### Template Method #AlgorithmSkeleton #DeferSteps #SubclassImplementation
Defines the skeleton of an algorithm in an operation, deferring some steps to subclasses. Lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons #Hooks
#### Implementation #CodeExamples #Issues
#### Known Uses #RealWorldExamples #Frameworks
#### Related Patterns #FactoryMethod #Strategy
### Visitor #SeparateOperations #ObjectStructureTraversal #AddingFunctionality
Represents an operation to be performed on the elements of an object structure. Lets you define a new operation without changing the classes of the elements on which it operates.
#### Intent #Purpose
#### Motivation #ProblemContext
#### Applicability #WhenToUse
#### Structure #UML #Diagram
#### Participants #Classes #Roles
#### Collaborations #Interactions
#### Consequences #ProsCons #BreakingEncapsulation #AddingNewElements
#### Implementation #CodeExamples #Issues #DoubleDispatch
#### Known Uses #RealWorldExamples #Compilers
#### Related Patterns #Composite #Interpreter #Iterator

## Applying GoF Patterns #Usage #BestPractices #DesignPrinciples
How to effectively use patterns in software development.
### Choosing the Right Pattern #ProblemAnalysis #ContextMatching #ConsequencesEvaluation
Guidance on selecting appropriate patterns based on the design problem.
### Patterns and Software Architecture #SystemDesign #Modularity #Scalability
The role of patterns in shaping the overall architecture of a system.
### Relationship to Design Principles #SOLID #DRY #KISS
How patterns embody or support fundamental object-oriented design principles.
### Refactoring Towards Patterns #CodeImprovement #EvolutionaryDesign
Applying patterns to existing code to improve its structure and quality.
### Combining Patterns #CompoundPatterns #Synergy #ComplexSolutions
Using multiple patterns together to solve more complex design problems (e.g., MVC, Abstract Factory with Factory Method).

## Consequences and Criticisms #Tradeoffs #Pitfalls #Alternatives
Discussing the limitations and potential drawbacks of using GoF patterns.
### Potential Overuse #Complexity #AbstractionOverhead #"Patternitis"
The risk of applying patterns unnecessarily, leading to overly complex designs.
### Performance Implications #Indirection #ObjectCreationCost
How certain patterns might impact system performance.
### Criticism of GoF Patterns #StaticNature #OOFocus #ModernAlternatives
Critiques regarding the relevance, scope, and applicability in modern programming paradigms (e.g., functional programming) or with newer language features.
### Anti-Patterns #CommonMistakes #BadPractices
Mentioning the concept of anti-patterns as counterpoints to good design practices.

## Conclusion #Summary #Impact #Legacy
Final thoughts on the Gang of Four patterns.
### Lasting Impact #SoftwareEngineering #DesignThinking #Vocabulary
The enduring influence of the GoF book and patterns on the software industry.
### Modern Relevance #Evolution #Adaptation
How GoF patterns are still relevant and how the concepts have evolved.
### Further Learning Resources #Books #Websites #Communities
Pointers to additional resources for studying design patterns.
