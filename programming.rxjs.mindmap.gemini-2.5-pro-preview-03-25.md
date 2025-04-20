# RxJs #ReactiveProgramming #JavaScript #Library
RxJs is a library for reactive programming using Observables, making it easier to compose asynchronous or callback-based code.

## Core Concepts #Fundamentals #Basics #Core
The essential building blocks and principles of RxJs.

### Observables #Producer #Stream #CoreConcept
Represent a source of values delivered asynchronously over time (a stream).
Can emit zero or multiple values, and optionally an error or completion signal.

#### Observable Creation #Instantiation #Factory
Functions used to generate Observables.

#### Cold vs Hot Observables #Behavior #Subscription
Distinction based on when the producer starts emitting values.
Cold: Producer starts upon subscription (e.g., HTTP request).
Hot: Producer starts independently of subscriptions (e.g., DOM events, Subjects).

### Observer #Consumer #Listener #CoreConcept
An object with `next`, `error`, and `complete` methods to receive values from an Observable.

#### The Observer Interface #Structure #Callbacks
Defines the methods an Observer must have: `next(value)`, `error(err)`, `complete()`.

#### Partial Observers #Flexibility #Usage
Providing only a subset of the `next`, `error`, `complete` handlers.

### Subscriptions #Execution #Lifecycle #CoreConcept
Represents the execution of an Observable. Primarily used for cleanup (unsubscribing).

#### `subscribe()` Method #Invocation #Starting
Method called on an Observable to start receiving values, requires an Observer or handler functions.

#### Unsubscribing #MemoryManagement #Cleanup
Calling the `unsubscribe()` method on a Subscription to release resources and stop listening.

#### `Subscription` Object #Handle #Resource
The object returned by `subscribe()`, allowing manual cleanup.

#### `add()` Method #Composition #Cleanup
Combining multiple subscriptions for grouped unsubscribing.

### Operators #Transformation #Manipulation #CoreConcept
Pure functions that enable a declarative approach to complex asynchronous logic by transforming, filtering, combining, or manipulating Observable streams.

#### Pipeable Operators #Composition #Chainable
Operators used within the `.pipe()` method of an Observable for easy chaining. `source$.pipe(op1(), op2())`.

#### Operator Categories #Classification #Functionality
Grouping operators based on their purpose (e.g., creation, transformation, filtering).

### Subjects #Multicasting #EventEmitter #CoreConcept
Special type of Observable that allows values to be multicasted to many Observers. Subjects act as both an Observable and an Observer.

#### Subject Basics #Proxy #Bridge
Can be subscribed to, and you can call `next(value)`, `error(err)`, and `complete()` on them.

#### Multicasting Explained #Sharing #Efficiency
Sharing a single Observable execution among multiple subscribers.

### Schedulers #Concurrency #Timing #CoreConcept
Control when and how subscriptions start executing and notifications are delivered. Manage execution context (e.g., synchronous, setTimeout, requestAnimationFrame).

#### Scheduler Purpose #ExecutionControl #Context
Decoupling *when* and *where* computation happens from the task itself.

#### Types of Schedulers #Options #Performance
Different schedulers for different use cases (e.g., `asyncScheduler`, `asapScheduler`, `queueScheduler`, `animationFrameScheduler`).

## Creating Observables #Instantiation #Sources
Methods and functions provided by RxJs to create Observable instances from various sources.

### `of()` #Creation #StaticValues
Creates an Observable that emits a sequence of provided values and then completes.

### `from()` #Creation #Conversion
Converts various types (Arrays, Promises, Iterables, other Observables) into an Observable.

### `fromEvent()` #Creation #DOM #NodeJS
Creates an Observable from DOM events or Node.js EventEmitter events.

### `interval()` #Creation #Timing
Creates an Observable that emits sequential numbers at a specified time interval.

### `timer()` #Creation #Timing #Delay
Creates an Observable that emits a value after a specified delay, and optionally then at regular intervals.

### `ajax()` #Creation #HTTP #Network
Creates an Observable for making AJAX requests.

### `throwError()` #Creation #ErrorHandling
Creates an Observable that immediately emits an error notification.

### `EMPTY` #Creation #Constant
An Observable constant that emits no items and immediately completes.

### `NEVER` #Creation #Constant
An Observable constant that emits no items and never completes or errors.

### `defer()` #Creation #Lazy
Creates an Observable only when subscribed to, allowing for lazy generation of the underlying producer.

### `generate()` #Creation #Loop
Creates an Observable that emits a sequence of values based on an initial state and an iterative function, similar to a `for` loop.

## Operators Deep Dive #Manipulation #Transformation #Power
Detailed exploration of various operator categories and key operators within them.

### Creation Operators #Instantiation #Sources
Operators that create new Observables (often used statically).
Examples: `of`, `from`, `interval`, `timer`, `fromEvent`, `ajax`, `throwError`, `EMPTY`, `NEVER`, `defer`, `generate`.

### Transformation Operators #Mapping #Projection
Operators that transform the values emitted by an Observable.

#### `map()` #Transformation #Projection
Applies a projection function to each emitted value.

#### `pluck()` #Transformation #PropertyAccess
Maps each emission to a specific nested property. (Deprecated, use `map`).

#### `mapTo()` #Transformation #ConstantValue
Maps every emission to the same constant value. (Deprecated, use `map`).

#### `scan()` #Transformation #Accumulation #State
Applies an accumulator function over the source Observable, emitting each intermediate result. Like `reduce` for streams.

#### `reduce()` #Transformation #Aggregation
Applies an accumulator function over the source Observable, emitting only the final accumulated value upon completion.

#### `buffer()` #Transformation #Grouping #Batching
Buffers source Observable values until a notifier Observable emits.

#### `bufferCount()` #Transformation #Grouping #Batching
Buffers source Observable values until the buffer reaches a specified size.

#### `bufferTime()` #Transformation #Grouping #Batching
Buffers source Observable values for a specific time period.

#### `bufferToggle()` #Transformation #Grouping #Windowing
Starts buffering when an opening Observable emits, stops when a closing Observable emits.

#### `bufferWhen()` #Transformation #Grouping #Dynamic
Buffers values based on a factory function that returns an Observable to signal buffer closing.

#### `window()` / `windowCount()` / `windowTime()` etc. #Transformation #HigherOrder #Windowing
Similar to `buffer` operators, but emit nested Observables instead of arrays.

### Filtering Operators #Selection #Conditional
Operators that selectively emit values based on conditions.

#### `filter()` #Filtering #Conditional
Emits only those values from the source that satisfy a predicate function.

#### `take()` #Filtering #Limiting
Emits only the first `n` values from the source.

#### `takeLast()` #Filtering #Limiting
Emits only the last `n` values from the source upon completion.

#### `takeUntil()` #Filtering #Completion #Signal
Emits values from the source until a notifier Observable emits.

#### `takeWhile()` #Filtering #Conditional
Emits values from the source as long as they satisfy a predicate, then completes.

#### `skip()` #Filtering #Ignoring
Skips the first `n` values from the source.

#### `skipLast()` #Filtering #Ignoring
Skips the last `n` values from the source upon completion.

#### `skipUntil()` #Filtering #Ignoring #Signal
Skips values from the source until a notifier Observable emits.

#### `skipWhile()` #Filtering #Conditional #Ignoring
Skips values from the source as long as they satisfy a predicate.

#### `distinct()` #Filtering #Uniqueness
Emits only values from the source that are distinct compared to previously emitted values.

#### `distinctUntilChanged()` #Filtering #Uniqueness #Consecutive
Emits only values from the source that are different from the previous emission.

#### `distinctUntilKeyChanged()` #Filtering #Uniqueness #Property
Emits only values whose specified key property is different from the previous emission's key property.

#### `throttle()` #Filtering #RateLimiting #Timing
Emits a value, then ignores subsequent values for a duration determined by another Observable.

#### `throttleTime()` #Filtering #RateLimiting #Timing
Emits a value, then ignores subsequent values for a specified duration.

#### `debounce()` #Filtering #RateLimiting #Timing
Emits a value only after a specified silence duration passes, controlled by another Observable.

#### `debounceTime()` #Filtering #RateLimiting #Timing
Emits a value only after a specified silence duration has passed without any new emission.

#### `audit()` #Filtering #RateLimiting #Timing
Ignores values for a duration determined by another Observable, then emits the most recent value.

#### `auditTime()` #Filtering #RateLimiting #Timing
Ignores values for a duration, then emits the most recent value from the source.

#### `sample()` #Filtering #Sampling #Timing
Emits the most recent value from the source whenever a notifier Observable emits.

#### `sampleTime()` #Filtering #Sampling #Timing
Emits the most recent value from the source at periodic time intervals.

#### `first()` #Filtering #Finding
Emits only the first value satisfying a condition, or the first value if no condition provided. Errors if no value matches.

#### `last()` #Filtering #Finding
Emits only the last value satisfying a condition upon completion, or the last value if no condition provided. Errors if no value matches.

#### `find()` #Filtering #Finding
Emits the first value satisfying a predicate and then completes.

#### `findIndex()` #Filtering #Finding #Index
Emits the index of the first value satisfying a predicate and then completes.

#### `single()` #Filtering #Assertion
Emits the single value that satisfies a predicate. Errors if zero or more than one value matches.

#### `ignoreElements()` #Filtering #Completion #Error
Ignores all `next` emissions, only passes `error` or `complete`.

### Combination Operators #Merging #Joining
Operators that combine multiple Observables.

#### `combineLatest()` #Combination #Synchronization
Combines multiple Observables. Emits an array of the latest values from each source whenever any source emits, once all sources have emitted at least once.

#### `concat()` #Combination #Sequential
Subscribes to Observables sequentially, emitting all values from the first before moving to the next. Used as a static function `concat(obs1, obs2)` or operator `obs1.pipe(concatWith(obs2))`.

#### `merge()` #Combination #Concurrent
Subscribes to all Observables concurrently, emitting values from any source as they arrive. Used as a static function `merge(obs1, obs2)` or operator `obs1.pipe(mergeWith(obs2))`.

#### `forkJoin()` #Combination #Parallel #Completion
Waits for all source Observables to complete, then emits an array (or object) containing the last emitted value from each source. Similar to `Promise.all`.

#### `zip()` #Combination #Pairing #Synchronization
Combines multiple Observables. Emits an array of values, where the nth emission pairs the nth value from each source Observable. Waits for all sources to emit their nth value.

#### `race()` #Combination #Competition
Mirrors the first source Observable to emit a value or notification.

#### `startWith()` #Combination #Prepend
Emits specified values before starting to emit values from the source Observable.

#### `endWith()` #Combination #Append
Emits specified values after the source Observable completes.

#### `withLatestFrom()` #Combination #Sampling #State
Combines the source with other Observables. Emits only when the source emits, including the latest value from the other Observables.

### Error Handling Operators #Resilience #Recovery
Operators designed to deal with errors in Observable streams.

#### `catchError()` #ErrorHandling #Recovery
Catches errors on the source Observable and replaces the stream with a new Observable or throws an error.

#### `retry()` #ErrorHandling #Resilience
Resubscribes to the source Observable a specified number of times if it errors.

#### `retryWhen()` #ErrorHandling #Resilience #Strategy
Resubscribes to the source Observable based on notifications from a secondary Observable triggered by the error. Allows complex retry logic.

#### `finalize()` #ErrorHandling #Cleanup #SideEffect
Executes a callback function when the source Observable completes or errors (or is unsubscribed). Similar to `finally` block.

### Utility Operators #Helper #SideEffect
Operators for miscellaneous tasks like debugging or side effects.

#### `tap()` #Utility #SideEffect #Debugging
Performs a side effect (like logging) for each emission (next, error, complete) without affecting the stream.

#### `delay()` #Utility #Timing
Delays the emission of items from the source Observable by a specified amount of time.

#### `delayWhen()` #Utility #Timing #Dynamic
Delays emissions based on a delay duration determined by a secondary Observable.

#### `timeout()` #Utility #Timing #ErrorHandling
Errors if the source Observable doesn't emit a value within a specified timeframe.

#### `timestamp()` #Utility #Metadata
Attaches a timestamp to each emitted value.

#### `timeInterval()` #Utility #Metadata #Timing
Emits the time elapsed between consecutive emissions.

#### `materialize()` #Utility #Metadata #Reflection
Represents emissions (`next`, `error`, `complete`) as explicit Notification objects.

#### `dematerialize()` #Utility #Metadata #Reflection
Converts materialized Notification objects back into regular emissions.

#### `toArray()` #Utility #Aggregation #Collection
Collects all source emissions into an array and emits it when the source completes.

### Conditional and Boolean Operators #Logic #FlowControl
Operators that work with boolean logic or emit based on conditions across multiple emissions.

#### `defaultIfEmpty()` #Conditional #Fallback
Emits a default value if the source Observable completes without emitting any `next` values.

#### `every()` #Conditional #Predicate #Completion
Emits `true` if all source values satisfy a predicate, `false` otherwise, upon completion.

#### `sequenceEqual()` #Conditional #Comparison #Completion
Compares two Observables, emits `true` if they emit the same sequence of values, `false` otherwise, upon completion.

### Multicasting Operators #Sharing #Subjects
Operators related to sharing a single subscription among multiple observers.

#### `multicast()` #Multicasting #Subject #ConnectableObservable
Returns a ConnectableObservable that uses a Subject to multicast emissions. Requires `connect()`.

#### `publish()` #Multicasting #Subject #ConnectableObservable
Alias for `multicast(() => new Subject())`.

#### `publishReplay()` #Multicasting #ReplaySubject #ConnectableObservable
Alias for `multicast(() => new ReplaySubject())`. Buffers values for late subscribers.

#### `publishBehavior()` #Multicasting #BehaviorSubject #ConnectableObservable
Alias for `multicast(() => new BehaviorSubject())`. Provides the last value to new subscribers.

#### `publishLast()` #Multicasting #AsyncSubject #ConnectableObservable
Alias for `multicast(() => new AsyncSubject())`. Emits only the last value upon completion.

#### `share()` #Multicasting #Sharing #RefCount
Returns a new Observable that shares the source subscription among multiple subscribers using a Subject internally. Subscription starts on first subscriber, stops on last unsubscriber (`refCount`).

#### `shareReplay()` #Multicasting #Sharing #ReplaySubject #Caching
Shares the source using a ReplaySubject, allowing replay of buffered values and potentially keeping the source active even with zero subscribers.

## Subjects In-Depth #Multicasting #State #Proxy
Exploring the different types of Subjects and their specific behaviors.

### `Subject` #Basic #Multicast
The standard Subject. Doesn't hold any state. Subscribers only get values emitted *after* they subscribe.

### `BehaviorSubject` #State #InitialValue #CurrentValue
Requires an initial value. Stores the "current" value. New subscribers immediately receive the current value (or initial value).

### `ReplaySubject` #Buffer #History #Cache
Buffers a specified number of past emissions (or emissions within a time window). New subscribers receive the buffered values upon subscription.

### `AsyncSubject` #LastValue #Completion
Only emits the last value received from the source Observable, and only when the source completes. If the source errors, it emits the error.

### Void Subject (`Subject<void>`) #Signal #Event
Using a Subject without a meaningful value type, often used purely for signaling events.

## Schedulers In-Depth #Concurrency #Timing #ExecutionControl
Understanding how Schedulers influence the timing and context of Observable execution.

### Scheduler Types #Implementation #Options

#### `null` or `undefined` (Synchronous) #Default #Immediate
Default behavior for many operators. Executes emissions synchronously within the current call stack.

#### `queueScheduler` #Synchronous #Queue #Recursion
Schedules tasks on a queue to be executed synchronously one after another. Useful for recursive operators to prevent stack overflows.

#### `asapScheduler` #Asynchronous #Microtask
Schedules tasks on the JavaScript microtask queue (like `Promise.then`). Executes after the current synchronous block but before rendering or macrotasks.

#### `asyncScheduler` #Asynchronous #Macrotask
Schedules tasks using `setInterval` or `setTimeout` (macrotask queue). Executes after the current synchronous block and microtasks. Good for time-based operators.

#### `animationFrameScheduler` #Asynchronous #Rendering #UI
Schedules tasks to run just before the browser repaint using `requestAnimationFrame`. Ideal for animations or DOM updates synchronized with rendering.

### Using Schedulers #Application #Control
How to specify schedulers for operators (e.g., third argument in `timer`, `interval`, `of`) or using `observeOn` and `subscribeOn`.

#### `observeOn()` #Operator #DeliveryContext
Operator to control the scheduler used for delivering `next`, `error`, and `complete` notifications to the observer. Affects downstream operators.

#### `subscribeOn()` #Operator #SubscriptionContext
Operator to control the scheduler used when the `subscribe()` call happens. Affects where the source Observable's setup and emission logic runs. Affects the entire chain upstream.

## Error Handling Strategies #Resilience #Robustness
Common patterns and techniques for managing errors within RxJs streams.

### `catchError` Pattern #Recovery #Fallback
Using `catchError` to provide a fallback Observable or re-throw a processed error.

### `retry` / `retryWhen` Patterns #Resilience #Network
Implementing automatic retries, potentially with backoff strategies using `retryWhen` and `timer`/`delay`.

### `finalize` for Cleanup #GuaranteedExecution #Cleanup
Ensuring resource cleanup happens regardless of success or error.

### Global Error Handling #ApplicationLevel #Centralized
Strategies for catching unhandled RxJs errors at the application level.

## RxJs in Frameworks #Integration #Ecosystem
How RxJs is commonly used within popular JavaScript frameworks.

### RxJs and Angular #DeepIntegration #HttpClient #Forms
Angular heavily uses RxJs for `HttpClient`, `EventEmitter`, Reactive Forms, Router events, NgRx state management, etc.

#### `AsyncPipe` #TemplateBinding #AutomaticSubscription
Angular pipe for binding Observables directly in templates, handling subscription and unsubscription automatically.

### RxJs and React #StateManagement #Hooks
Using RxJs for state management (e.g., redux-observable, custom hooks) and handling complex async flows.

#### `useObservable` Hooks #Integration #CustomHooks
Custom React hooks for subscribing to Observables within components. Libraries like `rxjs-hooks`.

### RxJs and Vue #CompositionAPI #Reactivity
Integrating RxJs with Vue's Composition API or Options API for managing asynchronous state and events.

#### VueUse `useObservable` #Integration #CompositionAPI
Utilities within VueUse or other libraries for integrating Observables.

### RxJs and Node.js #Backend #Streams
Using RxJs on the backend for managing asynchronous operations, data streams, or event handling.

## Testing RxJs Code #Verification #QualityAssurance
Techniques and tools for testing code that uses RxJs Observables.

### Marble Testing #Visualization #Timing #TestingFramework
Using marble diagrams (ASCII strings) to represent Observable emissions, subscriptions, and timing within tests.

#### `TestScheduler` #VirtualTime #TestingUtility
RxJs utility for synchronously testing asynchronous operations involving schedulers by controlling virtual time.

#### Writing Marble Tests #Syntax #Assertions
Understanding the syntax for marble diagrams (`-`, `|`, `#`, `^`, `!`, `()`, `a-z`) and asserting expected outcomes.

### Testing Side Effects (`tap`) #Spies #Mocking
Using testing spies (e.g., Jasmine, Jest spies) to verify side effects performed within `tap` operators.

### Testing Subscriptions #MemoryLeaks #Verification
Ensuring subscriptions are properly created and cleaned up to prevent memory leaks.

## Advanced Concepts #DeepDive #Complexity
More complex topics for experienced RxJs users.

### Higher-Order Observables #NestedObservables #Flattening
Observables that emit other Observables.

#### `switchMap()` #HigherOrder #Cancellation #Latest
Maps each value to an Observable, subscribes to it, but unsubscribes from the previous inner Observable when a new outer value arrives. Good for scenarios like typeaheads where only the latest result matters.

#### `mergeMap()` / `flatMap()` #HigherOrder #Concurrency #Parallel
Maps each value to an Observable and merges the emissions of all inner Observables concurrently.

#### `concatMap()` #HigherOrder #Sequential #OrderPreservation
Maps each value to an Observable, subscribes sequentially. Waits for the previous inner Observable to complete before subscribing to the next one. Preserves order.

#### `exhaustMap()` #HigherOrder #Ignoring #RateLimiting
Maps each value to an Observable, but ignores new outer values if the previous inner Observable is still active. Good for preventing concurrent executions (e.g., multiple submit button clicks).

### Backpressure #FlowControl #Strategy
Handling situations where an Observable produces values faster than the Observer can consume them. RxJs operators generally handle this implicitly, but awareness is useful.

### Custom Operators #Extensibility #Reusability
Creating your own reusable RxJs operators by composing existing operators or using the `Observable` constructor.

### Lettable Operators vs Instance Operators #History #BestPractice
Understanding the shift from prototype-patched instance operators (`source.map(...)`) to pipeable (lettable) operators (`source.pipe(map(...))`) for better tree-shaking and composition.

## Common Patterns & Use Cases #Recipes #Solutions
Practical applications and common solutions implemented with RxJs.

### Typeahead / Autocomplete #UI #Search #Debounce #SwitchMap
Implementing search suggestions with debouncing and cancellation of previous requests.

### State Management #UI #DataFlow #BehaviorSubject #Scan
Using Subjects (especially `BehaviorSubject`) and `scan` to manage application state.

### Polling #Network #Interval #SwitchMap
Periodically fetching data from a server using `timer` or `interval` combined with flattening operators.

### Handling User Input #UI #Events #Debounce #Throttle
Debouncing, throttling, or filtering user input events like button clicks or keyboard entries.

### Retrying Failed Operations #Network #ErrorHandling #RetryWhen
Implementing exponential backoff or other custom retry logic for network requests.

### Combining Streams #UI #DataAggregation #CombineLatest #ForkJoin
Merging data from multiple sources for display or processing.

## Performance Considerations #Optimization #Efficiency
Tips for writing efficient RxJs code and avoiding common pitfalls.

### Operator Choice #Efficiency #Impact
Understanding the performance implications of different operators (e.g., `mergeMap` vs `switchMap`).

### Unsubscription #MemoryLeaks #Cleanup
The importance of unsubscribing to prevent memory leaks, especially in long-lived applications (SPAs). TakeUntil pattern.

### Sharing Subscriptions #Efficiency #Multicasting #ShareReplay
Using multicasting operators (`share`, `shareReplay`) to avoid redundant work when multiple subscribers need the same source.

### Scheduler Tuning #ContextSwitching #Performance
Choosing the right scheduler can impact performance, especially in high-frequency scenarios.

## RxJs vs Other Async Techniques #Comparison #Alternatives
How RxJs compares to Promises, async/await, callbacks, and other libraries.

### RxJs vs Promises #Comparison #SingleValue #MultipleValues
Promises handle single asynchronous results; Observables handle streams of zero-to-many values over time. Observables are cancellable.

### RxJs vs Async/Await #Comparison #Syntax #Streams
Async/await provides syntactic sugar for Promises. RxJs offers a powerful compositional model for complex event streams. Can be used together.

### RxJs vs Callbacks #Comparison #CallbackHell #Composition
RxJs provides better composition and error handling compared to traditional nested callbacks.

### RxJs vs Other Stream Libraries #Comparison #Ecosystem #Alternatives
Comparison with libraries like Most.js, Bacon.js, Kefir.js.

## RxJs Ecosystem & Related Libraries #Tools #Extensions
Libraries and tools often used alongside or built upon RxJs.

### NgRx (Angular) #StateManagement #Redux #Angular
Redux-inspired state management library for Angular built heavily on RxJs.

### Redux-Observable (React/Redux) #Middleware #SideEffects #Redux
RxJs-based middleware for Redux to handle asynchronous actions and side effects.

### RxJS DOM #Library #DOMBinding
Library providing bindings for DOM events and AJAX requests as Observables (partially integrated into core RxJs).

### Cycle.js #Framework #Functional #Reactive
A functional and reactive JavaScript framework where RxJs (or similar stream libraries) is a core component.
