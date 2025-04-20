# RxJs #ReactiveProgramming #JavaScript #Library
RxJS is a library for reactive programming using Observables, making it easier to compose asynchronous or callback-based code.

## Core Concepts #Fundamentals #Paradigm #Theory
Fundamental ideas and principles behind RxJs.
### Reactive Programming #Paradigm #Concept
Programming with asynchronous data streams. Event-based, push-based.
### Observer Pattern #DesignPattern #Foundation
An object (subject) maintains a list of its dependents (observers) and notifies them automatically of any state changes. RxJs heavily relies on this.
### Push vs Pull Systems #Architecture #Comparison
RxJs is primarily a push system (producer pushes values to consumers) compared to pull systems (consumer pulls values from producer, e.g., iterators).
### Streams #DataFlow #Concept
Sequences of ongoing events ordered in time. Observables represent these streams.
### Immutability #BestPractice #Concept
Operators return new Observables/values rather than modifying existing ones, promoting predictability.

## Observables #Core #Streams #Async
The central building block representing a stream of zero to many values over time.
### What is an Observable? #Definition #Core #Lazy
Represents an invokable collection of future values or events. Observables are lazy; they don't execute until subscribed to.
### Creating Observables #Creation #FactoryFunctions #Static
Functions used to generate Observable streams from various sources.
#### `of()` #Static #Utility #Values
Emits a variable number of arguments as a sequence and then completes.
#### `from()` #Conversion #Utility #Iterable #Promise
Converts various other objects and data types into Observables (e.g., Arrays, Promises, Iterables).
#### `fromEvent()` #DOM #Events #NodeJS
Creates an Observable from DOM events or Node.js EventEmitter events.
#### `interval()` #Timing #Generator #Periodic
Emits sequential numbers at a specified interval.
#### `timer()` #Timing #Generator #Delay #Periodic
Emits one value after a specified delay, then optionally emits values periodically.
#### `ajax()` #Network #HTTP #Asynchronous
Creates an Observable for an AJAX request.
#### `throwError()` #ErrorHandling #Utility #Static
Creates an Observable that immediately emits an error notification.
#### `EMPTY` #Constant #Utility #Complete
An Observable that emits no items and immediately completes.
#### `NEVER` #Constant #Utility #NoEmit
An Observable that never emits any items or notifications.
#### `create()` #Manual #Advanced #Custom
Manually implements the Observable's behavior upon subscription. Use with caution.
### Subscribing to Observables #Subscription #Execution #Callback
Activating the Observable and providing callbacks to handle emitted values, errors, or completion.
#### `subscribe()` Method #Core #Method #Activation
The primary way to start an Observable execution and receive its emissions.
#### Observer Object #Callback #Structure #Interface
An object with `next`, `error`, and `complete` methods passed to `subscribe`.
#### Multiple Subscriptions #Behavior #Unicast #Cold
Each subscription to a "cold" Observable typically triggers an independent execution.
### Unsubscribing / Managing Subscriptions #MemoryManagement #Lifecycle #Cleanup
Releasing resources associated with an active Observable execution. Crucial for preventing memory leaks.
#### `Subscription` Object #Handle #Resource #Disposable
Returned by `subscribe()`, represents the ongoing execution.
#### `unsubscribe()` Method #Cleanup #Core #ResourceManagement
Method on the `Subscription` object to cancel the execution.
#### `add()` Method #Utility #Management #Grouping
Groups multiple subscriptions together, allowing collective unsubscribing.
#### Automatic Unsubscription Patterns #Pattern #Operators #Lifecycle
Using operators like `take`, `takeUntil`, `first` to automatically complete and unsubscribe.
### Hot vs Cold Observables #Behavior #Multicast #Unicast #Sharing
Distinction based on whether the Observable execution is shared among subscribers.
#### Cold Observables #Default #Unicast #IndependentExecution
Producer is created and activated upon subscription. Each subscription gets its own independent execution.
#### Hot Observables #Shared #Multicast #SharedExecution
Producer exists and emits values regardless of subscribers. Subscribers tap into an ongoing execution. Often involves Subjects or operators like `share()`.

## Operators #Manipulation #Transformation #Functions
Pure functions that enable a functional programming style of dealing with collections/streams.
### What are Operators? #Definition #PureFunction #Utility
Functions that take an Observable as input and return a new Observable, modifying the stream's behavior or values without side effects on the original.
### Pipeable Operators #Chaining #ModernAPI #Composition
The standard way (RxJS 5.5+) to apply operators to an Observable using the `.pipe()` method for better composition and tree-shaking.
#### `pipe()` Method #Core #Utility #Composition
Method on Observable instances used to chain multiple operators together.
### Categories of Operators #Classification #Organization #Functionality
Grouping operators based on their primary function.
#### Creation Operators #Creation #FactoryFunctions (Also see Observables section)
Generate Observables (e.g., `of`, `from`, `interval`).
#### Transformation Operators #Mapping #DataShape #Projection
Modify the values emitted by the source Observable.
##### `map()` #Projection #Core #1-to-1
Applies a projection function to each emitted value.
##### `pluck()` #PropertyAccess #Utility #Shortcut
Maps each emission to a specified nested property. Deprecated; prefer `map()`.
##### `mapTo()` #ConstantValue #Utility #FixedOutput
Maps every emission to the same constant value. Deprecated; prefer `map(() => value)`.
##### `scan()` #Accumulation #State #Reduction
Applies an accumulator function over the source Observable, emitting each intermediate accumulated value.
##### `reduce()` #Aggregation #Complete #FinalValue
Applies an accumulator function over the source, emitting only the final accumulated value upon completion.
##### `buffer()` / `bufferTime()` / `bufferCount()` / `bufferToggle()` / `bufferWhen()` #Grouping #Batching #Arrays
Collects emitted values into arrays based on time, count, or other Observable signals.
##### `window()` / `windowTime()` / `windowCount()` / `windowToggle()` / `windowWhen()` #ObservableBatching #Advanced #HigherOrder
Similar to `buffer`, but emits nested Observables instead of arrays.
##### `switchMap()` #Mapping #Cancellation #Flattening #HigherOrder
Maps each value to an Observable, unsubscribes from the previous inner Observable, and subscribes to the new one. Ideal for requests that should cancel previous pending ones (e.g., typeahead).
##### `mergeMap()` / `flatMap()` #Mapping #Concurrency #Flattening #HigherOrder
Maps each value to an Observable and merges their emissions concurrently. Order is not preserved.
##### `concatMap()` #Mapping #Sequential #Flattening #HigherOrder
Maps each value to an Observable and subscribes sequentially, waiting for the previous inner Observable to complete before subscribing to the next. Preserves order.
##### `exhaustMap()` #Mapping #Ignoring #Flattening #HigherOrder
Maps each value to an Observable, but ignores new source values if the current inner Observable is still active. Useful for preventing concurrent actions (e.g., multiple submit clicks).
#### Filtering Operators #Selection #Condition #Restriction
Emit only a subset of the source Observable's values based on specified criteria.
##### `filter()` #Conditional #Core #Predicate
Emits only values that satisfy a specified predicate function.
##### `take()` #Limiting #Count #Completion
Emits only the first `n` values from the source.
##### `takeLast()` #Limiting #End #Completion
Emits only the last `n` values upon source completion.
##### `takeUntil()` #Limiting #Signal #Lifecycle #Completion
Emits values from the source until a notifier Observable emits. Useful for managing subscription lifecycle.
##### `takeWhile()` #Limiting #Condition #Completion
Emits values as long as they satisfy a predicate. Completes when the predicate returns false. Can include the value causing failure.
##### `skip()` #Ignoring #Count #Beginning
Ignores the first `n` values from the source.
##### `skipLast()` #Ignoring #End #Completion
Ignores the last `n` values upon source completion.
##### `skipUntil()` #Ignoring #Signal #Beginning
Ignores source values until a notifier Observable emits.
##### `skipWhile()` #Ignoring #Condition #Beginning
Ignores source values as long as they satisfy a predicate.
##### `first()` #SingleValue #Condition #Completion
Emits only the first value (or the first value satisfying a predicate) and then completes. Errors if no value matches.
##### `last()` #SingleValue #Condition #Completion
Emits only the last value (or the last value satisfying a predicate) upon source completion. Errors if no value matches.
##### `distinct()` #Uniqueness #Values #Memory
Emits only values that are distinct compared to all previously emitted values. Can be memory-intensive.
##### `distinctUntilChanged()` #Uniqueness #Consecutive #Comparison
Emits only values that are distinct from their immediate predecessor.
##### `distinctUntilKeyChanged()` #Uniqueness #Property #Comparison
Emits only values whose specified key property is distinct from that of the immediate predecessor.
##### `debounceTime()` #Timing #RateLimiting #InputStabilization
Emits a value only after a specified quiet period without any source emissions. Useful for input fields.
##### `throttleTime()` #Timing #RateLimiting #Sampling
Emits a value, then ignores subsequent source values for a specified duration. Can emit leading/trailing values.
##### `auditTime()` #Timing #Sampling #LatestValue
Ignores source values for a duration, then emits the most recent value from the source during that duration.
##### `sampleTime()` #Timing #Sampling #Periodic
Emits the most recent value from the source at periodic time intervals.
##### `find()` #SingleValue #Search #Completion
Emits the first value satisfying a predicate and completes. Returns `undefined` if none found. Similar to `first` but doesn't error.
##### `findIndex()` #SingleValue #Search #Completion
Emits the index of the first value satisfying a predicate and completes. Returns `-1` if none found.
##### `single()` #Assertion #Condition #Completion
Emits the single item that matches a predicate; errors if zero or more than one item matches.
##### `ignoreElements()` #Metadata #CompletionError #NoValues
Ignores all source values, only passing through `complete` or `error` notifications.
#### Combination Operators #Merging #Joining #Synchronization
Combine emissions from multiple source Observables.
##### `combineLatest()` #LatestValues #Synchronization #ArrayOutput
Combines multiple Observables. Emits an array of the latest values from each source whenever any source emits. Starts emitting only when all sources have emitted at least once.
##### `zip()` #Pairing #Sequential #ArrayOutput #Lockstep
Combines multiple Observables. Emits an array of values, taking one value from each source Observable at the corresponding index. Waits for all sources to emit at a given index before emitting the combined value.
##### `forkJoin()` #ParallelCompletion #Aggregation #ObjectOrArrayOutput
Waits for multiple Observables to complete, then emits an array or object containing the last value emitted by each. Useful for parallel asynchronous operations that need to finish before proceeding.
##### `merge()` #Concurrency #Interleaving #OrderNotPreserved
Subscribes to multiple Observables and passes through emissions from all of them concurrently as they arrive.
##### `concat()` #Sequential #Appending #OrderPreserved
Subscribes to Observables sequentially. Waits for the current Observable to complete before subscribing to the next one. Emissions are concatenated in order.
##### `race()` #Competition #FirstEmit #WinnerTakesAll
Subscribes to multiple Observables; mirrors the first Observable to emit a value or notification.
##### `startWith()` #Prefixing #InitialValue #Synchronous
Emits specified values immediately and synchronously before starting to emit values from the source Observable.
##### `endWith()` #Suffixing #FinalValue #OnComplete
Emits specified values after the source Observable completes, just before the `complete` notification.
##### `withLatestFrom()` #Snapshotting #Synchronization #PrimarySecondary
Combines a primary source with other sources. Emits only when the primary source emits, including the latest values from the other sources.
#### Error Handling Operators #Recovery #Resilience #ExceptionManagement
Handle errors that occur within an Observable stream.
##### `catchError()` #Recovery #Fallback #ReplacementObservable
Catches errors on the source Observable and replaces it with a new Observable or re-throws the error.
##### `retry()` #Resubscription #Failure #AutomaticRetry
Resubscribes to the source Observable a specified number of times if it errors.
##### `retryWhen()` #ConditionalRetry #Advanced #NotificationObservable
Resubscribes based on notifications from a secondary Observable, allowing complex retry logic (e.g., exponential backoff).
##### `throwIfEmpty()` #Assertion #ErrorHandling #CompletionCheck
Checks upon completion if the source emitted any values. If not, emits an `EmptyError`.
#### Utility Operators #Helper #Miscellaneous #SideEffects #Debugging
Operators for various purposes like debugging, delaying, or adding metadata.
##### `tap()` / `do()` #SideEffects #Debugging #Logging
Perform side effects (like logging) for each emission without affecting the stream itself. `do` is an older alias for `tap`.
##### `delay()` #Timing #Shifting #Scheduling
Delays the emission of items from the source Observable by a specified amount of time.
##### `delayWhen()` #ConditionalTiming #Advanced #SignalObservable
Delays emissions based on a delay duration determined by a secondary Observable.
##### `timeout()` #Timing #ErrorHandling #Deadline
Errors if the source Observable doesn't emit a value within a specified duration. Can switch to a fallback Observable.
##### `timeInterval()` #Timing #Metadata #ElapsedTime
Emits an object containing the emitted value and the time elapsed since the previous emission.
##### `timestamp()` #Timing #Metadata #AbsoluteTime
Emits an object containing the emitted value and the timestamp of the emission.
##### `toArray()` #Aggregation #Complete #Collection
Collects all source emissions into a single array, emitted only when the source completes.
##### `finalize()` #Cleanup #SideEffects #GuaranteedExecution
Executes a callback function when the Observable stream completes or errors (or is unsubscribed). Similar to `finally` in try/catch.
#### Multicasting Operators #Sharing #HotObservables #Efficiency
Allow multiple subscribers to share a single underlying subscription to the source Observable.
##### `multicast()` #Core #Subject #ManualConnect
Returns a `ConnectableObservable` that uses a provided Subject to multicast emissions. Requires manual `connect()`.
##### `publish()` #Alias #PublishSubject #ConnectableObservable
Equivalent to `multicast(new Subject())`.
##### `publishReplay()` #Alias #ReplaySubject #ConnectableObservable #Caching
Equivalent to `multicast(new ReplaySubject(...))`. Caches and replays values.
##### `publishLast()` #Alias #AsyncSubject #ConnectableObservable
Equivalent to `multicast(new AsyncSubject())`. Emits last value on completion.
##### `publishBehavior()` #Alias #BehaviorSubject #ConnectableObservable #InitialValue
Equivalent to `multicast(new BehaviorSubject(...))`. Requires an initial value.
##### `share()` #RefCount #AutomaticConnectDisconnect #Subject
Returns a new Observable that multicasts (shares) the original source Observable. Subscription count is tracked (`refCount`), connecting on the first subscription and disconnecting when count reaches zero. Uses `Subject` internally.
##### `shareReplay()` #RefCount #Replay #Caching #ReplaySubject
Similar to `share`, but uses a `ReplaySubject` to cache and replay a specified number of emissions to new subscribers. Can keep the source active even with zero subscribers depending on configuration.

## Subjects #Multicasting #Proxy #EventEmitter
Special type of Observable that allows values to be multicasted to many Observers. Subjects are also Observers themselves.
### What is a Subject? #Definition #Multicast #Proxy #ObserverObservable
Acts as both an Observable (can be subscribed to) and an Observer (has `next`, `error`, `complete` methods). Useful for bridging non-reactive code or multicasting events.
### Types of Subjects #Variants #Behavior #State
Different Subject implementations with distinct behaviors regarding initial values, buffering, and final values.
#### `Subject` #Basic #NoInitialValue #NoReplay
Standard Subject. Subscribers only receive values emitted *after* they subscribe.
#### `BehaviorSubject` #InitialValue #CurrentValue #State
Requires an initial value. New subscribers immediately receive the *most recent* value upon subscription, and then subsequent values. Useful for representing "current value".
#### `ReplaySubject` #Buffering #History #Cache
Records a specified number of emitted values (or values within a time window) and replays them to new subscribers.
#### `AsyncSubject` #LastValue #OnComplete #FinalState
Emits only the *last* value received from the source, and only when the source completes. If the source errors, it emits the error. Useful for async operations where only the final result matters.
### Use Cases #Application #Scenarios #Patterns
Common scenarios where Subjects are beneficial.
#### State Management #UI #DataSharing #Store
Managing shared application state, especially with `BehaviorSubject`.
#### Event Bus #Communication #Decoupling #Mediator
Creating a simple in-application event bus for decoupled communication between components.
#### Proxying #Intermediate #Sharing #Bridging
Acting as a proxy between a data producer and multiple consumers, often used with multicasting operators.

## Schedulers #Concurrency #Timing #ExecutionControl #Context
Centralized dispatchers controlling *when* and *where* (execution context) subscriptions and emissions occur.
### What are Schedulers? #Definition #Concurrency #Timing #ExecutionModel
Manage the execution context for Observable operations, enabling control over synchronicity/asynchronicity (e.g., using timeouts, animation frames, microtasks).
### Types of Schedulers #Variants #Context #Performance
Different built-in schedulers providing various execution strategies.
#### `null` (Default/Synchronous) #Immediate #Blocking #Recursive
Default scheduler. Executes operations synchronously and recursively where possible. Can lead to stack overflows if not careful.
#### `queueScheduler` #Microtask #Queue #AsynchronousSoon
Schedules tasks on a microtask queue (like `Promise.then`), executing after the current synchronous block but before yielding back to the event loop (e.g., rendering).
#### `asapScheduler` #Macrotask #EventLoop #AsynchronousLater
Schedules tasks on the JavaScript event loop's macrotask queue (like `setTimeout(..., 0)`). Executes later than `queueScheduler`.
#### `asyncScheduler` #setInterval #Macrotask #TimeBased
Default scheduler for time-based operators (`interval`, `timer`, `delay`). Uses `setInterval`/`setTimeout`. Equivalent to `asapScheduler` for non-delayed tasks.
#### `animationFrameScheduler` #Browser #Rendering #UI #Throttling
Schedules tasks synchronised with the browser's repaint cycle using `requestAnimationFrame`. Ideal for animations or DOM updates to avoid layout thrashing.
### Using Schedulers #Application #Operators #Control
Applying schedulers to control execution timing and context.
#### `observeOn()` #NotificationContext #Operator #DeliveryControl
Specifies the Scheduler on which observer notifications (`next`, `error`, `complete`) will be delivered. Affects downstream operators.
#### `subscribeOn()` #SubscriptionContext #Operator #ExecutionControl
Specifies the Scheduler on which the subscription action (the `subscribe` call and setup) should occur. Affects the execution context of the source Observable and upstream operators. Often used for moving work off the main thread.
#### Passing Scheduler to Creation Functions #Timing #FactoryFunctions #InitialContext
Some creation operators (`of`, `from`, `range`, time-based operators) accept a Scheduler as the last argument to control their emission timing.

## Error Handling #Resilience #Recovery #Exceptions
Strategies and operators for managing errors within asynchronous streams.
### Error Notification Channel #Core #Observer #Termination
Errors are terminal events in Observables. They are delivered via the `error` callback in the Observer/subscription.
### Strategies for Handling Errors #Patterns #Techniques #Recovery
Common approaches to prevent errors from terminating streams prematurely.
#### `try...catch` (Imperative Limitations) #Synchronous #Limitation
Only works for errors thrown synchronously during the subscription setup, not for asynchronous emissions. Generally not useful for Observable errors.
#### `catchError()` Operator #Recovery #Replacement #FallbackObservable
Catches errors from the source Observable and allows replacing the stream with a fallback Observable or re-throwing.
#### `retry()` Operator #Resubscription #TemporaryErrors #AutomaticRetry
Resubscribes to the source Observable upon error, potentially multiple times. Useful for transient network issues.
#### `retryWhen()` Operator #AdvancedRetry #Logic #ConditionalRetry
Provides more control over retry logic using a notifier Observable (e.g., implementing exponential backoff).
#### `finalize()` Operator #Cleanup #RegardlessOfOutcome #SideEffects
Executes a callback when the stream terminates for any reason (complete, error, unsubscribe). Useful for resource cleanup.
### Global Error Handling #ApplicationLevel #BestPractice #Logging
Implementing application-wide strategies for logging or reporting unhandled RxJs errors.

## Testing RxJs Code #UnitTesting #IntegrationTesting #Verification
Techniques and tools for writing tests for reactive code based on RxJs.
### Challenges in Testing Async Code #Asynchronicity #Timing #Complexity
Dealing with time, concurrency, and the asynchronous nature of Observables makes testing non-trivial.
### Marble Testing #Visualization #DSL #TestingFramework #VirtualTime
A specialized technique using visual diagrams (marble diagrams) and a virtual time scheduler to test Observable behavior synchronously and deterministically.
#### `TestScheduler` #VirtualTime #Control #Simulation
A special Scheduler provided by RxJS testing utilities that allows controlling the passage of virtual time.
#### Marble Diagrams #Syntax #Representation #DSL
A domain-specific language using ASCII characters to represent events occurring over virtual time.
#### Helper Methods #Utilities #Assertions #Framework (`jasmine-marbles`, `jest-marbles`)
Functions like `hot`, `cold`, `expectObservable`, `expectSubscriptions` provided by testing libraries to simplify marble testing setup and assertions.
### Testing Strategies #Approaches #Techniques #BestPractices
General methods for testing RxJs-based logic.
#### Testing Operators #Isolation #UnitTesting #PureFunctions
Testing custom or complex combinations of operators in isolation.
#### Testing Observable Chains #Integration #Flow #EndToEnd
Testing the complete flow of data through a chain of operators.
#### Mocking Dependencies #Isolation #Setup #Spies #Stubs
Using mock Observables or Subjects to isolate the code under test from its dependencies (e.g., HTTP services).

## Practical Applications & Use Cases #RealWorld #Examples #Scenarios
Common problems solved and patterns implemented using RxJs.
### UI Event Handling #DOM #UserInteraction #Frontend
Managing streams of user events like clicks, mouse movements, keyboard input.
### Asynchronous Data Fetching #HTTP #API #BackendCommunication
Handling API calls, managing request/response cycles, cancellation, and error handling.
### State Management #Frontend #DataFlow #SingleSourceOfTruth
Implementing predictable state management solutions in frontend applications.
### Real-time Applications #WebSockets #Polling #LiveUpdates
Handling continuous data streams from sources like WebSockets or Server-Sent Events.
### Animation #UI #Timing #Coordination
Creating complex, timed animations synchronized with browser rendering.
### Complex Event Correlation #BusinessLogic #Coordination #PatternMatching
Combining and reacting to intricate sequences or combinations of events.
### Debouncing/Throttling User Input #Performance #UI #Responsiveness
Improving UI performance and responsiveness by controlling the rate of event handling.

## Integration with Frameworks/Libraries #Ecosystem #Interoperability #Adoption
How RxJs is used within popular JavaScript frameworks and libraries.
### RxJs in Angular #CoreDependency #AsyncPipe #HttpClient #Forms
Deeply integrated into Angular for handling asynchronous operations (HttpClient, Router, Forms, EventEmitter) and template binding (`AsyncPipe`).
### RxJs in React #StateManagement #Hooks #Libraries #Middleware
Used optionally via state management libraries (e.g., Redux-Observable, MobX-State-Tree), custom Hooks, or directly for managing complex async logic.
### RxJs in Vue #StateManagement #Libraries #CompositionAPI
Used optionally via libraries (
e.g., VueUse, Vue-Rx) or within the Composition API for managing reactive dependencies and async operations.
### RxJs with Node.js #Backend #Streams #ServerSide
Applying reactive patterns to backend development, interacting with Node.js streams, databases, or microservices.

## Advanced Topics & Patterns #Expert #DeepDive #Architecture
Concepts and techniques for more complex RxJs usage.
### Custom Operators #Extensibility #Reusability #Composition
Creating reusable, domain-specific operators by composing existing ones or using the `Observable` constructor.
### Higher-Order Observables #ObservablesOfObservables #FlatteningOperators #Complexity
Observables that emit other Observables. Managed using flattening operators (`switchMap`, `mergeMap`, `concatMap`, `exhaustMap`).
### Backpressure #FlowControl #Strategy #Limitation (Concept Awareness)
Managing situations where a producer emits faster than a consumer can process. RxJS primarily relies on operators like `buffer`, `throttle`, `debounce` rather than a formal backpressure protocol like Reactive Streams specification.
### Performance Optimization #MemoryLeaks #OperatorChoice #Scheduling #BestPractices
Techniques for writing efficient RxJs code, avoiding common pitfalls like memory leaks, choosing the right operators, and understanding scheduler impacts.
### Reactive Architectures #DesignPatterns #SystemDesign #Scalability
Designing entire applications or systems around reactive principles using RxJs.

## Comparison with Other Async Paradigms #Context #Alternatives #Tradeoffs
Understanding how RxJs relates to other approaches for handling asynchronous operations in JavaScript.
### Callbacks #Legacy #CallbackHell #InversionOfControl
The traditional (and often complex) way of handling async operations in JavaScript. Prone to "Callback Hell".
### Promises #SingleValue #AsyncAwait #Comparison #Standard
Built-in JavaScript feature for handling a single future value. Easier composition than callbacks but less powerful than Observables for streams. Basis for Async/Await.
### Async/Await #SyntacticSugar #Promises #Comparison #Readability
Syntax built on Promises to write asynchronous code that looks more synchronous, improving readability for certain use cases. Not suitable for multi-value streams directly.
### Reactive Streams Specification #Standard #Interoperability #Compliance (Note)
A standard initiative for asynchronous stream processing with non-blocking backpressure. RxJS v5+ is inspired by it but not strictly compliant. Awareness is useful for interoperability concepts.
