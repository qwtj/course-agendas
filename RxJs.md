# I. Introduction to Reactive Programming

## Understanding Reactive Programming Concepts

### Definition and Principles
*   Definition of Reactive Programming: Data streams and propagation of change.
*   Core principles: Asynchronous, non-blocking, event-driven.

### Reactive Manifesto
*   Responsive, Resilient, Elastic, Message-Driven.
*   Understanding the importance of each principle in building robust systems.

## Introduction to RxJS

### What is RxJS?
*   RxJS as a library for reactive programming using Observables.
*   Observables as a representation of data streams.

### Key Concepts in RxJS
*   Observables: Representing a stream of data.
*   Observers: Consuming data emitted by Observables.
*   Subscriptions: Managing the flow of data from Observable to Observer.
*   Operators: Transforming and filtering data streams.
*   Subjects: Acting as both an Observable and an Observer.
*   Schedulers: Controlling the concurrency of Observables.

# II. Observables

## Creating Observables

### Using `new Observable()`
*   Creating a custom Observable from scratch.
    ```javascript
    const observable = new Observable(subscriber => {
        subscriber.next(1);
        subscriber.next(2);
        subscriber.next(3);
        setTimeout(() => {
            subscriber.next(4);
            subscriber.complete();
        }, 1000);
    });
    ```

### Creation Operators

#### `of`
*   Emitting a fixed set of values.
    ```javascript
    import { of } from 'rxjs';
    const observable = of(1, 2, 3);
    ```

#### `from`
*   Creating an Observable from an array, promise, or iterable.
    ```javascript
    import { from } from 'rxjs';
    const array = [1, 2, 3];
    const observable = from(array);
    ```

#### `interval`
*   Emitting sequential numbers at a specified interval.
    ```javascript
    import { interval } from 'rxjs';
    const observable = interval(1000); // Emit every 1 second
    ```

#### `timer`
*   Emitting a single value after a delay, or repeatedly after a delay and interval.
    ```javascript
    import { timer } from 'rxjs';
    const observable = timer(3000, 1000); // Emit after 3s, then every 1s
    ```

#### `fromEvent`
*   Creating an Observable from DOM events.
    ```javascript
    import { fromEvent } from 'rxjs';
    const button = document.getElementById('myButton');
    const observable = fromEvent(button, 'click');
    ```

## Subscribing to Observables

### `subscribe()` method
*   Passing an observer object.
    ```javascript
    observable.subscribe({
        next: (value) => console.log(value),
        error: (err) => console.error(err),
        complete: () => console.log('complete')
    });
    ```

### Handling values, errors, and completion

#### `next` handler
*   Processing emitted values.

#### `error` handler
*   Handling errors in the Observable stream.

#### `complete` handler
*   Handling the completion of the Observable stream.

## Unsubscribing from Observables

### Importance of unsubscribing
*   Preventing memory leaks and unnecessary computations.

### Using `Subscription.unsubscribe()`
    ```javascript
    const subscription = observable.subscribe(...);
    subscription.unsubscribe();
    ```

### Managing multiple subscriptions

#### `Subscription.add()`
*   Adding multiple subscriptions to a parent subscription.
    ```javascript
    const parentSubscription = new Subscription();
    const sub1 = observable1.subscribe(...);
    const sub2 = observable2.subscribe(...);
    parentSubscription.add(sub1);
    parentSubscription.add(sub2);
    parentSubscription.unsubscribe(); // Unsubscribes both sub1 and sub2
    ```

# III. Operators

## Understanding Operators

### What are Operators?
*   Functions that take an Observable as input and return another Observable.

### Operator Categories
*   Creation Operators: Create new Observables.
*   Transformation Operators: Modify the values emitted by Observables.
*   Filtering Operators: Selectively emit values from Observables.
*   Combination Operators: Combine multiple Observables into one.
*   Error Handling Operators: Handle errors in Observables.
*   Multicasting Operators: Share a single subscription among multiple Observers.
*   Utility Operators: Provide helpful functionalities.
*   Conditional and Boolean Operators: Evaluate conditions on Observable streams.
*   Mathematical and Aggregate Operators: Perform mathematical operations on values.

## Transformation Operators

### `map`
*   Applying a function to each value emitted by the Observable.
    ```javascript
    import { of } from 'rxjs';
    import { map } from 'rxjs/operators';

    const observable = of(1, 2, 3);
    const squaredObservable = observable.pipe(map(value => value * value));
    ```

### `pluck`
*   Extracting a specific property from each object emitted by the Observable.
    ```javascript
    import { of } from 'rxjs';
    import { pluck } from 'rxjs/operators';

    const observable = of({ name: 'Alice', age: 30 }, { name: 'Bob', age: 40 });
    const namesObservable = observable.pipe(pluck('name'));
    ```

### `mapTo`
*   Replacing each value emitted by the Observable with a constant value.
    ```javascript
    import { of } from 'rxjs';
    import { mapTo } from 'rxjs/operators';

    const observable = of(1, 2, 3);
    const constantObservable = observable.pipe(mapTo('Hello'));
    ```

### `scan`
*   Accumulating values over time.
    ```javascript
    import { of } from 'rxjs';
    import { scan } from 'rxjs/operators';

    const observable = of(1, 2, 3);
    const sumObservable = observable.pipe(scan((acc, value) => acc + value, 0));
    ```

## Filtering Operators

### `filter`
*   Emitting values that satisfy a specified condition.
    ```javascript
    import { of } from 'rxjs';
    import { filter } from 'rxjs/operators';

    const observable = of(1, 2, 3, 4, 5);
    const evenObservable = observable.pipe(filter(value => value % 2 === 0));
    ```

### `take`
*   Emitting only the first N values.
    ```javascript
    import { of } from 'rxjs';
    import { take } from 'rxjs/operators';

    const observable = of(1, 2, 3, 4, 5);
    const firstThreeObservable = observable.pipe(take(3));
    ```

### `takeLast`
*   Emitting only the last N values (after the Observable completes).
    ```javascript
    import { of } from 'rxjs';
    import { takeLast } from 'rxjs/operators';

    const observable = of(1, 2, 3, 4, 5);
    const lastTwoObservable = observable.pipe(takeLast(2));
    ```

### `skip`
*   Skipping the first N values.
    ```javascript
    import { of } from 'rxjs';
    import { skip } from 'rxjs/operators';

    const observable = of(1, 2, 3, 4, 5);
    const skipFirstTwoObservable = observable.pipe(skip(2));
    ```

### `distinct`
*   Emitting only unique values.
    ```javascript
    import { of } from 'rxjs';
    import { distinct } from 'rxjs/operators';

    const observable = of(1, 2, 2, 3, 4, 4, 5);
    const distinctObservable = observable.pipe(distinct());
    ```

## Combination Operators

### `concat`
*   Concatenating multiple Observables sequentially.
    ```javascript
    import { of, concat } from 'rxjs';

    const observable1 = of(1, 2, 3);
    const observable2 = of(4, 5, 6);
    const concatenatedObservable = concat(observable1, observable2);
    ```

### `merge`
*   Merging multiple Observables concurrently.
    ```javascript
    import { of, merge } from 'rxjs';

    const observable1 = of(1, 2, 3);
    const observable2 = of(4, 5, 6);
    const mergedObservable = merge(observable1, observable2);
    ```

### `combineLatest`
*   Emitting an array containing the latest values from each Observable whenever any of the Observables emit.
    ```javascript
    import { of, combineLatest } from 'rxjs';

    const observable1 = of(1, 2, 3);
    const observable2 = of('a', 'b', 'c');
    const combinedObservable = combineLatest([observable1, observable2]);
    ```

### `zip`
*   Emitting an array containing the values from each Observable when all Observables have emitted at least one value.
    ```javascript
    import { of, zip } from 'rxjs';

    const observable1 = of(1, 2, 3);
    const observable2 = of('a', 'b', 'c');
    const zippedObservable = zip(observable1, observable2);
    ```

### `withLatestFrom`
*   Emitting the latest value from another Observable along with the source Observable's value.
    ```javascript
    import { of } from 'rxjs';
    import { withLatestFrom } from 'rxjs/operators';

    const sourceObservable = of(1, 2, 3);
    const otherObservable = of('a', 'b', 'c');
    const combinedObservable = sourceObservable.pipe(withLatestFrom(otherObservable));
    ```

# IV. Subjects

## Understanding Subjects

### What are Subjects?
*   Special type of Observable that allows values to be multicasted to many Observers.

### Subject Types

#### `Subject`
*   Basic Subject, values are emitted to all current subscribers.
    ```javascript
    import { Subject } from 'rxjs';

    const subject = new Subject<number>();
    subject.subscribe({
        next: (value) => console.log('Observer 1:', value)
    });
    subject.subscribe({
        next: (value) => console.log('Observer 2:', value)
    });
    subject.next(1);
    subject.next(2);
    ```

#### `BehaviorSubject`
*   Requires an initial value and emits the current value to new subscribers.
    ```javascript
    import { BehaviorSubject } from 'rxjs';

    const subject = new BehaviorSubject<number>(0);
    subject.subscribe({
        next: (value) => console.log('Observer 1:', value)
    });
    subject.next(1);
    subject.subscribe({
        next: (value) => console.log('Observer 2:', value) // Will receive 1 immediately
    });
    subject.next(2);
    ```

#### `ReplaySubject`
*   Buffers a specified number of values and replays them to new subscribers.
    ```javascript
    import { ReplaySubject } from 'rxjs';

    const subject = new ReplaySubject<number>(2); // Buffer 2 values
    subject.next(1);
    subject.next(2);
    subject.next(3);
    subject.subscribe({
        next: (value) => console.log('Observer 1:', value) // Will receive 2 and 3 immediately
    });
    subject.next(4);
    ```

#### `AsyncSubject`
*   Emits only the last value when the Observable completes.
    ```javascript
    import { AsyncSubject } from 'rxjs';

    const subject = new AsyncSubject<number>();
    subject.next(1);
    subject.next(2);
    subject.complete();
    subject.subscribe({
        next: (value) => console.log('Observer 1:', value) // Will receive 2
    });
    ```

## Using Subjects

### Multicasting values

### Sharing data between components

# V. Error Handling

## Handling Errors in Observables

### `catchError`
*   Catching errors and returning a fallback Observable.
    ```javascript
    import { of, throwError } from 'rxjs';
    import { catchError } from 'rxjs/operators';

    const observable = of(1, 2, 3, 4, 5);
    const errorObservable = observable.pipe(
        map(value => {
            if (value === 3) {
                throw new Error('Value is 3');
            }
            return value;
        }),
        catchError(error => {
            console.error('Caught error:', error);
            return of(-1); // Return a fallback Observable
        })
    );
    ```

### `retry`
*   Retrying the Observable a specified number of times.
    ```javascript
    import { of, interval } from 'rxjs';
    import { map, retry } from 'rxjs/operators';

    let attempt = 0;
    const observable = interval(1000).pipe(
        map(value => {
            attempt++;
            if (attempt < 3) {
                throw new Error('Attempt failed');
            }
            return value;
        }),
        retry(3) // Retry up to 3 times
    );
    ```

### `retryWhen`
*   Retrying based on a custom logic.
    ```javascript
    import { of, interval, timer, throwError } from 'rxjs';
    import { map, retryWhen, delayWhen } from 'rxjs/operators';

    let attempt = 0;
    const observable = interval(1000).pipe(
        map(value => {
            attempt++;
            if (attempt < 3) {
                throw new Error('Attempt failed');
            }
            return value;
        }),
        retryWhen(errors => errors.pipe(delayWhen(() => timer(2000)))) // Retry after 2 seconds
    );
    ```

# VI. Schedulers

## Understanding Schedulers

### What are Schedulers?
*   Control the concurrency of Observables by defining when computations execute.

### Types of Schedulers

#### `queueScheduler`
*   Queues tasks for execution in the order they are received.

#### `asapScheduler`
*   Schedules tasks to execute as soon as possible on the microtask queue.

#### `asyncScheduler`
*   Schedules tasks to execute on the `setTimeout` function.

#### `animationFrameScheduler`
*   Schedules tasks to execute on the animation frame.

## Using Schedulers

### Specifying schedulers in operators

### Controlling concurrency

# VII. Practical Applications

## Building Real-World Applications with RxJS

### Handling User Input
*   Using `fromEvent` to create Observables from user interactions.
*   Applying operators to filter and transform user input.

### Working with HTTP Requests
*   Using `ajax` to make HTTP requests and handle responses as Observables.
*   Applying operators to transform and handle errors in HTTP responses.

### Managing State in Applications
*   Using Subjects and BehaviorSubjects to manage application state.
*   Creating reactive data stores.

### Implementing Auto-Completion
*   Debouncing user input to reduce the number of API calls.
*   Filtering and displaying relevant suggestions.
