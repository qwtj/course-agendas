# I. Introduction to NgRx

## Understanding State Management

### Defining State

*   What is application state?
*   Why use a state management library?
*   Mutability vs. Immutability

### NgRx Core Concepts

*   **State:** The single source of truth for your application's data.
*   **Actions:** Events that describe a change to the state. `(type: string, payload?: any)`
*   **Reducers:** Pure functions that take the current state and an action and return a new state. `(state: State, action: Action) => State`
*   **Selectors:** Functions that extract specific pieces of data from the state. `(state: State) => any`
*   **Effects:** Side effects that listen for specific actions and perform asynchronous tasks. `@Effect()`
*   **Store:** The central container for the application's state.

## Setting Up NgRx in an Angular Project

### Installing NgRx Packages

```bash
npm install @ngrx/store @ngrx/effects @ngrx/entity @ngrx/store-devtools --save
```

### Importing NgRx Modules

*   `StoreModule.forRoot(reducers)` in `AppModule`
*   `EffectsModule.forRoot([AppEffects])` in `AppModule`
*   `StoreDevtoolsModule.instrument({ maxAge: 25, logOnly: environment.production })` in `AppModule` (optional, for development)

### Basic Project Structure for NgRx

*   `state/` directory: Contains state interface definitions and initial state.
*   `actions/` directory: Contains action definitions.
*   `reducers/` directory: Contains reducer functions.
*   `effects/` directory: Contains effect implementations.
*   `selectors/` directory: Contains selector functions.

# II. Actions and Reducers

## Defining Actions

### Action Types

*   Using string constants for action types. `const LOAD_PRODUCTS = '[Products] Load Products';`
*   Using enums or union types.

### Creating Action Creators

*   Using `createAction` from `@ngrx/store`.
*   Defining action payloads.
    ```typescript
    import { createAction, props } from '@ngrx/store';

    export const loadProducts = createAction(
      '[Products] Load Products'
    );

    export const loadProductsSuccess = createAction(
      '[Products] Load Products Success',
      props<{ products: Product[] }>()
    );

    export const loadProductsFailure = createAction(
      '[Products] Load Products Failure',
      props<{ error: any }>()
    );
    ```

## Implementing Reducers

### Creating a Reducer Function

*   Using `createReducer` from `@ngrx/store`.
*   Defining initial state.

### Handling Actions in Reducers

*   Using `on` function to handle specific actions.
*   Updating state immutably using spread operator or object assign.

```typescript
import { createReducer, on } from '@ngrx/store';
import { loadProducts, loadProductsSuccess, loadProductsFailure } from './product.actions';

export interface ProductState {
  products: Product[];
  loading: boolean;
  error: any;
}

export const initialState: ProductState = {
  products: [],
  loading: false,
  error: null
};

export const productReducer = createReducer(
  initialState,
  on(loadProducts, (state) => ({ ...state, loading: true })),
  on(loadProductsSuccess, (state, { products }) => ({ ...state, products, loading: false, error: null })),
  on(loadProductsFailure, (state, { error }) => ({ ...state, loading: false, error }))
);
```

### Registering Reducers in `StoreModule`

*   Passing a reducer map to `StoreModule.forRoot` or `StoreModule.forFeature`.
    ```typescript
    // app.module.ts
    import { StoreModule } from '@ngrx/store';
    import { productReducer } from './reducers/product.reducer';

    @NgModule({
      imports: [
        StoreModule.forRoot({ products: productReducer }) // or StoreModule.forFeature('products', productReducer)
      ]
    })
    export class AppModule {}
    ```

# III. Selectors and Effects

## Creating Selectors

### Understanding Selector Functions

*   Selectors are pure functions that extract data from the state.
*   Using `createSelector` from `@ngrx/store`.
*   Memoizing selectors for performance.

### Defining Selectors

*   Creating feature selectors to select a slice of the state. `createFeatureSelector<ProductState>('products');`
*   Creating selectors that derive data from the state. `createSelector(selectProductState, (state: ProductState) => state.products);`

```typescript
import { createSelector, createFeatureSelector } from '@ngrx/store';
import { ProductState } from './product.reducer';

export const selectProductState = createFeatureSelector<ProductState>('products');

export const selectAllProducts = createSelector(
  selectProductState,
  (state: ProductState) => state.products
);

export const selectProductsLoading = createSelector(
  selectProductState,
  (state: ProductState) => state.loading
);
```

## Implementing Effects

### Understanding Side Effects

*   Effects handle asynchronous tasks and interact with external services.
*   Listening for specific actions and dispatching new actions.

### Creating Effects

*   Using `@Effect()` decorator from `@ngrx/effects`.
*   Injecting services using dependency injection.

### Handling Asynchronous Operations

*   Using RxJS operators like `mergeMap`, `switchMap`, `concatMap`, `exhaustMap`, `map`, `catchError`.
*   Dispatching success and failure actions.

```typescript
import { Injectable } from '@angular/core';
import { Actions, createEffect, ofType } from '@ngrx/effects';
import { ProductService } from './product.service';
import { loadProducts, loadProductsSuccess, loadProductsFailure } from './product.actions';
import { map, mergeMap, catchError } from 'rxjs/operators';
import { of } from 'rxjs';

@Injectable()
export class ProductEffects {

  loadProducts$ = createEffect(() => this.actions$.pipe(
    ofType(loadProducts),
    mergeMap(() => this.productService.getProducts()
      .pipe(
        map(products => loadProductsSuccess({ products })),
        catchError(error => of(loadProductsFailure({ error })))
      )
    )
  ));

  constructor(private actions$: Actions, private productService: ProductService) {}
}
```

### Registering Effects in `EffectsModule`

*   Passing an array of effects to `EffectsModule.forRoot` or `EffectsModule.forFeature`.
    ```typescript
    // app.module.ts
    import { EffectsModule } from '@ngrx/effects';
    import { ProductEffects } from './effects/product.effects';

    @NgModule({
      imports: [
        EffectsModule.forRoot([ProductEffects]) // or EffectsModule.forFeature([ProductEffects])
      ]
    })
    export class AppModule {}
    ```

# IV. Using NgRx in Components

## Dispatching Actions

### Injecting the `Store` Service

*   Importing `Store` from `@ngrx/store`.
*   Injecting `Store` in the component's constructor.

### Dispatching Actions from Components

*   Using `store.dispatch(action)` to dispatch actions.
*   Dispatching actions in response to user events.

```typescript
import { Component, OnInit } from '@angular/core';
import { Store } from '@ngrx/store';
import { loadProducts } from './actions/product.actions';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  constructor(private store: Store) {}

  ngOnInit() {
    this.store.dispatch(loadProducts());
  }

}
```

## Selecting Data from the Store

### Using Selectors in Components

*   Using `store.select(selector)` to select data from the store.
*   Subscribing to the observable returned by `store.select`.
*   Using `async` pipe in templates.

```typescript
import { Component, OnInit } from '@angular/core';
import { Store } from '@ngrx/store';
import { Observable } from 'rxjs';
import { Product } from './models/product.model';
import { selectAllProducts, selectProductsLoading } from './selectors/product.selectors';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  products$: Observable<Product[]>;
  loading$: Observable<boolean>;

  constructor(private store: Store) {
    this.products$ = this.store.select(selectAllProducts);
    this.loading$ = this.store.select(selectProductsLoading);
  }

  ngOnInit() {}

}
```

```html
<!-- product-list.component.html -->
<div *ngIf="loading$ | async">Loading...</div>

<div *ngFor="let product of products$ | async">
  {{ product.name }}
</div>
```

# V. NgRx Entity

## Introduction to NgRx Entity

### Simplifying CRUD Operations

*   Managing collections of entities with unique IDs.
*   Providing a set of reducer functions and selectors for common operations.

### NgRx Entity Adapter

*   `createEntityAdapter()` function to create an entity adapter.
*   Configuring the adapter with a selectId function (optional).

```typescript
import { createEntityAdapter, EntityAdapter, EntityState } from '@ngrx/entity';
import { Product } from './models/product.model';

export interface ProductState extends EntityState<Product> {
  loading: boolean;
  error: any;
}

export const productAdapter: EntityAdapter<Product> = createEntityAdapter<Product>();

export const initialState: ProductState = productAdapter.getInitialState({
  loading: false,
  error: null
});
```

## Using NgRx Entity in Reducers

### Implementing Reducers with Entity Adapter

*   Using adapter methods like `addOne`, `addMany`, `updateOne`, `removeOne`, `removeMany`, `setAll`.
*   Updating the entity state immutably.

```typescript
import { createReducer, on } from '@ngrx/store';
import { loadProductsSuccess, loadProductsFailure, addProduct } from './product.actions';
import { productAdapter, ProductState, initialState } from './product.reducer';

export const productReducer = createReducer(
  initialState,
  on(loadProductsSuccess, (state, { products }) => productAdapter.setAll(products, { ...state, loading: false, error: null })),
  on(loadProductsFailure, (state, { error }) => ({ ...state, loading: false, error })),
  on(addProduct, (state, { product }) => productAdapter.addOne(product, state) )
);
```

## Using NgRx Entity Selectors

### Generating Selectors with Entity Adapter

*   Using `getSelectors` method from the adapter to generate selectors.
*   Selectors for accessing all entities, entity dictionary, and entity IDs.

```typescript
import { createSelector, createFeatureSelector } from '@ngrx/store';
import { productAdapter, ProductState } from './product.reducer';

export const selectProductState = createFeatureSelector<ProductState>('products');

export const {
  selectIds,
  selectEntities,
  selectAll,
  selectTotal,
} = productAdapter.getSelectors(selectProductState);

export const selectAllProducts = selectAll;
```

# VI. Advanced NgRx Concepts

## Meta-Reducers

### Understanding Meta-Reducers

*   Reducers that operate on other reducers.
*   Useful for logging, debugging, and rehydration of state.

### Implementing Meta-Reducers

*   Creating a meta-reducer function that wraps the root reducer.
*   Registering meta-reducers in `StoreModule.forRoot`.

```typescript
// app.module.ts
import { StoreModule, MetaReducer } from '@ngrx/store';
import { productReducer } from './reducers/product.reducer';

export function logger(reducer): any {
  return (state, action) => {
    console.log('state before: ', state);
    console.log('action', action);

    const nextState = reducer(state, action);

    console.log('state after: ', nextState);
    return nextState;
  };
}

export const metaReducers: MetaReducer<any>[] = [logger];

@NgModule({
  imports: [
    StoreModule.forRoot({ products: productReducer }, { metaReducers })
  ]
})
export class AppModule {}
```

## Feature Modules and Lazy Loading

### Organizing NgRx State in Feature Modules

*   Using `StoreModule.forFeature` and `EffectsModule.forFeature` in feature modules.
*   Lazy loading feature modules with NgRx state.

### Sharing State Between Modules

*   Using global state or feature state depending on the use case.
*   Using `Store` service to access state from other modules.

## Testing NgRx Code

### Testing Actions

*   Verifying that actions are dispatched correctly.

### Testing Reducers

*   Testing state transitions based on different actions.
*   Testing boundary conditions and error cases.

### Testing Effects

*   Mocking services and testing asynchronous operations.
*   Using Marble Testing from RxJS.
```typescript
import { cold, hot } from 'jasmine-marbles';
import { ProductEffects } from './product.effects';
import { loadProducts, loadProductsSuccess, loadProductsFailure } from './product.actions';
import { of } from 'rxjs';

describe('ProductEffects', () => {
  let actions$;
  let effects: ProductEffects;
  let productService;

  beforeEach(() => {
    productService = jasmine.createSpyObj('ProductService', ['getProducts']);
    effects = new ProductEffects(actions$, productService);
  });

  it('should load products successfully', () => {
    const products = [{ id: 1, name: 'Product 1' }, { id: 2, name: 'Product 2' }];
    const action = loadProducts();
    const completion = loadProductsSuccess({ products });

    actions$ = hot('-a---', { a: action });
    const response = cold('-b|', { b: products });
    productService.getProducts.and.returnValue(response);

    const expected = cold('--c--', { c: completion });
    expect(effects.loadProducts$).toBeObservable(expected);
  });
});
```

# VII. NgRx Best Practices and Common Patterns

## Action Naming Conventions

### Using Clear and Consistent Action Names

*   Using a consistent naming scheme for action types.
*   Prefixing action types with a feature name. `[Feature] Action Description`

## Immutability

### Ensuring State Immutability

*   Using spread operator or object assign to update state immutably.
*   Avoiding direct mutation of state objects.

## Handling Errors

### Implementing Error Handling in Effects

*   Catching errors in effects using `catchError` operator.
*   Dispatching error actions to update the state with error information.

## Rehydration and Persistence

### Persisting NgRx State

*   Using local storage or session storage to persist state across sessions.
*   Rehydrating state from storage on application load.

### NgRx Libraries

*   Exploring libraries such as `ngrx-store-localstorage`, `ngrx-persist` to easily handle state persistence and rehydration.
