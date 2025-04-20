# I. Introduction to State Management

*   **Learning Objectives Prompt**: "Generate learning objectives for an introductory section on State Management in the context of Angular and NGRX. Focus on understanding the problems solved by state management and the core concepts like Flux and Redux."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph explaining the purpose of this section: Introducing the fundamental need for state management in modern web applications, particularly Angular, setting the stage for NGRX."

## Understanding the Need for State Management
"<prompt> Explain why managing state becomes challenging in complex single-page applications (SPAs), focusing on the Angular context. Define 'state' in this context. Use heading level 2 for the explanation."

### Challenges of Component State
"<prompt> Describe the specific problems encountered when relying solely on component-level state in Angular applications. Cover issues like state synchronization between components, 'prop drilling' (passing data through multiple component layers), and managing shared application state effectively. Use heading level 3."
*   **Example Prompt**: "Provide a simple pseudo-code example in an Angular context illustrating 'prop drilling' and explain why it's problematic. Use Markdown code formatting."

### What is State Management?
"<prompt> Define the concept of 'State Management' as a pattern in application architecture. Explain the core idea of having a centralized store for the application's state. Use heading level 3."

### Flux Architecture Overview
"<prompt> Briefly explain the Flux architecture pattern, highlighting its origin (Facebook) and key characteristics like unidirectional data flow. Emphasize its influence on libraries like Redux and NGRX. Use heading level 3."
*   **Diagram Prompt**: "Generate a simple text-based or Mermaid diagram illustrating the unidirectional data flow in the Flux pattern."

### Redux Principles
"<prompt> Introduce the three core principles of Redux: Single Source of Truth, State is Read-Only, and Changes are Made with Pure Functions. Explain what each principle means in practice. Use heading level 3."

### Why NGRX for Angular?
"<prompt> Explain the specific benefits of choosing NGRX for state management within the Angular framework. Discuss its tight integration with Angular features, use of RxJS, and the surrounding ecosystem tools. Use heading level 3."

*   **Glossary Prompt**: "Define the following key terms related to Introduction to State Management: State, Prop Drilling, Centralized Store, Unidirectional Data Flow, Flux, Redux, Single Source of Truth, Pure Functions, NGRX."
*   **Quiz Prompt**: "Generate 3-4 multiple-choice questions to test understanding of the core problems solved by state management and the basic principles of Flux/Redux."
*   **Key Points Prompt**: "Highlight 2-3 crucial takeaways from this introductory section on state management needs and foundational patterns."
*   **Cross-references Prompt**: "Add cross-links to sections 'II. Core NGRX Concepts' and 'XV. NGRX Best Practices'."
*   **Further Exploration Prompt**: "Provide links to the official Redux documentation page explaining its principles and a high-level article explaining Flux architecture."
*   **Reflective Prompt**: "Ask the learner to reflect on a past project (or imagine a complex application) and identify potential state management challenges they might have encountered or could foresee."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) recapping the key concepts covered in 'I. Introduction to State Management'."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from the 'why' of state management to the 'how' with NGRX, introducing the next section on core NGRX building blocks."

# II. Core NGRX Concepts

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Core NGRX Concepts' section. Focus on identifying and defining the fundamental building blocks of the NGRX framework: Store, Actions, Reducers, Selectors, Effects, and State."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Core NGRX Concepts' section, explaining that this section breaks down the essential parts of the NGRX library."

## Store
"<prompt> Explain the role of the NGRX `Store`. Describe it as the centralized, single source of truth for the application's state, emphasizing that it's a container holding the state object. Use heading level 2."

## Actions
"<prompt> Define NGRX `Actions`. Explain that they are unique events represented by plain objects, describing an *intent* to change state. Emphasize they are the *only* way to trigger state changes. Use heading level 2."
*   **Example Prompt**: "Show the basic structure of an NGRX Action object, including a `type` property. Use Markdown code formatting."

## Reducers
"<prompt> Define NGRX `Reducers`. Explain their role as pure functions responsible for handling state transitions. Describe their signature: `(currentState, action) => newState`. Emphasize purity and immutability. Use heading level 2."

## Selectors
"<prompt> Define NGRX `Selectors`. Explain their purpose as pure functions used to query, derive, and compose specific slices of state from the Store. Mention memoization as a key performance feature. Use heading level 2."

## Effects
"<prompt> Define NGRX `Effects`. Explain their role in handling side effects, such as asynchronous operations (API calls, WebSockets), interactions with browser APIs, etc. Clarify that they listen for actions, perform tasks, and can dispatch new actions. Use heading level 2."

## State
"<prompt> Define `State` within the NGRX context. Describe it as the actual application data held within the Store, typically represented as a structured, immutable JavaScript object or tree. Use heading level 2."

*   **Glossary Prompt**: "Define the following key terms related to Core NGRX Concepts: Store, Action, Reducer, Selector, Effect, State, Side Effect, Immutability, Memoization, Pure Function."
*   **Quiz Prompt**: "Generate 4-5 matching questions or multiple-choice questions testing the definitions and roles of Store, Actions, Reducers, Selectors, and Effects."
*   **Key Points Prompt**: "Highlight the distinct role of each core NGRX concept (Store, Action, Reducer, Selector, Effect) and how they interact."
*   **Cross-references Prompt**: "Add cross-links to the subsequent sections detailing each concept: 'IV. Working with Actions', 'V. Working with Reducers', 'VI. Working with Selectors', 'VII. Working with Effects'."
*   **Further Exploration Prompt**: "Provide a link to the official NGRX documentation overview page that introduces the core concepts."
*   **Reflective Prompt**: "Ask the learner to draw a simple diagram illustrating how an Action flows through the NGRX system, involving the Store, Reducer, and potentially an Effect and Selector."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) outlining the fundamental building blocks of NGRX covered in this section."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from defining the core concepts to the practical steps of setting up the NGRX Store in an Angular application."

# III. NGRX Store Setup and Configuration

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'NGRX Store Setup and Configuration' section. Focus on installing NGRX libraries, configuring the root and feature store modules, defining the state structure, and providing initial state."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'NGRX Store Setup and Configuration' section, explaining that this section covers the initial steps to integrate the NGRX store into an Angular project."

## Installation (`@ngrx/store`)
"<prompt> Explain how to install the core NGRX store library (`@ngrx/store`) into an Angular project using package managers like `npm` or `yarn`. Include the specific commands. Use heading level 2."
*   **Code Example Prompt**: "Provide the `npm` and `yarn` commands for installing `@ngrx/store`. Use Markdown code blocks."

## Root Store Module Configuration
"<prompt> Explain how to configure the root NGRX Store module using `StoreModule.forRoot()` within the main `AppModule` (`app.module.ts`). Mention the need to provide the root reducers map and optional initial state. Use heading level 2."
*   **Code Example Prompt**: "Show a basic example of importing and using `StoreModule.forRoot()` in `app.module.ts`, including placeholders for the reducers map and initial state. Use Markdown code blocks."

## Feature Module Configuration
"<prompt> Explain how to configure NGRX Store for feature modules using `StoreModule.forFeature()`. Discuss its importance for state slicing and enabling NGRX in lazy-loaded modules. Use heading level 2."
*   **Code Example Prompt**: "Show a basic example of importing and using `StoreModule.forFeature()` within an Angular feature module, providing a feature name and feature reducers. Use Markdown code blocks."

## Defining the Application State Interface
"<prompt> Explain the importance of defining the structure of the application state using TypeScript interfaces. Show how to create interfaces for the overall application state and individual state slices. Use heading level 2."
*   **Code Example Prompt**: "Provide a simple TypeScript example defining an `AppState` interface and a `FeatureState` interface. Use Markdown code blocks."

## Providing Initial State
"<prompt> Explain how and why to provide initial default values for the application state slices during configuration (e.g., in `StoreModule.forRoot` or reducer definitions). Use heading level 2."
*   **Code Example Prompt**: "Show an example of defining an `initialState` constant conforming to a state interface in TypeScript. Use Markdown code blocks."

*   **Glossary Prompt**: "Define the following key terms: `@ngrx/store`, `StoreModule.forRoot()`, `StoreModule.forFeature()`, State Interface, Initial State, Reducers Map, State Slicing, Lazy Loading."
*   **Quiz Prompt**: "Generate 2-3 questions about the purpose of `forRoot` vs. `forFeature` and where initial state/state interfaces are typically defined."
*   **Key Points Prompt**: "Highlight the difference between root and feature module configuration and the role of TypeScript interfaces in defining state shape."
*   **Cross-references Prompt**: "Add cross-links to 'V. Working with Reducers' (for reducers map) and 'XV. NGRX Best Practices' (regarding modularity)."
*   **Further Exploration Prompt**: "Provide links to the official NGRX documentation pages for `StoreModule` setup."
*   **Reflective Prompt**: "Ask the learner to consider how they would structure the state interface for a simple To-Do application."
*   **Section Summary Prompt**: "Write a concise summary (2 sentences) recapping the key steps involved in installing and configuring the NGRX store."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from setting up the store infrastructure to defining and using Actions, the triggers for state changes."

# IV. Working with Actions

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Working with Actions' section. Focus on defining actions using `createAction`, understanding action types and props (payloads), organizing actions, and dispatching actions from components or services."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Working with Actions' section, explaining that actions are the fundamental way to signal intended state changes in NGRX."

## Defining Actions
"<prompt> Explain how to define NGRX actions using the `createAction` factory function. Cover the importance of unique action types and how to define actions with payload properties using `props<T>()`. Use heading level 2."
*   **Code Example Prompt**: "Show examples using `createAction` to define an action without a payload and an action *with* a payload (using `props`). Use Markdown code blocks."

## Grouping Actions
"<prompt> Discuss common strategies for organizing action definitions within an Angular project, such as grouping related actions in dedicated files (e.g., `*.actions.ts`) or potentially using enums/constants for action types (though `createAction` often makes explicit enums less necessary). Use heading level 2."

## Dispatching Actions
"<prompt> Explain how to dispatch actions to the NGRX store from Angular components or services. Show how to inject the `Store` service and call the `store.dispatch()` method, passing an instance of a defined action. Use heading level 2."
*   **Code Example Prompt**: "Provide an Angular component snippet showing how to inject the `Store` and dispatch an action (with and without payload) in response to a user event (e.g., button click). Use Markdown code blocks."

## Action Payloads
"<prompt> Elaborate on the concept of action payloads (defined via `props`). Explain how payloads carry necessary data or context from the point of dispatch to reducers or effects. Use heading level 2."

*   **Glossary Prompt**: "Define: Action Type, `createAction`, `props`, Payload, `Store.dispatch()`, Action Creator."
*   **Quiz Prompt**: "Generate 3-4 questions testing the syntax of `createAction`, the purpose of `props`, and how actions are dispatched."
*   **Key Points Prompt**: "Highlight the type-safety gained from `createAction` and the role of `dispatch` in initiating state changes."
*   **Cross-references Prompt**: "Add cross-links to 'II. Core NGRX Concepts' (Action definition), 'V. Working with Reducers' (handling actions), and 'VII. Working with Effects' (listening for actions)."
*   **Further Exploration Prompt**: "Provide a link to the official NGRX documentation page for Actions."
*   **Reflective Prompt**: "Ask the learner to define a set of actions (using `createAction`) required for managing a user login process (e.g., login attempt, login success, login failure)."
*   **Section Summary Prompt**: "Write a concise summary (2 sentences) covering how to define, organize, and dispatch NGRX actions."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from defining *what* should happen (Actions) to defining *how* the state changes in response (Reducers)."

# V. Working with Reducers

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Working with Reducers' section. Focus on defining reducers using `createReducer` and `on`, ensuring reducer purity and immutability, using helpers for immutable updates, composing reducers, and understanding meta-reducers."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Working with Reducers' section, explaining that reducers contain the logic for transitioning state based on dispatched actions."

## Defining Reducers
"<prompt> Explain how to define NGRX reducers using the `createReducer` factory function. Show how to use the `on` function to associate specific actions with state transition logic. Emphasize that a reducer takes the current state and an action, returning a *new* state object. Use heading level 2."
*   **Code Example Prompt**: "Provide a TypeScript example defining a simple reducer using `createReducer` and `on` functions to handle a couple of actions (one potentially with a payload). Include the initial state definition. Use Markdown code blocks."

## Reducer Purity
"<prompt> Explain the critical concept of reducer purity. Detail the requirements: reducers must be predictable (same input always yields same output), have no side effects (no API calls, etc.), and must return new state objects (immutability) instead of modifying the existing state. Use heading level 2."

## Immutability Helpers
"<prompt> Discuss techniques and helpers for updating state immutably within reducers. Show examples using the JavaScript spread syntax (`...`) for objects and arrays. Mention the existence of external libraries (like Immer) though often unnecessary with simple spread syntax. Use heading level 2."
*   **Code Example Prompt**: "Show examples of updating an object property and adding/updating/removing an item in an array immutably using the spread syntax within a reducer's `on` function. Use Markdown code blocks."

## Composing Reducers
"<prompt> Explain how to manage different parts of the state using multiple reducers. Show how an `ActionReducerMap` is used in `StoreModule.forRoot` or `StoreModule.forFeature` to combine reducers responsible for different state slices. Use heading level 2."
*   **Code Example Prompt**: "Show an example of an `ActionReducerMap` combining two different reducers for different state features. Use Markdown code blocks."

## Meta-Reducers
"<prompt> Define Meta-Reducers (or `ActionReducer`). Explain their role as hooks or middleware that process actions and state before (or after) regular reducers. Mention common use cases like logging, hydration (rehydrating state from storage), or runtime checks. Use heading level 2."
*   **Code Example Prompt**: "Provide a conceptual example (or link to docs) of a simple logging meta-reducer function signature and how it might be registered in `StoreModule.forRoot`. Use Markdown code blocks."

*   **Glossary Prompt**: "Define: `createReducer`, `on`, Reducer Purity, Immutability, Side Effect, Spread Syntax (`...`), `ActionReducerMap`, Meta-Reducer, State Transition."
*   **Quiz Prompt**: "Generate 3-4 questions focusing on the signature of a reducer, the concept of purity/immutability, and the purpose of `createReducer`/`on` and meta-reducers."
*   **Key Points Prompt**: "Highlight the mandatory purity and immutability of reducers and how `createReducer`/`on` simplifies handling actions."
*   **Cross-references Prompt**: "Add cross-links to 'II. Core NGRX Concepts' (Reducer definition), 'IV. Working with Actions' (actions handled here), 'III. NGRX Store Setup' (reducer registration), 'XIV. Performance Optimization' (freezing state)."
*   **Further Exploration Prompt**: "Provide links to the official NGRX documentation pages for Reducers and Meta-Reducers."
*   **Reflective Prompt**: "Ask the learner to write a simple reducer function (using `createReducer`, `on`) for the login actions defined in the previous section's reflection (handling attempt, success, failure)."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) explaining the role of reducers in implementing pure, immutable state transitions based on actions."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from defining how state changes (Reducers) to how components can efficiently access and react to that state (Selectors)."

# VI. Working with Selectors

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Working with Selectors' section. Focus on defining selectors using `createFeatureSelector` and `createSelector`, understanding memoization, using selectors in components (especially with the `async` pipe), composing selectors, and creating parameterized selectors."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Working with Selectors' section, explaining that selectors provide an optimized way to query and derive data from the NGRX store."

## Defining Selectors
"<prompt> Explain how to define NGRX selectors. Introduce `createFeatureSelector` for accessing a top-level state slice (feature state) and `createSelector` for deriving data from one or more state slices or other selectors. Use heading level 2."
*   **Code Example Prompt**: "Provide TypeScript examples defining a feature selector using `createFeatureSelector` and a basic selector using `createSelector` that selects a property from the feature state. Use Markdown code blocks."

## Memoization
"<prompt> Explain the concept of memoization in NGRX selectors. Describe how `createSelector` caches the result based on its input arguments, preventing recalculation if the relevant parts of the state haven't changed, thus improving performance. Use heading level 2."

## Using Selectors in Components
"<prompt> Show how to use defined selectors within Angular components to retrieve state data reactively. Demonstrate injecting the `Store` and using `store.select()` with a selector. Emphasize the common pattern of using the `async` pipe in the template to subscribe and unsubscribe automatically. Use heading level 2."
*   **Code Example Prompt**: "Provide an Angular component snippet showing how to inject the `Store`, select data using `store.select(mySelector)`, assign it to an observable property, and use the `async` pipe in the template (`*ngIf="data$ | async as data"`). Use Markdown code blocks."

## Composed Selectors
"<prompt> Explain how to create more complex selectors by composing simpler ones. Show how `createSelector` can take other selectors as input, allowing for reusable logic and derivation of complex data structures from the state. Use heading level 2."
*   **Code Example Prompt**: "Show an example using `createSelector` that takes two other selectors as input and computes a derived value. Use Markdown code blocks."

## Parameterized Selectors
"<prompt> Explain how to create selectors that accept runtime arguments (props) to perform dynamic queries on the state. Show the syntax for defining and using selectors that take props. Use heading level 2."
*   **Code Example Prompt**: "Provide an example of defining a parameterized selector using `createSelector` that accepts `props` and uses them to look up specific data within the state. Show how to pass props when calling `store.select()`. Use Markdown code blocks."

*   **Glossary Prompt**: "Define: `createFeatureSelector`, `createSelector`, Memoization, `store.select()`, `async` pipe, Composed Selector, Parameterized Selector, State Slice, Derived Data."
*   **Quiz Prompt**: "Generate 3-4 questions about the purpose of `createFeatureSelector` vs. `createSelector`, how memoization works, and how selectors are used with the `async` pipe."
*   **Key Points Prompt**: "Highlight the performance benefits of memoization and the clean data access pattern provided by selectors combined with the `async` pipe."
*   **Cross-references Prompt**: "Add cross-links to 'II. Core NGRX Concepts' (Selector definition), 'XIV. Performance Optimization' (Memoization Deep Dive, OnPush Change Detection)."
*   **Further Exploration Prompt**: "Provide a link to the official NGRX documentation page for Selectors."
*   **Reflective Prompt**: "Ask the learner to define selectors for the To-Do list application state considered earlier: one to select all todos, one to select only completed todos, and one to get a todo by its ID (parameterized)."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) explaining how selectors provide efficient, memoized, and composable access to store data."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from accessing state (Selectors) to handling asynchronous operations and side effects that often trigger state changes (Effects)."

# VII. Working with Effects

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Working with Effects' section. Focus on installing `@ngrx/effects`, defining effect classes and using `createEffect`, listening for actions using `Actions` and `ofType`, handling success/failure action patterns for async operations, creating non-dispatching effects, and implementing error handling."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Working with Effects' section, explaining that Effects are used to manage side effects like API calls, interacting with external services, or complex async logic outside of components."

## Installation (`@ngrx/effects`)
"<prompt> Explain how to install the NGRX effects library (`@ngrx/effects`) using `npm` or `yarn`. Include the specific commands. Use heading level 2."
*   **Code Example Prompt**: "Provide the `npm` and `yarn` commands for installing `@ngrx/effects`. Use Markdown code blocks."

## Defining Effects Classes
"<prompt> Explain that NGRX Effects are typically implemented within Angular `@Injectable()` services. Show the basic structure of an effects class, including injecting necessary services (like `Actions` and HTTP clients). Use heading level 2."
*   **Code Example Prompt**: "Show the basic skeleton of an Angular service intended to house NGRX effects, including the `@Injectable()` decorator and a constructor injecting the `Actions` service. Use Markdown code blocks."

## `createEffect()`
"<prompt> Explain the use of the `createEffect` factory function to define individual effects. Describe its basic structure, taking a function that returns an Observable of Actions. Mention the typical use of RxJS operators within this function. Use heading level 2."

## Actions Observable (`Actions`)
"<prompt> Explain how to inject the `Actions` service (an observable stream of all dispatched actions) into an effect class. Show how to use the `ofType` operator from `@ngrx/effects` to filter this stream and trigger an effect only for specific action types. Use heading level 2."
*   **Code Example Prompt**: "Show an example within an effect class using `createEffect` where the `Actions` service is piped through the `ofType` operator to listen for a specific action. Use Markdown code blocks."

## Handling Success/Failure Actions
"<prompt> Describe the common pattern in effects for handling asynchronous operations (e.g., API calls): listen for an initiating action (e.g., `loadData`), perform the async task, and dispatch a success action (with data) or a failure action (with error) based on the outcome. Use RxJS operators like `exhaustMap`/`mergeMap`/`switchMap`, `map`, and `catchError`. Use heading level 2."
*   **Code Example Prompt**: "Provide a conceptual example of an effect using `createEffect`, `ofType`, an RxJS mapping operator (like `exhaustMap`), an injected service call (like `httpClient.get`), `map` to dispatch a success action, and `catchError` to dispatch a failure action. Use Markdown code blocks."

## Non-dispatching Effects
"<prompt> Explain that some effects might need to perform actions (like logging, analytics, or routing) without dispatching a new action back to the store. Show how to configure `createEffect` with `{dispatch: false}` for these scenarios. Use heading level 2."
*   **Code Example Prompt**: "Show an example of an effect using `createEffect(()=>{...}, {dispatch: false})` for a task like logging an action to the console. Use Markdown code blocks."

## Error Handling in Effects
"<prompt> Elaborate on error handling within effects using the RxJS `catchError` operator. Show how to catch errors from async operations (like API calls) and dispatch a specific failure action, often returning an `Observable<Action>` (e.g., `of(failureAction({ error }))`). Use heading level 2."

## Effects Configuration
"<prompt> Explain how to register effects classes with NGRX using `EffectsModule.forRoot([...])` in the root module and `EffectsModule.forFeature([...])` in feature modules, similar to store configuration. Use heading level 2."
*   **Code Example Prompt**: "Show examples of registering effects in `app.module.ts` using `EffectsModule.forRoot()` and in a feature module using `EffectsModule.forFeature()`. Use Markdown code blocks."

*   **Glossary Prompt**: "Define: `@ngrx/effects`, Side Effect, `createEffect`, `Actions` service, `ofType` operator, `exhaustMap`/`mergeMap`/`switchMap`, `catchError`, Success/Failure Actions, Non-dispatching Effect, `EffectsModule.forRoot()`, `EffectsModule.forFeature()`."
*   **Quiz Prompt**: "Generate 3-4 questions about the purpose of effects, the role of `ofType`, the success/failure action pattern, and the `{dispatch: false}` option."
*   **Key Points Prompt**: "Highlight that Effects isolate side effects, use RxJS heavily, and typically listen for actions and dispatch new actions."
*   **Cross-references Prompt**: "Add cross-links to 'II. Core NGRX Concepts' (Effect definition), 'IV. Working with Actions' (actions trigger/are dispatched by effects), 'XII. Testing NGRX Applications' (Testing Effects), 'XIII. Advanced NGRX Patterns' (Optimistic/Pessimistic Updates)."
*   **Further Exploration Prompt**: "Provide links to the official NGRX documentation pages for Effects and the `ofType` operator."
*   **Reflective Prompt**: "Ask the learner to outline the steps (actions, effect logic, success/failure actions) needed to fetch a list of items from a hypothetical API using an NGRX effect."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) explaining how NGRX Effects manage side effects and asynchronous operations by reacting to and dispatching actions."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from general side effect handling (Effects) to a specific NGRX utility designed for managing collections of data (NGRX Entity)."

# VIII. NGRX Entity

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'NGRX Entity' section. Focus on understanding the problem NGRX Entity solves (managing collections), installing `@ngrx/entity`, using the entity adapter (`createEntityAdapter`), defining entity state, using adapter methods in reducers, and using adapter selectors."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'NGRX Entity' section, explaining that it's a utility library simplifying the management of collections or lists of data entities within the NGRX store."

## Installation (`@ngrx/entity`)
"<prompt> Explain how to install the NGRX entity library (`@ngrx/entity`) using `npm` or `yarn`. Include the specific commands. Use heading level 2."
*   **Code Example Prompt**: "Provide the `npm` and `yarn` commands for installing `@ngrx/entity`. Use Markdown code blocks."

## Entity State Adapter
"<prompt> Introduce the `createEntityAdapter` function. Explain that it provides a pre-configured 'adapter' object containing helper functions for common CRUD operations on a collection of entities, reducing boilerplate code in reducers. Mention common configuration options like `selectId` and `sortComparer`. Use heading level 2."
*   **Code Example Prompt**: "Show a basic example of calling `createEntityAdapter<MyEntityType>()` and storing the result in a constant. Use Markdown code blocks."

## Defining Entity State
"<prompt> Explain the standard shape of state managed by `@ngrx/entity`, defined by the `EntityState<T>` interface. Describe its key properties: `ids` (an array of entity IDs in order) and `entities` (a dictionary/map of entities keyed by ID). Show how to extend `EntityState` for feature-specific state. Use heading level 2."
*   **Code Example Prompt**: "Provide a TypeScript example defining a feature state interface that extends `EntityState<MyEntityType>` and potentially includes other properties (like `loading`, `error`). Use Markdown code blocks."

## Adapter Methods
"<prompt> Describe the common CRUD methods provided by the entity adapter (e.g., `addOne`, `addMany`, `setAll`, `updateOne`, `updateMany`, `removeOne`, `removeMany`, `upsertOne`, `upsertMany`). Explain how these methods are used *within reducers* to perform immutable updates on the entity state. Use heading level 2."
*   **Code Example Prompt**: "Show an example within an NGRX reducer (`on` function) using adapter methods like `adapter.addOne(state, action.payload)` and `adapter.updateOne(state, { id: action.id, changes: action.changes })` to modify the `EntityState`. Use Markdown code blocks."

## Adapter Selectors
"<prompt> Explain
 that the entity adapter also provides a `getSelectors` method. Show how calling `adapter.getSelectors()` (often combined with a feature selector) generates a set of pre-built, memoized selectors for common entity queries (e.g., `selectAll`, `selectEntities`, `selectIds`, `selectTotal`). Use heading level 2."
*   **Code Example Prompt**: "Show an example of exporting selectors generated by calling `adapter.getSelectors(selectFeatureState)`, such as `export const selectAllItems = selectors.selectAll;`. Use Markdown code blocks."

## Use Cases
"<prompt> Briefly list common use cases where `@ngrx/entity` is highly beneficial, such as managing lists displayed in tables or grids, handling normalized data received from APIs, and simplifying state logic for any collection-based feature. Use heading level 2."

*   **Glossary Prompt**: "Define: `@ngrx/entity`, Entity, Collection, Normalization, `createEntityAdapter`, `EntityState`, `ids`, `entities`, Adapter Methods (mention a few like `addOne`, `updateOne`), `getSelectors`, Adapter Selectors (`selectAll`, `selectTotal`)."
*   **Quiz Prompt**: "Generate 3-4 questions about the purpose of the entity adapter, the structure of `EntityState`, and how adapter methods and selectors simplify development."
*   **Key Points Prompt**: "Highlight how `@ngrx/entity` reduces boilerplate for managing entity collections and provides optimized selectors out-of-the-box."
*   **Cross-references Prompt**: "Add cross-links to 'V. Working with Reducers' (using adapter methods), 'VI. Working with Selectors' (using adapter selectors), 'XV. NGRX Best Practices' (Keep State Normalized)."
*   **Further Exploration Prompt**: "Provide a link to the official NGRX documentation page for Entity."
*   **Reflective Prompt**: "Ask the learner to refactor their conceptual To-Do list state/reducer/selectors from previous reflections to use `@ngrx/entity`."
*   **Section Summary Prompt**: "Write a concise summary (2 sentences) explaining how `@ngrx/entity` simplifies managing normalized entity collections in NGRX."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from managing data collections (Entity) to synchronizing the state of the Angular Router with the NGRX store (Router Store)."

# IX. NGRX Router Store

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'NGRX Router Store' section. Focus on installing `@ngrx/router-store`, configuring it, understanding how it synchronizes router state with the NGRX store, accessing router state via selectors, and customizing the state serialization."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'NGRX Router Store' section, explaining its purpose: connecting Angular's router state (URL, params, etc.) to the NGRX store."

## Installation (`@ngrx/router-store`)
"<prompt> Explain how to install the NGRX router-store library (`@ngrx/router-store`) using `npm` or `yarn`. Include the specific commands. Use heading level 2."
*   **Code Example Prompt**: "Provide the `npm` and `yarn` commands for installing `@ngrx/router-store`. Use Markdown code blocks."

## Configuration
"<prompt> Explain how to configure the router-store by importing `StoreRouterConnectingModule.forRoot()` in the `AppModule`. Mention key configuration options, especially the `stateKey` (default is `router`) used in the NGRX state tree. Use heading level 2."
*   **Code Example Prompt**: "Show a basic example of importing and using `StoreRouterConnectingModule.forRoot()` in `app.module.ts`. Use Markdown code blocks."

## Accessing Router State
"<prompt> Explain that `@ngrx/router-store` provides selectors for accessing pieces of the router state directly from the NGRX store. Mention common selectors like `selectRouteParams`, `selectQueryParam`, `selectUrl`, `selectRouteData`, etc. Show how to use them like any other NGRX selector. Use heading level 2."
*   **Code Example Prompt**: "Show an example in a component or effect using `store.select(selectRouteParams)` or `store.select(selectQueryParam('userId'))` to access router information reactively. Use Markdown code blocks."

## Custom Router State Serializer
"<prompt> Explain the concept of a custom router state serializer. Describe why you might want one (e.g., to reduce the amount of router information stored, simplify the structure, improve performance). Show how to create a class implementing `RouterStateSerializer<T>` and provide it during configuration. Use heading level 2."
*   **Code Example Prompt**: "Provide a conceptual example (or link to docs) of a custom serializer class implementing `RouterStateSerializer` and how it's provided in the `StoreRouterConnectingModule.forRoot()` configuration. Use Markdown code blocks."

## Use Cases
"<prompt> List common use cases for integrating router state into the NGRX store, such as triggering data fetching in effects based on route parameter changes, making decisions in route guards based on application state, driving component behavior based on the current URL or query parameters, and enabling time-travel debugging that includes navigation events. Use heading level 2."

*   **Glossary Prompt**: "Define: `@ngrx/router-store`, Router State, Synchronization, `StoreRouterConnectingModule`, `stateKey`, Router Selectors (`selectRouteParams`, `selectUrl`, etc.), `RouterStateSerializer`."
*   **Quiz Prompt**: "Generate 2-3 questions about the purpose of router-store, how router state is accessed, and why a custom serializer might be used."
*   **Key Points Prompt**: "Highlight that router-store treats navigation as state changes and allows reactive access to router information via selectors."
*   **Cross-references Prompt**: "Add cross-links to 'VI. Working with Selectors' (using router selectors), 'VII. Working with Effects' (reacting to route changes)."
*   **Further Exploration Prompt**: "Provide a link to the official NGRX documentation page for Router Store."
*   **Reflective Prompt**: "Ask the learner to think about how accessing a route parameter (like a product ID) via a selector could trigger an NGRX effect to load that product's details."
*   **Section Summary Prompt**: "Write a concise summary (2 sentences) explaining how `@ngrx/router-store` integrates Angular routing information into the NGRX state."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from managing global state (including router state) to a different NGRX library focused on managing local, component-level state (Component Store)."

# X. NGRX Component Store

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'NGRX Component Store' section. Focus on understanding the motivation for component-level state management, installing `@ngrx/component-store`, understanding its core concepts (`ComponentStore<T>`, `setState`, `patchState`, `select`, `effect`), defining updaters, and comparing it to the global NGRX store."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'NGRX Component Store' section, introducing it as a standalone library for managing state localized within a single component, offering a potentially simpler alternative or complement to the global NGRX store."

## Installation (`@ngrx/component-store`)
"<prompt> Explain how to install the NGRX component-store library (`@ngrx/component-store`) using `npm` or `yarn`. Include the specific commands. Use heading level 2."
*   **Code Example Prompt**: "Provide the `npm` and `yarn` commands for installing `@ngrx/component-store`. Use Markdown code blocks."

## Motivation
"<prompt> Explain the reasons why `ComponentStore` was created and when it's useful. Discuss scenarios where global state might be overkill, the desire to reduce boilerplate for local state, managing component-specific complexity, and encapsulating state logic directly within or alongside a component. Use heading level 2."

## Core Concepts
"<prompt> Introduce the core concepts of `ComponentStore`. Explain that a component typically extends `ComponentStore<MyState>` or uses it via delegation. Describe the key methods: `setState()` for replacing state, `patchState()` for partial updates, `select()` for creating reactive observables from state, and `effect()` for handling side effects tied to the component's lifecycle. Use heading level 2."
*   **Code Example Prompt**: "Show a minimal Angular component extending `ComponentStore<MyState>` and using `this.select()` and `this.patchState()` in its methods. Use Markdown code blocks."

## Updaters
"<prompt> Explain the concept of 'Updaters' in `ComponentStore`. Describe them as reusable methods defined within the store class that encapsulate specific state update logic, often taking arguments and calling `setState` or `patchState`. Use heading level 2."
*   **Code Example Prompt**: "Show an example within a `ComponentStore` class defining an `updater` method (e.g., `readonly increment = this.updater((state, value: number) => ({ ...state, count: state.count + value }));`) and how it's called. Use Markdown code blocks."

## Selectors
"<prompt> Explain how to select state from the `ComponentStore` using the `select()` method. Show how it takes a projection function and returns an Observable, similar to global store selectors. Mention that memoization is often built-in. Use heading level 2."
*   **Code Example Prompt**: "Show an example within a `ComponentStore` class defining a selector using `readonly myData$ = this.select(state => state.data);`. Use Markdown code blocks."

## Effects
"<prompt> Explain the `effect()` method in `ComponentStore`. Describe how it's used to handle asynchronous operations or side effects triggered by an Observable (e.g., user input, route changes). Emphasize that these effects are scoped to the component's lifecycle and often use RxJS operators, similar to global effects, but defined directly within the component store. Use heading level 2."
*   **Code Example Prompt**: "Show a conceptual example of defining an effect using `readonly myEffect = this.effect<string>(trigger$ => trigger$.pipe(...));` within a `ComponentStore` class. Use Markdown code blocks."

## Comparison with Global NGRX Store
"<prompt> Provide a comparison between `ComponentStore` and the global NGRX Store (`@ngrx/store`, `@ngrx/effects`, etc.). Contrast their scope (local vs. global), typical boilerplate, complexity, primary use cases, and whether they are mutually exclusive or can be used together. Use heading level 2."

*   **Glossary Prompt**: "Define: `@ngrx/component-store`, Local State, Scoped State, `ComponentStore<T>`, `setState()`, `patchState()`, `select()`, `effect()`, Updater."
*   **Quiz Prompt**: "Generate 3-4 questions comparing Component Store to global NGRX, and testing understanding of `patchState`, `select`, and `effect` in the context of `ComponentStore`."
*   **Key Points Prompt**: "Highlight that Component Store is for local state, reduces boilerplate compared to global store for simple cases, and ties state/effects to component lifecycle."
*   **Cross-references Prompt**: "Add cross-links to 'II. Core NGRX Concepts' (contrast global concepts), 'XVI. Comparison with Other State Management Libraries'."
*   **Further Exploration Prompt**: "Provide a link to the official NGRX documentation page for Component Store."
*   **Reflective Prompt**: "Ask the learner to identify a piece of state in a hypothetical application (e.g., filter settings for a specific list view) that might be better suited for `ComponentStore` rather than the global store, and explain why."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) explaining the purpose and core features of NGRX Component Store for managing local component state."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from managing state (both global and local) to the essential tools and techniques for debugging NGRX applications."

# XI. DevTools and Debugging

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'DevTools and Debugging' section. Focus on installing and configuring `@ngrx/store-devtools`, using the Redux DevTools browser extension for inspection and time-travel debugging, implementing logging meta-reducers, and strategies for debugging selectors and effects."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'DevTools and Debugging' section, emphasizing the importance of debugging tools for understanding and troubleshooting NGRX applications."

## Installation (`@ngrx/store-devtools`)
"<prompt> Explain how to install the NGRX store-devtools library (`@ngrx/store-devtools`) using `npm` or `yarn`. Include the specific commands. Use heading level 2."
*   **Code Example Prompt**: "Provide the `npm` and `yarn` commands for installing `@ngrx/store-devtools`. Use Markdown code blocks."

## Configuration
"<prompt> Explain how to configure the DevTools instrumentation using `StoreDevtoolsModule.instrument()` typically within `app.module.ts`. Emphasize that this should *only* be enabled in development builds (e.g., using environment variables). Mention common configuration options like `maxAge` (number of states to keep) and `logOnly` (for production environments if needed cautiously). Use heading level 2."
*   **Code Example Prompt**: "Show an example of importing and conditionally using `StoreDevtoolsModule.instrument()` in `app.module.ts` based on the Angular environment flag (`environment.production`). Use Markdown code blocks."

## Redux DevTools Extension
"<prompt> Describe the Redux DevTools browser extension. Explain how, once `@ngrx/store-devtools` is configured, the extension automatically connects and allows inspecting the state tree, viewing the history of dispatched actions and their payloads, seeing the state diff after each action, and performing 'time-travel debugging' (reverting to previous states). Use heading level 2."
*   **Screenshot/Link Prompt**: "Provide a link to the browser extension store page for Redux DevTools (Chrome/Firefox) and briefly describe its main UI panels (Log Monitor, Inspector, Diff)."

## Logging Meta-Reducer
"<prompt> Explain how a simple meta-reducer can be implemented for basic logging of actions and state changes to the browser's console, useful for debugging if the DevTools extension is unavailable or for specific logging needs. Use heading level 2."
*   **Code Example Prompt**: "Provide a simple TypeScript function demonstrating a logging meta-reducer that logs the action type and the state before and after the action. Show how it would be added to the `metaReducers` array in `StoreModule.forRoot()`. Use Markdown code blocks."

## Debugging Selectors
"<prompt> Discuss techniques for debugging NGRX selectors if they don't return the expected data. Suggest checking the selector logic itself, verifying the input state using DevTools or logging, and potentially using `.log()` within selector definitions (less ideal) or writing unit tests. Use heading level 2."

## Debugging Effects
"<prompt> Discuss strategies for debugging NGRX effects, which can be complex due to asynchronous operations and RxJS. Suggest using RxJS debugging operators (like `tap`), logging within effects, checking action dispatching in DevTools, verifying API calls in the browser's network tab, and writing unit tests with marble diagrams. Use heading level 2."

*   **Glossary Prompt**: "Define: `@ngrx/store-devtools`, Redux DevTools Extension, Time-Travel Debugging, State Inspection, Action Log, State Diff, Meta-Reducer (for logging), RxJS `tap` operator."
*   **Quiz Prompt**: "Generate 2-3 questions about configuring DevTools, the capabilities of the browser extension, and basic approaches to debugging selectors/effects."
*   **Key Points Prompt**: "Highlight the power of the Redux DevTools extension for NGRX development and the importance of enabling it only in development."
*   **Cross-references Prompt**: "Add cross-links to 'V. Working with Reducers' (Meta-Reducers), 'VI. Working with Selectors', 'VII. Working with Effects', 'XII. Testing NGRX Applications'."
*   **Further Exploration Prompt**: "Provide links to the official NGRX documentation for Store Devtools and the GitHub repository for the Redux DevTools Extension."
*   **Reflective Prompt**: "Ask the learner to describe how they would use the Redux DevTools extension to figure out why a piece of state is not updating as expected after an action is dispatched."
*   **Section Summary Prompt**: "Write a concise summary (2 sentences) covering the key tools and techniques for debugging NGRX applications, centering on the DevTools extension."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from runtime debugging to a more proactive approach to quality assurance: writing automated tests for NGRX applications."

# XII. Testing NGRX Applications

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Testing NGRX Applications' section. Focus on unit testing reducers, selectors (including memoization), and effects (using marble testing), and testing Angular components interacting with the store using `provideMockStore` and mock selectors."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Testing NGRX Applications' section, explaining the importance of testing different parts of an NGRX setup to ensure correctness and maintainability."

## Testing Reducers
"<prompt> Explain how to unit test NGRX reducers. Emphasize that since reducers are pure functions, testing involves providing an initial state and an action, calling the reducer function, and asserting that the returned state matches the expected output state. Use heading level 2."
*   **Code Example Prompt**: "Provide a simple unit test example (using Jasmine or Jest syntax) for an NGRX reducer, showing the setup, action dispatch simulation, and state assertion. Use Markdown code blocks."

## Testing Selectors
"<prompt> Explain how to unit test NGRX selectors. Describe testing simple selectors by providing mock state and asserting the output. For memoized selectors (`createSelector`), explain how to test the underlying 'projector' function directly for logic and potentially test the memoization behavior by calling the selector multiple times with the same/different inputs. Use heading level 2."
*   **Code Example Prompt**: "Provide simple unit test examples (using Jasmine or Jest) for an NGRX selector: one testing a basic selector with mock state, and another testing the projector function of a memoized selector. Use Markdown code blocks."

## Testing Effects
"<prompt> Explain the approach for testing NGRX effects, acknowledging their complexity due to asynchronous nature and RxJS. Introduce the concept of Marble Testing using RxJS `TestScheduler`. Show how to provide mock actions streams, mock service dependencies, and assert the output actions stream emitted by the effect using marble diagrams. Use heading level 2."
*   **Code Example Prompt**: "Provide a conceptual unit test example (using Jasmine or Jest with RxJS marbles) for an NGRX effect that listens for an action, calls a mock service, and dispatches a success action. Include setup for `TestScheduler`, `Actions` observable, and marble syntax for assertion. Use Markdown code blocks."
*   **Further Explanation**: "Briefly explain what a marble diagram represents (time, events, completion/error)."

## Testing Components with Store
"<prompt> Explain how to test Angular components that interact with the NGRX store. Introduce the `@ngrx/store/testing` utilities, specifically `provideMockStore`. Show how to set up the testing module with `provideMockStore`, provide initial mock state, and override selectors using `mockStore.overrideSelector` to return specific values needed for the test. Mention spying on `store.dispatch`. Use heading level 2."
*   **Code Example Prompt**: "Provide an Angular component test example (using TestBed) showing how to set up `provideMockStore`, override a selector the component uses, trigger component logic, and assert the component's behavior or that `store.dispatch` was called. Use Markdown code blocks."

## Testing with `MockStore`
"<prompt> Elaborate slightly on using `MockStore` from `@ngrx/store/testing`. Mention its methods like `setState` (to manually change the mock store state during a test) and `overrideSelector` as key tools for controlling the store's behavior within a test environment. Use heading level 2."

*   **Glossary Prompt**: "Define: Unit Testing, Pure Function (in testing context), Mock State, Mock Service, Marble Testing, `TestScheduler`, Marble Diagram, `@ngrx/store/testing`, `provideMockStore`, `MockStore`, `overrideSelector`, Dispatch Spy."
*   **Quiz Prompt**: "Generate 3-4 questions about why testing pure reducers/selectors is straightforward, the purpose of marble testing for effects, and how `provideMockStore` helps test components."
*   **Key Points Prompt**: "Highlight the different strategies needed for testing pure functions (reducers, selectors) vs. asynchronous logic (effects) vs. component interactions (mock store)."
*   **Cross-references Prompt**: "Add cross-links back to the sections detailing each concept being tested: 'V. Working with Reducers', 'VI. Working with Selectors', 'VII. Working with Effects'."
*   **Further Exploration Prompt**: "Provide links to the official NGRX documentation pages for Testing Reducers, Selectors, Effects, and Components."
*   **Reflective Prompt**: "Ask the learner to consider the main challenge when testing an Effect compared to testing a Reducer, and how Marble Testing addresses that challenge."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) outlining the key approaches for unit testing reducers, selectors, effects, and components within an NGRX application."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from ensuring correctness through testing to exploring more advanced architectural patterns and techniques used in complex NGRX applications."

# XIII. Advanced NGRX Patterns

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Advanced NGRX Patterns' section. Focus on understanding and implementing patterns like optimistic/pessimistic updates, action normalization, the Facade pattern, managing feature state lifecycle, and conditional effects."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Advanced NGRX Patterns' section, explaining that this section explores more sophisticated techniques and architectural patterns for handling complex scenarios in NGRX."

## Optimistic Updates
"<prompt> Explain the Optimistic Update pattern. Describe how the UI state is updated *immediately* upon user action (assuming success), while the asynchronous operation (e.g., API call) runs in the background. Detail the need for a potential rollback mechanism (dispatching a compensating action) if the operation fails. Discuss the pros (better perceived performance) and cons (UI/server state inconsistency). Use heading level 2."
*   **Flow Diagram Prompt**: "Generate a simple text-based or Mermaid diagram illustrating the flow of actions in an optimistic update (Initial Action -> UI Update Action -> Effect Trigger -> API Call -> Success/Failure -> Optional Rollback Action)."

## Pessimistic Updates
"<prompt> Explain the Pessimistic Update pattern. Describe how the UI state is *only* updated *after* receiving confirmation of success from the asynchronous operation (e.g., API call). Mention the common practice of showing a loading indicator during the operation. Discuss the pros (guaranteed UI/server consistency) and cons (slower perceived performance). Use heading level 2."
*   **Flow Diagram Prompt**: "Generate a simple text-based or Mermaid diagram illustrating the flow of actions in a pessimistic update (Initial Action -> Effect Trigger -> API Call -> Success/Failure -> UI Update Action)."

## Action Normalization/Preprocessing
"<prompt> Explain the concept of normalizing or preprocessing actions, often using Meta-Reducers or specialized Effects. Give examples like adding a timestamp or unique ID to every action, or transforming a generic action into a more specific one before it hits the reducers. Use heading level 2."

## Facade Pattern
"<prompt> Explain the Facade pattern in the context of NGRX. Describe creating an Angular service (`@Injectable()`) that acts as an intermediary between components and the NGRX store. Explain how the facade encapsulates `store.dispatch()` calls and exposes specific data slices via public observables (using `store.select()`). Discuss the benefits: simplified component logic, better testability, abstraction of NGRX details, and a single point of interaction for a feature's state. Use heading level 2."
*   **Code Example Prompt**: "Provide a conceptual code example of an NGRX facade service, showing injection of `Store`, public methods for dispatching actions, and public observable properties for selected state slices. Use Markdown code blocks."

## Handling Feature State Lifecycle
"<prompt> Discuss challenges and strategies for managing state and effects associated with lazy-loaded feature modules. Cover topics like cleaning up feature state when a module is destroyed (though often NGRX state persists) and ensuring effects tied to a feature are properly cancelled or cleaned up (e.g., using RxJS `takeUntil` tied to component destruction, or specific effect lifecycle management). Use heading level 2."

## Conditional Effects
"<prompt> Explain how to create effects that only run based on the current state of the application. Show how to use the `withLatestFrom` operator from RxJS within an effect to get the latest state from the store (via a selector) and make decisions within the effect's logic based on that state. Use heading level 2."
*   **Code Example Prompt**: "Provide a conceptual example of an effect using `withLatestFrom(this.store.select(someSelector))` to conditionally execute logic or dispatch a different action based on a state value. Use Markdown code blocks."

*   **Glossary Prompt**: "Define: Optimistic Update, Pessimistic Update, Rollback Action, Action Normalization, Facade Pattern (NGRX context), Feature State Lifecycle, Conditional Effect, `withLatestFrom` operator."
*   **Quiz Prompt**: "Generate 3-4 questions comparing optimistic vs. pessimistic updates, explaining the role of a facade, and how `withLatestFrom` can be used in effects."
*   **Key Points Prompt**: "Highlight the trade-offs between optimistic and pessimistic updates, the abstraction benefit of facades, and the use of `withLatestFrom` for state-dependent effects."
*   **Cross-references Prompt**: "Add cross-links to 'V. Working with Reducers' (Meta-Reducers), 'VII. Working with Effects', 'XV. NGRX Best Practices' (Facades, Feature States)."
*   **Further Exploration Prompt**: "Provide links to articles or blog posts discussing NGRX facade patterns and optimistic/pessimistic update strategies."
*   **Reflective Prompt**: "Ask the learner to consider a feature (e.g., adding an item to a shopping cart) and decide whether an optimistic or pessimistic update pattern would be more appropriate, justifying their choice."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) highlighting some advanced NGRX patterns like optimistic/pessimistic updates, facades, and conditional effects for handling complex application logic."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from advanced architectural patterns to specific techniques focused on optimizing the performance of NGRX applications."

# XIV. Performance Optimization

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Performance Optimization' section. Focus on understanding selector memoization deeply, leveraging `OnPush` change detection, using lazy loading effectively, detecting mutations with state freezing, analyzing bundle size, and utilizing runtime checks."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Performance Optimization' section, explaining that while NGRX provides good performance foundations, certain techniques can further optimize applications, especially large-scale ones."

## Selector Memoization Deep Dive
"<prompt> Revisit selector memoization (`createSelector`). Explain in more detail how it works by comparing input arguments (typically state slices or results from other selectors). Discuss the importance of ensuring input selectors are stable if their underlying data hasn't changed. Mention potential pitfalls if selectors are recreated unnecessarily (e.g., inline definitions in components). Use heading level 2."

## OnPush Change Detection
"<prompt> Explain how using Angular's `ChangeDetectionStrategy.OnPush` in components is crucial for performance when using NGRX. Describe how `OnPush` prevents change detection unless component `@Input()` references change or an event originates from the component *or its template*. Explain why this works well with NGRX selectors and the `async` pipe, as the `async` pipe marks the component for check when the selected observable emits a new value. Use heading level 2."
*   **Code Example Prompt**: "Show an Angular component decorator explicitly setting `changeDetection: ChangeDetectionStrategy.OnPush`. Use Markdown code blocks."

## Lazy Loading Feature Modules
"<prompt> Explain how lazy loading Angular feature modules impacts NGRX performance. Describe how it reduces the initial application bundle size by only loading the code (including NGRX state, reducers, effects for that feature) when the user navigates to that part of the application. Reinforce the use of `StoreModule.forFeature` and `EffectsModule.forFeature` in lazy-loaded modules. Use heading level 2."

## Freezing State in Development
"<prompt> Explain the purpose and benefit of 'freezing' the NGRX state during development using meta-reducers like `ngrx-store-freeze` (older) or NGRX's built-in runtime checks (`strictStateImmutability`). Describe how freezing the state object makes it truly immutable, throwing an error immediately if any code (like a reducer) attempts to directly mutate it, which helps catch common bugs early. Emphasize this is a development-only tool. Use heading level 2."
*   **Configuration Prompt**: "Mention how to enable the `strictStateImmutability` runtime check when configuring `StoreModule.forRoot`."

## Analyzing Bundle Size
"<prompt> Discuss the importance of monitoring the contribution of NGRX libraries (`@ngrx/store`, `@ngrx/effects`, `@ngrx/entity`, etc.) to the final application bundle size. Mention tools like `webpack-bundle-analyzer` or `source-map-explorer` to visualize bundle contents and identify potential areas for optimization or code-splitting. Use heading level 2."

## Runtime Checks
"<prompt> Elaborate on NGRX's built-in runtime checks, configurable in `StoreModule.forRoot` and `EffectsModule.forRoot`. Besides `strictStateImmutability`, mention `strictActionImmutability`, `strictStateSerializability`, and `strictActionSerializability`. Explain briefly what each check enforces (immutability of actions, ensuring state/actions can be serialized - important for DevTools and hydration). Emphasize configuring these primarily for development builds. Use heading level 2."
*   **Configuration Prompt**: "Show the syntax for enabling multiple runtime checks within `StoreModule.forRoot({ reducers }, { runtimeChecks: { ... } })`. Use Markdown code blocks."
*   **Benchmarking/Profiling Prompt**: "Describe how browser developer tools (Performance tab) can be used to profile component rendering times and identify bottlenecks potentially related to selector computations or change detection cycles triggered by NGRX state updates. Mention using `console.time` and `console.timeEnd` for rough measurements of selector performance if needed."

*   **Glossary Prompt**: "Define: Memoization (deep dive context), `ChangeDetectionStrategy.OnPush`, Lazy Loading (NGRX context), State Freezing, Bundle Size Analysis, Runtime Checks (`strictStateImmutability`, `strictActionSerializability`, etc.), Profiling."
*   **Quiz Prompt**: "Generate 3-4 questions about the interaction between `OnPush` and `async` pipe, the purpose of state freezing/runtime checks, and the benefit of lazy loading NGRX modules."
*   **Key Points Prompt**: "Highlight `OnPush`, selector memoization, lazy loading, and development-time immutability checks as key NGRX performance strategies."
*   **Cross-references Prompt**: "Add cross-links to 'VI. Working with Selectors' (Memoization), 'III. NGRX Store Setup' (Lazy Loading config), 'V. Working with Reducers' (Immutability)."
*   **Further Exploration Prompt**: "Provide links to articles discussing Angular Change Detection strategies and NGRX performance optimization techniques, including runtime checks."
*   **Reflective Prompt**: "Ask the learner why directly mutating state in a reducer, besides violating NGRX principles, could also break change detection when using `OnPush`."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) covering key techniques like `OnPush`, memoization, lazy loading, and runtime checks for optimizing NGRX application performance."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from specific performance techniques to a broader set of recommended best practices for building maintainable and scalable NGRX applications."

# XV. NGRX Best Practices

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'NGRX Best Practices' section. Focus on adopting recommended guidelines for state normalization, reducer simplicity, selector usage, action hygiene, error handling, modularity, using facades (optional), and structuring components (smart/dumb)."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'NGRX Best Practices' section, explaining that following established conventions leads to more maintainable, scalable, and understandable NGRX codebases."

## Keep State Normalized
"<prompt> Explain the best practice of keeping the store state normalized, especially for collections of data. Describe normalization as avoiding data duplication by storing items in a lookup table (like `@ngrx/entity` does with `entities`) and using IDs to reference them elsewhere in the state. Mention the benefits: easier updates, reduced risk of inconsistency. Use heading level 2."
*   **Relation to NGRX Entity**: "Explicitly state how using `@ngrx/entity` helps enforce this practice."

## Keep Reducers Pure and Simple
"<prompt> Reiterate the importance of reducer purity (no side effects, predictable). Add the best practice of keeping reducer logic simple and focused *only* on the state transition itself. Complex data transformations or business logic should typically reside elsewhere (e.g., in selectors for derivation, or potentially service layers called by effects). Use heading level 2."

## Selectors for Data Derivation
"<prompt> Emphasize the best practice of using selectors not just for accessing raw state slices, but also for encapsulating *all* logic related to deriving data from the state. Components should ideally select pre-computed data rather than performing complex transformations themselves. Highlight the benefits of reusability and memoization. Use heading level 2."

## Use Facades (Optional but Common)
"<prompt> Revisit the Facade pattern as a common best practice, although optional. Summarize its benefits: abstracting NGRX complexity from components, providing a clear API for feature interactions, improving testability, and centralizing dispatch/selection logic for a feature. Use heading level 2."

## Action Hygiene
"<prompt> Discuss 'Action Hygiene' - best practices for defining and using actions. Recommend using clear, descriptive action names that indicate the event source and the action itself (e.g., `[User API] Load Users Success`). Advise creating specific actions for specific events rather than overly generic ones. Mention using `props` clearly. Use heading level 2."

## Consistent Error Handling
"<prompt> Recommend establishing a consistent strategy for handling errors originating from effects (e.g., API failures). Suggest always dispatching specific error actions, potentially including useful error information in the payload, and having dedicated state properties and selectors for tracking error states to display feedback to the user. Use heading level 2."

## Modularity with Feature States
"<prompt> Advocate for structuring NGRX state, reducers, effects, and selectors based on application features, especially when using lazy loading. Explain how `StoreModule.forFeature` and `EffectsModule.forFeature` support this modularity, leading to better organization and scalability. Use heading level 2."

## Smart vs Dumb Components (Container/Presentational)
"<prompt> Introduce the 'Smart/Container' vs 'Dumb/Presentational' component pattern in the context of NGRX. Describe 'Smart' components as those that interact with the store (dispatch actions, select state via facades or directly) and pass data down to 'Dumb' components via `@Input()`. Describe 'Dumb' components as those focused purely on presentation, receiving data via `@Input()` and emitting events via `@Output()`, without direct store knowledge. Discuss the benefits for separation of concerns and reusability. Use heading level 2."

*   **Glossary Prompt**: "Define: Normalization (State), Action Hygiene, Facade Pattern (Best Practice Context), Feature State, Modularity, Smart Component (Container), Dumb Component (Presentational), Separation of Concerns."
*   **Quiz Prompt**: "Generate 3-4 questions related to the benefits of normalization, the role of facades, action naming conventions, and the characteristics of smart vs. dumb components."
*   **Key Points Prompt**: "Highlight normalization, simple reducers, selectors for derivation, action hygiene, and the smart/dumb component pattern as key NGRX best practices."
*   **Cross-references Prompt**: "Add cross-links to 'VIII. NGRX Entity
' (Normalization), 'V. Working with Reducers', 'VI. Working with Selectors', 'XIII. Advanced NGRX Patterns' (Facades), 'III. NGRX Store Setup' (Feature Modules)."
*   **Further Exploration Prompt**: "Provide links to articles or style guides discussing NGRX best practices, including action naming conventions and the smart/dumb component pattern."
*   **Reflective Prompt**: "Ask the learner to consider an existing component (or design a new one) and classify it as 'smart' or 'dumb', explaining their reasoning based on its interaction (or lack thereof) with the NGRX store."
*   **Section Summary Prompt**: "Write a concise summary (2-3 sentences) outlining key best practices like normalization, simple reducers, derived selectors, action hygiene, and component patterns for effective NGRX development."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from NGRX best practices to comparing NGRX with other available state management solutions in the Angular ecosystem and beyond."

# XVI. Comparison with Other State Management Libraries

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Comparison with Other State Management Libraries' section. Focus on understanding the key differences, pros, and cons when comparing NGRX to alternatives like NGXS, Akita, RxJS BehaviorSubjects/Services, and Apollo Client."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Comparison with Other State Management Libraries' section, explaining that while NGRX is a powerful choice, understanding its alternatives helps in making informed decisions based on project needs."

## NGRX vs. NGXS
"<prompt> Compare NGRX with NGXS. Highlight key differences in their API design, approach to boilerplate (NGXS often perceived as less boilerplate for basic cases), decorator usage in NGXS, handling of actions and state updates, and community/ecosystem size. Use heading level 2."

## NGRX vs. Akita
"<prompt> Compare NGRX with Akita. Focus on Akita's more object-oriented approach, its concept of Stores and Queries, built-in entity management features, and potentially simpler API for certain tasks compared to NGRX's more functional/Redux-aligned approach. Use heading level 2."

## NGRX vs. RxJS BehaviorSubject/Services
"<prompt> Compare using the full NGRX framework versus managing state using plain Angular services with RxJS `BehaviorSubject` or `Subject`. Discuss the pros of the simpler service approach (less boilerplate, lower learning curve for simple state) and its cons (lack of structure, no built-in DevTools, manual implementation of features like memoization, side effect management can become complex). Identify scenarios where each might be appropriate. Use heading level 2."

## NGRX vs. Apollo Client (GraphQL)
"<prompt> Compare NGRX specifically for managing remote data state versus using the caching and state management capabilities built into GraphQL clients like Apollo Client. Discuss how Apollo Client handles caching, normalization, and fetching of GraphQL data automatically, potentially reducing the need for NGRX for server state *if* using GraphQL extensively. Mention that NGRX might still be used for local UI state alongside Apollo. Use heading level 2."

*   **Glossary Prompt**: "Define: NGXS, Akita, RxJS `BehaviorSubject`, Apollo Client, GraphQL Caching."
*   **Quiz Prompt**: "Generate 2-3 questions asking about a key difference between NGRX and NGXS/Akita, and when using a simple RxJS service might be sufficient."
*   **Key Points Prompt**: "Highlight that different libraries offer trade-offs in terms of boilerplate, API style (functional vs. OOP), feature sets, and integration with specific technologies (like GraphQL)."
*   **Cross-references Prompt**: "Add cross-links to 'I. Introduction to State Management' (Why state management needed), 'X. NGRX Component Store' (alternative for local state)."
*   **Further Exploration Prompt**: "Provide links to comparison articles or official documentation of NGXS, Akita, and Apollo Client state management features."
*   **Reflective Prompt**: "Ask the learner, based on the comparisons, to identify a project characteristic (e.g., team experience, application complexity, use of GraphQL) that might lead them to choose NGRX over NGXS, or vice-versa."
*   **Section Summary Prompt**: "Write a concise summary (2 sentences) acknowledging that NGRX is one of several state management options, each with different strengths and weaknesses."
*   **Section Transition (End) Prompt**: "Write a brief paragraph transitioning from comparing NGRX to other tools to the practicalities of maintaining an NGRX application over time, specifically handling library upgrades."

# XVII. Migration and Upgrading

*   **Learning Objectives Prompt**: "Generate learning objectives for the 'Migration and Upgrading' section. Focus on understanding NGRX versioning, following official update guides, using codemods, and being aware of common types of breaking changes during upgrades."
*   **Section Transition (Start) Prompt**: "Write a brief introductory paragraph for the 'Migration and Upgrading' section, explaining that keeping dependencies up-to-date is important and outlining how to approach NGRX library upgrades."

## NGRX Versioning
"<prompt> Briefly explain NGRX's approach to versioning, likely following Semantic Versioning (SemVer). Describe what major, minor, and patch releases typically signify in terms of breaking changes, new features, and bug fixes. Use heading level 2."

## Following Update Guides
"<prompt> Emphasize the importance of consulting the official NGRX documentation and release notes when upgrading between versions, especially major versions. Mention that the NGRX team often provides detailed migration guides outlining necessary steps and breaking changes. Use heading level 2."
*   **Tool Mention**: "Mention the potential usefulness of the `ng update @ngrx/store` command (and similar for other packages) which can sometimes automate parts of the update process, including running schematics or codemods."

## Common Breaking Changes
"<prompt> Discuss the types of breaking changes that might occur in NGRX upgrades based on past evolution. Examples could include changes to operator imports (e.g., RxJS path changes), function signatures (`createAction`, `createReducer`, `createEffect` have evolved), configuration options, or deprecated APIs being removed. Use heading level 2."
*   **Codemods/Schematics**: "Explain that for some breaking changes, the NGRX team might provide 'codemods' or Angular CLI 'schematics' (often run via `ng update`) to automatically refactor code to the new API."

*   **Glossary Prompt**: "Define: Semantic Versioning (SemVer), Breaking Change, Migration Guide, Codemod, Angular CLI Schematics (`ng update`)."
*   **Quiz Prompt**: "Generate 1-2 questions about where to find migration information and the purpose of `ng update` / codemods."
*   **Key Points Prompt**: "Highlight the necessity of reading official migration guides for major version updates and leveraging automated tools like `ng update` when possible."
*   **Further Exploration Prompt**: "Provide a link to the main NGRX documentation site where release notes and migration guides are typically published."
*   **Reflective Prompt**: "Ask the learner to consider why carefully testing an application after running `ng update` or manually migrating NGRX versions is crucial."
*   **Section Summary Prompt**: "Write a concise summary (2 sentences) outlining the recommended process for upgrading NGRX libraries, emphasizing official guides and testing."
*   **Section Transition (End) Prompt**: "Write a brief concluding sentence for the entire learning agenda, perhaps encouraging continuous learning and practice."
