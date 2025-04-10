# Latest Angular #SkillsOverview #KnowledgeMap #Main #FrontendFramework #JavaScript #TypeScript #WebDevelopment

## Core Concepts #Fundamentals #BuildingBlocks #Essential #AngularCore

### TypeScript #Language #Prerequisite #StaticTyping #SupersetOfJS
#### Basic Types #Primitive #String #Number #Boolean #Array #Tuple #Enum #Any #Void #Null #Undefined #Never #BigInt #Symbol
#### Advanced Types #Interface #TypeAlias #Union #Intersection #Generics #MappedTypes #ConditionalTypes #IndexTypes #UtilityTypes
##### Utility Types #Partial #Required #Readonly #Record #Pick #Omit #Exclude #Extract #NonNullable #ReturnType #InstanceType
#### Classes & OOP #Class #Constructor #Inheritance #Modifier #Public #Private #Protected #Readonly #AbstractClass #Getter #Setter #StaticMembers #MethodOverloading
#### Decorators #Metadata #ClassDecorator #PropertyDecorator #MethodDecorator #ParameterDecorator #AngularDecorators #Experimental
##### Decorator Metadata Reflection #ReflectMetadata #emitDecoratorMetadata #experimentalDecorators
#### Modules & Namespaces #ESModules #Import #Export #Namespace #AmbientDeclarations #DeclarationFiles #dTsFiles #TripleSlashDirectives

### Components #UI #BuildingBlocks #ViewLogic #ReusableUI
#### Component Decorator #Metadata #Selector #TemplateUrl #StyleUrls #Standalone #Inputs #Outputs #Providers #ViewProviders #ChangeDetection #Encapsulation #HostDirectives
##### HostDirectives #Composition #ApplyingDirectivesToHost
#### Template Syntax #Interpolation #PropertyBinding #EventBinding #TwoWayBinding #AttributeBinding #ClassBinding #StyleBinding #TemplateVariables #PipeOperator
##### Safe Navigation Operator #OptionalChaining #NullChecks `?.`
#### Lifecycle Hooks #Creation #Update #Destruction #OnInit #OnChanges #DoCheck #AfterContentInit #AfterContentChecked #AfterViewInit #AfterViewChecked #OnDestroy #OrderOfExecution
##### SimpleChanges Object #PreviousValue #CurrentValue #FirstChange
#### Inputs & Outputs #ComponentCommunication #InputDecorator #OutputDecorator #EventEmitter #Alias #RequiredInputs #TransformFunctions
##### Input Transform Functions #Coercion #Preprocessing
##### Required Inputs #CompileTimeCheck #NonNullable
#### View Encapsulation #Styling #ShadowDOM #Emulated #None #CSSIsolation
#### Standalone Components #Architecture #Simplified #NoNgModule #ImportsArray #LazyLoadingComponents #RouteIntegration
##### Standalone APIs #bootstrapApplication #importProvidersFrom

### Templates #HTML #View #DeclarativeUI #AngularTemplates
#### Template Expressions #JavaScriptSubset #Context #PipeUsage #SecurityContext #NoSideEffects
#### Structural Directives #DOMManipulation #NgIf #NgFor #NgSwitch #CustomStructuralDirectives #MicroSyntax
##### NgIf #ElseTemplate #ContextGuard
##### NgFor #TrackBy #Index #First #Last #Even #Odd #ContextVariables
##### NgSwitch #NgSwitchCase #NgSwitchDefault
#### Attribute Directives #ElementBehavior #NgClass #NgStyle #CustomAttributeDirectives #HostBinding #HostListener
##### HostBinding #BindingToHostProperties #Attributes #Classes #Styles
##### HostListener #ListeningToHostEvents #DOMEvents
#### Template Reference Variables #DOMAccess #ViewChild #ViewChildren #ComponentAccess #DirectiveAccess #ElementRef #TemplateRef
##### ViewChild & ViewChildren #StaticOption #ReadOption #Querying #Timing

### Modules (NgModules) #Organization #CompilationContext #LegacyArchitecture #StillRelevant
Note: Increasingly replaced by Standalone Components, but still relevant for existing apps and libraries.
#### NgModule Decorator #Declarations #Imports #Providers #Exports #Bootstrap #Schema #Id
#### Feature Modules #LazyLoading #AppOrganization #DomainSpecific
#### Shared Modules #CommonComponents #Pipes #Directives #AvoidingServiceProvider
#### Core Module #SingletonServices #AppLevelComponents #GuardAgainstReimport
#### Routing Modules #SeparationOfConcerns #RouterModuleForRoot #RouterModuleForChild

### Data Binding #Synchronization #ViewLogic #ComponentInteraction
#### One-Way Binding (Source-to-View) #Interpolation `{{ }}` #PropertyBinding `[]` #AttributeBinding `[attr.]` #ClassBinding `[class.]` #StyleBinding `[style.]`
#### Event Binding (View-to-Source) #UserInteraction #DOMEvents `()` #CustomEvents #EventEmitter #EventPayload `$event`
#### Two-Way Binding #FormsModule #NgModel #BananaInABox `[(ngModel)]` #FormControlName #ReactiveFormsBinding

### Directives #DOMBehavior #CustomHTML #AttributeVsStructural
#### Component Directives #UITemplates #SpecializedDirective #IsADirective
#### Attribute Directives #ElementAppearance #ElementBehavior #HostListener #HostBinding #InputProperties #AttributeSelectors `[myDirective]`
#### Structural Directives #DOMStructure #TemplateRef #ViewContainerRef #AsteriskSyntax `*myDirective` #TemplateContextGuard
##### TemplateRef #EmbeddedView #CreatingViews
##### ViewContainerRef #ViewManipulation #CreatingEmbeddedViews #CreatingComponentViews

### Services #BusinessLogic #DataSharing #ReusableCode #Singletons
#### Service Creation #InjectableDecorator #LogicEncapsulation #DataAbstraction
#### Providing Services #RootInjector `providedIn: 'root'` #PlatformInjector `providedIn: 'platform'` #AnyInjector `providedIn: 'any'` #ModuleInjector #ElementInjector #ComponentProviders #DirectiveProviders
##### Tree-Shakable Providers #providedInRoot #Performance

### Dependency Injection (DI) #DesignPattern #InversionOfControl #Decoupling #HierarchicalDI
#### Injector Hierarchy #Root #Platform #Module #Element #ResolutionRules #BubbleUp
#### Providers #useClass #useValue #useExisting #useFactory #InjectionToken #MultiProviders
##### InjectionToken #OpaqueToken #NonClassDependencies
##### MultiProviders #ProvidingMultipleValues #HTTP_INTERCEPTORS
#### Resolution Modifiers #Optional #Self #SkipSelf #Host #InjectFunction #ConstructorParameters
##### @Optional() #HandlingMissingDependency
##### @Self() #LookOnlyInCurrentElement
##### @SkipSelf() #StartResolutionFromParent
##### @Host() #StopAtHostComponent
##### inject() Function #FunctionalDI #OutsideConstructor #RouterGuards #RouteResolvers

## Architecture & Design Patterns #Structure #BestPractices #Scalability #Maintainability

### Modularity #CodeOrganization #Reusability #Maintainability #DomainDrivenDesign
#### Feature Modules #DomainDriven #LazyLoading #RoutingDomains
#### Shared Modules #CommonUI #Utilities #Pipes #Directives #NoServices
#### Core Module #Singletons #AppShell #RootServices #AppInitializer
#### Standalone Components Approach #SimplifiedModuleless #FineGrainedImports #ComponentAsCompilationUnit #ImprovedTreeShaking

### State Management #DataFlow #ApplicationState #Predictability #ComplexityManagement
#### Service with Subject #LocalState #SimpleScenarios #RxJS #BehaviorSubject #ReplaySubject #StateEncapsulation
##### Subject Types #AsyncSubject #WebSocketSubject
#### NgRx #ReduxPattern #Store #Actions #Reducers #Effects #Selectors #Facades #PredictableStateContainer #Tooling #DevTools
##### Store #SingleSourceOfTruth #Dispatch #Select
##### Actions #Events #StateChanges #ActionCreators `createAction` #Props
##### Reducers #PureFunctions #StateTransitionLogic #OnReducer `on` #createReducer #InitialState #MetaReducers
##### Effects #SideEffects #APICalls #AsyncOperations #CreateEffect `createEffect` #ofType #NonDispatchingEffects
##### Selectors #QueryingState #Memoization #Performance #CreateSelector `createSelector` #CreateFeatureSelector `createFeatureSelector` #CombiningSelectors
##### Facades #AbstractionLayer #SimplifyingComponentInteraction #ViewModelLogic
##### NgRx Entity #ManagingCollections #BoilerplateReduction #EntityAdapter #CRUDOperations
##### NgRx ComponentStore #LocalComponentState #Alternative #ScopedState #ImperativeUpdates #Selectors
##### NgRx SignalStore #SignalBasedState #FineGrainedReactivity #DeeplyReactive
#### Signals (Native Angular) #FineGrainedReactivity #NewPrimitive #Computed #Effect #WritableSignal #Performance #Simplicity
##### Model Inputs #SignalBasedInputs #TwoWayBindingWithSignals
##### Signal Queries #viewChild.signal() #contentChild.signal()
#### Other Libraries #NGXS #Akita #Elf #StateAdapt #Comparison #Tradeoffs

### Reactive Programming with RxJS #Async #DataStreams #Observables #FunctionalReactiveProgramming
#### Core Concepts #Observable #Observer #Subscription #Operators #Subject #Scheduler #MarbleDiagrams
#### Observable Creation #Of #From #Interval #Timer #Ajax #FromEvent #Create
#### Operators (Categorized) #Transformation #Filtering #Combination #ErrorHandling #Utility #Conditional #Multicasting
##### Transformation #Map #Pluck #MapTo #SwitchMap #MergeMap #ConcatMap #ExhaustMap #Scan #Reduce #Buffer #Window
##### Filtering #Filter #Take #Skip #First #Last #DebounceTime #DistinctUntilChanged #ThrottleTime #AuditTime #SampleTime
##### Combination #CombineLatest #Zip #ForkJoin #Merge #Concat #StartWith #WithLatestFrom #Pairwise
##### Error Handling #CatchError #Retry #RetryWhen #ThrowError #OnErrorResumeNext #Timeout
##### Utility #Tap #Delay #Finalize #ToArray #Materialize #Dematerialize
##### Conditional #Iif #Empty #DefaultIfEmpty
##### Multicasting #Share #ShareReplay #Publish #Multicast #ConnectableObservable
#### Subjects #Subject #BehaviorSubject #ReplaySubject #AsyncSubject #UseCases
#### Schedulers #AsyncScheduler #AsapScheduler #QueueScheduler #AnimationFramesScheduler #ControllingExecutionTiming
#### Usage in Angular #HttpClient #RouterEvents #AsyncPipe #ReactiveForms #EventEmitter #StateManagement
##### AsyncPipe #AutomaticSubscription #Unsubscription #HandlingNull/Undefined #Performance

## Development Workflow & Tooling #Productivity #Build #Test #DevOps

### Angular CLI #CommandLineInterface #Scaffolding #Building #Testing #Deployment #Automation
#### Installation & Updates #NPM #Yarn #PNPM #NG #ngNew #ngGenerate #ngServe #ngBuild #ngTest #ngE2E #ngUpdate #ngAdd
##### ng generate #Component #Service #Directive #Pipe #Module #Guard #Resolver #Enum #Interface #Class #Library #WebWorker
##### ng serve options #Port #Host #SSL #ProxyConfig #LiveReload #HMR
##### ng build options #Configuration #Prod #AOT #Optimization #SourceMap #BaseHref #DeployUrl #OutputHashing #Progress #Watch
##### ng test options #Karma #Jest #CodeCoverage #Watch #Browsers
##### ng update #UpdatingDependencies #Migrations #ForceFlag
##### ng add #AddingLibraries #SchematicsIntegration #@angular/material #@angular/pwa #@angular/ssr
#### Workspace Configuration #angularJson #ProjectStructure #BuildTargets #Architect #Configurations #Budgets #Assets #Styles #Scripts
##### angular.json Deep Dive #Projects #SourceRoot #Prefix #ArchitectTargets #Builder #Options #Configurations
##### tsconfig.json #CompilerOptions #Paths #Includes #Excludes
#### Schematics #CodeGeneration #CustomGenerators #Automation #Builders #ArchitectAPI #CollectionJson
##### Using Schematics #ng generate my-schematic #Options
##### Creating Schematics #SchematicRule #Tree #Context #Templates #TestingSchematics

### Build Process #Compilation #Optimization #Bundling #Delivery
#### Ahead-of-Time (AOT) Compilation #Performance #TemplateChecking #SmallerBundles #Security #HowItWorks
#### Just-in-Time (JIT) Compilation #DevelopmentMode #Debugging #DynamicTemplates
#### Bundling & Optimization #Webpack (Legacy) #esbuild (Default) #Rollup #TreeShaking #Minification #Uglification #CodeSplitting #ScopeHoisting
##### esbuild Integration #FasterBuilds #DefaultBuilder
##### Webpack Configuration (Advanced) #CustomWebpackConfig #ExtendingCLIBuild
#### Differential Loading #ES5 #ES2015+ #BrowserSupport #Module/NoModule
#### Ivy Compilation & Rendering Engine #LocalityPrinciple #ImprovedTreeShaking #SmallerBundles #FasterBuilds #LazyLoadingComponents #ImprovedDebugging #RuntimeEngine

### Testing Strategies #QualityAssurance #Verification #Confidence #TestPyramid
#### Unit Testing #IsolatedTesting #Components #Services #Pipes #Directives #FastFeedback #CodeCoverage
#### Integration Testing #ComponentInteraction #ModuleInteraction #ShallowVsDeep #TestingSubsystems
#### End-to-End (E2E) Testing #UserFlows #ApplicationSimulation #RealBrowserInteraction #ConfidenceInRelease

### Debugging #Troubleshooting #ErrorAnalysis #RootCauseAnalysis
#### Browser DevTools #Console #Network #Elements #Sources #Breakpoints #PerformanceProfiler #MemoryProfiler
#### Angular DevTools Extension #ComponentTree #Profiler #RouterInspection #InjectorTree #DebuggingDI
#### Source Maps #DebuggingCompiledCode #TypeScriptDebugging #MappingIssues
#### Logging #ConsoleLog #CustomLogger #StructuredLogging #RemoteLogging
#### Augury (Alternative DevTool) #Visualization #StateInspection

### Version Control #Collaboration #History #CodeManagement #CI/CD
#### Git #Fundamentals #Branching #Merging #PullRequests #Rebasing #ConflictResolution #GitFlow #GitHubFlow
#### CI/CD Integration #GitHubActions #GitLabCI #Jenkins #AutomatedBuilds #AutomatedTesting #AutomatedDeployment

## Routing & Navigation #SinglePageApplication #ViewManagement #URLHandling

### RouterModule #Configuration #Navigation #SPA #RouterPackage
#### Routes Configuration #Path #Component #LoadComponent #LoadChildren #RedirectTo #PathMatch #Data #Resolve #CanActivate #CanMatch #Outlet #Title
##### Route Title Strategy #SettingDocumentTitle #TitleService #ResolveTitle
##### LoadComponent #LazyLoadingStandaloneComponents
#### RouterOutlet #ViewPlaceholder #NamedOutlets
#### RouterLink #DeclarativeNavigation #RouterLinkActive #QueryParams #Fragment #SkipLocationChange #ReplaceUrl
#### Programmatic Navigation #RouterService #Navigate #NavigateByUrl #NavigationExtras #RelativeNavigation

### Route Guards #AccessControl #LifecycleHooks #ConditionalNavigation
#### CanActivate #RouteAccess #Authentication #Authorization #FunctionalGuards #ClassBasedGuards
#### CanActivateChild #ChildRouteAccess #HierarchicalGuards
#### CanDeactivate #PreventLeaving #UnsavedChanges #UserConfirmation
#### CanMatch #ConditionalRouteMatching #FeatureToggles #ABTesting
#### Resolve #DataPrefetching #RouteData #BlockingNavigation #ErrorHandlingInResolver
#### CanLoad #LazyModuleLoadingGuard (Deprecated with Standalone Components, use CanMatch)
#### Functional Guards & Resolvers #SimplerSyntax #DIWithInject #TreeShakable

### Lazy Loading #Performance #OnDemandLoading #CodeSplitting
#### loadChildren Property (Modules) #DynamicImports #ModulePath#Syntax
#### loadComponent Property (Standalone) #DynamicImports #ComponentPath#Syntax
#### Preloading Strategies #PreloadAllModules #NoPreloading #CustomPreloadingStrategy #QuicklinkStrategy #NetworkAwarePreloading

### Advanced Routing #ComplexScenarios #URLStructure
#### Child Routes #NestedRoutes #Hierarchy #RelativePaths #EmptyPathRoutes
#### Secondary Routes #NamedOutlets #ParallelViews #AuxiliaryRoutes #DashboardLayouts
#### Route Parameters #RequiredParams `/:id` #OptionalParams #MatrixParams `;key=value` #AccessingParams #ActivatedRouteSnapshot #ParamMap
#### Query Parameters & Fragments #URLState #Filtering #Linking #QueryParams `?key=value` #Fragment `#section` #PreservingState #QueryParamsHandling #PreserveFragment
#### Router Events #NavigationStart #RoutesRecognized #GuardsCheckStart #ChildActivationStart #ActivationStart #GuardsCheckEnd #ResolveStart #ResolveEnd #ActivationEnd #ChildActivationEnd #NavigationEnd #NavigationCancel #NavigationError #Scroll #MonitoringNavigation

## Forms #UserInputs #DataCollection #Validation #ComplexUI

### Template-Driven Forms #SimpleForms #NgModel #Declarative #MinimalComponentCode
#### NgForm Directive #FormState #ValidationStatus #Submission #ValueChanges #StatusChanges
#### NgModel Directive #TwoWayBinding #ControlState #StandaloneNgModel #NameAttribute #Options #UpdateOnBlur/Submit
#### Built-in Validators #Required #MinLength #MaxLength #Pattern #Email #Min #Max #RequiredTrue #NullValidator
#### Form State CSS Classes #ng-valid #ng-invalid #ng-pending #ng-pristine #ng-dirty #ng-touched #ng-untouched #StylingHooks
#### Custom Validators (Template-Driven) #DirectiveBased #NG_VALIDATORS #ProvidingValidators

### Reactive Forms #ComplexForms #Programmatic #Testable #Immutable #Scalable
#### FormBuilder Service #FormGroup #FormControl #FormArray #SyntacticSugar #group() #control() #array()
#### FormGroup #ControlCollection #NestedForms #FormGroupName #AccessingControls #DotNotation #GetMethod
#### FormControl #SingleInputControl #Value #Status #Validators #AsyncValidators #ValueChanges #StatusChanges #SetValue #PatchValue #Reset #Errors #Touched #Dirty
##### FormControl Options #nonNullable #updateOn
#### FormArray #DynamicForms #ListOfControls #Push #Insert #RemoveAt #SetControl #At #Clear
#### Built-in Validators #ValidatorsClass #Required #MinLength #MaxLength #Pattern #Email #Min #Max #RequiredTrue #Compose #ComposeAsync #NullValidator
#### Custom Validators #SyncValidators #AsyncValidators #FunctionBased #ClassBased #CrossFieldValidation #InjectingServices
##### Sync Validator Function `(control: AbstractControl) => ValidationErrors | null`
##### Async Validator Function `(control: AbstractControl) => Promise<ValidationErrors | null> | Observable<ValidationErrors | null>`
##### Cross-Field Validation #ValidatorOnFormGroup #AccessingSiblingControls
#### Value Changes & Status Changes #Observables #ReactiveUpdates #DebounceTime #DistinctUntilChanged #RespondingToFormChanges
#### Typed Reactive Forms #StrongTyping #CompileTimeChecks #ImprovedRefactoring #FormControl<T> #FormGroup<T> #FormArray<T> #UntypedFormGroup
#### Disabling Controls #DisableMethod #ReadOnlyAttribute #ConditionalDisabling

### Dynamic Forms #FormsFromConfig #MetadataDriven #JSONSchema
#### Creating Controls Dynamically #FormArray #AddingRemovingControls #BasedOnMetadata
#### Conditional Fields #NgIf #ReactiveLogic #ShowingHidingControls #EnablingDisablingControls

### Form Control Value Accessor #CustomFormControls #IntegratingWithAngularForms #ControlValueAccessor #writeValue #registerOnChange #registerOnTouched #setDisabledState #NG_VALUE_ACCESSOR

## HTTP Client #BackendCommunication #DataFetching #APIInteraction #Asynchronous

### HttpClientModule & HttpClient #Service #MakingRequests #RESTful #Observables
#### Request Methods #GET #POST #PUT #DELETE #PATCH #HEAD #OPTIONS #Request #JSONP
#### Typed Responses #Observables #Generics #Interfaces #MappingResponses #PipeOperator #Map
#### Request/Response Configuration #Headers #Params #ResponseType #Observe #ReportProgress #WithCredentials #HttpUrlEncodingCodec
##### Observe Option #body #events #response
##### ResponseType Option #arraybuffer #blob #json #text
#### Error Handling #CatchError Operator #RxJS #HandlingFailures #HttpStatusCode #HttpErrorResponse #RethrowingErrors
#### Immutable Request/Response Objects #CloningRequests #ModifyingHeaders

### Interceptors #Middleware #RequestResponseModification #CrossCuttingConcerns
#### HttpInterceptor Interface #InterceptMethod `(req: HttpRequest<any>, next: HttpHandler) => Observable<HttpEvent<any>>`
#### Use Cases #Authentication (JWT/Token) #Logging #Caching #ErrorHandling #URLManipulation #HeaderModification #LoadingIndicators
#### Providing Interceptors #HTTP_INTERCEPTORS #multiProvider #OrderOfExecution

### Error Handling Strategies #NetworkErrors #BackendErrors #ClientSideErrors
#### CatchError Operator #RxJS #HandlingFailures #ReturningDefaultValue #LoggingError #ShowingUserMessage
#### Global Error Handler #ErrorHandlerClass #CentralizedLogging #ReportingErrors #UserFeedback
#### Retry Logic #RetryOperator #RetryWhenOperator #ExponentialBackoff

### Advanced HTTP #BeyondBasicRequests #FileHandling #Progress
#### Progress Events #FileUpload #DownloadProgress #reportProgress Option #HttpEventType
#### Request Cancellation #Unsubscribe #SwitchMap #TakeUntil #AbortSignal
#### Testing HTTP Requests #HttpClientTestingModule #HttpTestingController #ExpectOne #Flush #MockBackend

## State Management (In-Depth) #ApplicationState #DataFlowPatterns #ComplexityControl

### Services with RxJS Subjects #LocalState #SimpleScenarios #BehaviorSubject #ReplaySubject #AsyncPipe #ManualSubscriptionManagement
#### State Encapsulation Patterns #ReadonlyObservable #PrivateSubject #UpdaterMethods

### NgRx (Redux Pattern) #PredictableState #Scalability #Tooling #DevTools #Ecosystem
#### Store #SingleSourceOfTruth #Dispatch #Select #ofType
#### Actions #Events #StateChanges #ActionCreators `createAction` #Props #ActionGroups `createActionGroup`
#### Reducers #PureFunctions #StateTransitionLogic #OnReducer `on` #createReducer #InitialState #MetaReducers #ImmutabilityHelpers
##### Meta-Reducers #Logging #Hydration #MiddlewareLike
#### Effects #SideEffects #APICalls #AsyncOperations #CreateEffect `createEffect` #ofType #ConcatMap #MergeMap #SwitchMap #ExhaustMap #ErrorHandlingInEffects #NonDispatchingEffects `{dispatch: false}`
#### Selectors #QueryingState #Memoization #Performance #CreateSelector `createSelector` #CreateFeatureSelector `createFeatureSelector` #CombiningSelectors #ProjectorFunction
#### Facades #AbstractionLayer #SimplifyingComponentInteraction #ViewModelLogic #CombiningSelectorsAndDispatch
#### NgRx Entity #ManagingCollections #BoilerplateReduction #EntityAdapter #CRUDOperations #SelectorsForEntities `getSelectors`
#### NgRx ComponentStore #LocalComponentState #Alternative #ScopedState #ImperativeUpdates #Selectors #EffectsMethod #TapResponse
#### NgRx SignalStore #SignalBasedState #FineGrainedReactivity #DeeplyReactive #StoreSlice #Computed #Methods #Effects #Plugins
##### SignalStore Features #withState #withComputed #withMethods #withHooks #rxMethod #patchState
#### NgRx Router Store #ConnectingRouterState #RouterSelectors #TimeTravelDebuggingForRouting
#### NgRx Schematics #GeneratingStoreComponents #BoilerplateReduction

### Signals (Native Angular) #FineGrainedReactivity #Performance #Simplicity #BuiltIn
#### signal() #WritableSignal #StateContainer #Set #Update #Mutate #Equality Function
#### computed() #DerivedState #Memoization #LazyEvaluation #DependenciesTracking
#### effect() #SideEffects #TrackingDependencies #AutoCleanup #ManualCleanup #InjectionContext #allowSignalWrites
##### Effect Cleanup Function #OnDestroyLogic
#### untracked() #ReadingSignalsWithoutTracking
#### Integration #rxjs-interop #fromObservable #toSignal #InitialValue #ErrorHandling #ManualSubscription
#### Signal-based Inputs #input() #input.required() #transform
#### Model Inputs #model() #TwoWayBinding #SimplifiedSyntax
#### Signal Queries #viewChild.signal() #viewChildren.signal() #contentChild.signal() #contentChildren.signal()

## Advanced Angular Features #CuttingEdge #Optimization #Specialized #PlatformFeatures

### Change Detection #UIUpdateMechanism #Performance #HowAngularKnowsWhenToUpdate
#### Zone.js #MonkeyPatching #AsyncTracking #NgZone #RunOutsideAngular #Run #TaskTracking #Microtask #Macrotask
#### Change Detection Strategy #Default (CheckAlways) #OnPush #PerformanceOptimization #WhenOnPushTriggers #ImmutableObjects #Observables+AsyncPipe #Signals #MarkForCheck #DetectChanges
#### Manual Change Detection #ChangeDetectorRef #detectChanges #markForCheck #detach #reattach #checkNoChanges #ApplicationRef.tick()
#### Profiling Change Detection #AngularDevTools #PerformanceTab

### Web Workers #BackgroundThreads #OffloadingComputation #Performance #Parallelism
#### ng generate web-worker #CLIIntegration #WorkerScript #AppIntegration
#### Communication #postMessage #addEventListener #MessageChannel #TransferableObjects #ComlinkLibrary

### Progressive Web Apps (PWA) #AppLikeExperience #Offline #Installable #Reliable #Fast #Engaging
#### @angular/pwa Package #ngAdd #ServiceWorker #ManifestFile #Configuration `ngsw-config.json`
#### Service Workers #Lifecycle #Registration #Installation #Activation #FetchEvents #CachingStrategies #CacheFirst #NetworkFirst #StaleWhileRevalidate #NetworkOnly #CacheOnly
##### Service Worker Communication #SwUpdate Service #CheckingForUpdates #ActivatingUpdates #PushNotifications
#### Web App Manifest #Metadata #Installability #DisplayMode #Icons #ThemeColor #BackgroundColor #PWABuilder

### Server-Side Rendering (SSR) & Hydration #SEO #Performance #Universal #FirstPaint #TTV #TTI
#### @angular/ssr Package #ngAdd #ServerIntegration #NodeJS (Default) #ExpressEngine #Server.ts #main.server.ts
#### How SSR Works #ServerRendering #SendingHTML #ClientTakesOver
#### Hydration #DOMReconciliation #PerformanceBoost #NonDestructive #SkippingInitialRender #TransferState
##### TransferState #PassingDataFromServerToClient #BrowserTransferStateModule #ServerTransferStateModule #StateKey #makeStateKey
#### Prerendering #StaticSiteGeneration #BuildTimeRendering #RoutesFile #GuessRoutes
#### SSR Considerations #Window/Document Access #PlatformId #isPlatformBrowser #isPlatformServer #ThirdPartyLibs #MemoryLeaks

### Internationalization (i18n) & Localization (l10n) #MultipleLanguages #CulturalAdaptation
#### @angular/localize Package #MarkingText `$localize` #Attributes `i18n`, `i18n-attr`
#### Message Extraction #CLICommand `ng extract-i18n` #OutputFormats #XLIFF #XMB #JSON #ARB
#### Translation Files #CreatingTranslations #MergingTranslations
#### Build-time vs Runtime i18n #MultipleBuilds #LocaleData #LoadingTranslationsDynamically
#### Locale ID #SettingLocale #LOCALE_ID Token

### Angular Elements #WebComponents #FrameworkAgnostic #CustomElements #MicroFrontends
#### createCustomElement #PackagingComponents #CustomElementsRegistry #define
#### Usage #SharingComponents #IntegratingWithOtherFrameworks #CMSIntegration
#### Inputs/Outputs Mapping #AttributeMapping #EventMapping
#### Dependency Injection Limitations #InjectorContext

### Micro-Frontends with Angular #ModuleFederation #IndependentDeployment #Scalability
#### Webpack Module Federation #Configuration #ExposingComponents #ConsumingComponents
#### Frameworks #SingleSPA #Nx #IntegrationStrategies

## Testing (In-Depth) #Quality #Reliability #Automation #Confidence

### Unit Testing #IsolatingUnits #FastFeedback #TDD #BDD
#### Tools #Jasmine #Jest #Karma #TestBed #Spectator #ng-mocks
#### TestBed #TestingModule #ComponentFixture #ConfigureTestingModule #CompileComponents #OverrideProvider #ShallowVsDeep
##### TestBed Configuration #Declarations #Imports #Providers #Schemas #NO_ERRORS_SCHEMA #CUSTOM_ELEMENTS_SCHEMA
##### ComponentFixture #componentInstance #nativeElement #debugElement #detectChanges #autoDetectChanges
##### DebugElement #Querying #ByCss #ByDirective #TriggerEventHandler #NativeElementAccess
#### Testing Components #DOMInteraction #InputOutput #Lifecycle #ChangeDetection #MockingDependencies #TestingTemplates #ComponentHarnesses
##### Component Harnesses (@angular/cdk/testing) #AbstractionLayer #RobustTests #MaterialComponentHarnesses #CustomHarnesses
#### Testing Services #DependencyInjection #MockingDependencies #HttpClientTestingModule #Spies #JasmineSpies #JestMocks
##### HttpClientTestingModule #HttpTestingController #ExpectOne #Flush #MockErrorResponse #Verify
#### Testing Pipes #PureFunctions #TransformMethod #ImpurePipes #AsyncPipeTesting
#### Testing Directives #ElementInteraction #HostBindings #HostListeners #TestingAttributeDirectives #TestingStructuralDirectives #MockingTemplateRef #MockingViewContainerRef
#### Code Coverage #Istanbul #Reporting #Thresholds #EnforcingCoverage

### End-to-End (E2E) Testing #UserJourney #RealBrowser #SystemTesting
#### Tools #Protractor (Deprecated) #Cypress #Playwright #WebDriverIO #Comparison
##### Cypress #Architecture #TestRunner #Dashboard #Commands #Assertions #Plugins #RealtimeReloads #TimeTravelDebugging
##### Playwright #Microsoft #CrossBrowser #Headless #API #AutoWaits #Tracing #CodeGeneration
#### Test Structure #Describe #It #BeforeEach #AfterEach #Assertions #PageObjectsModel #AppActions
#### Selectors #LocatingElements #CSS #XPath #DataAttributes #BestPractices #ResilientSelectors
#### Actions #Click #Type #Navigate #Wait #InterceptNetworkRequests #DragDrop #FileUpload
#### Assertions #VerifyingState #Visibility #TextContent #URL #NetworkResponses #ChaiAssertions #JestMatchers
#### Mocking Backend #CypressIntercept #PlaywrightRoute #Fixtures #SimulatingScenarios

### Component Testing (Alternative) #HybridApproach #BrowserEnvironmentTesting
#### Cypress/Playwright Component Testing #MountingComponents #IsolatedTestingInBrowser #FasterThanE2E #MoreRealisticThanUnit

## UI & Styling #LookAndFeel #UserExperience #CSS #DesignSystems

### Component Styles #Encapsulation #ScopedCSS #StyleIsolation
#### ViewEncapsulation Modes #Emulated (Default) #ShadowDOM (Native) #None (Global) #Tradeoffs
#### Special Selectors #`:host` #`:host-context()` #`::ng-deep` (Deprecated/Use with caution) #StylingHostElement #ConditionalHostStyling
#### Global Styles #styles.scss/css #Importing #ConfigurationInAngularJson

### Angular Material #ComponentLibrary #MaterialDesign #Theming #Accessibility #CDK
#### Installation & Setup #ngAdd @angular/material #ChoosingTheme #Typography #BrowserAnimationsModule
#### Using Components #MatButton #MatInput #MatTable #MatDialog #MatSnackBar #MatSidenav #Etc #APIReference
#### Theming #PrebuiltThemes #CustomThemes #Palettes (Primary, Accent, Warn) #Typography #Density #DefiningCustomThemeSCSS
#### CDK (Component Dev Kit) #LowLevelUtilities #Overlays #Portals #Accessibility (Focus Management, LiveAnnouncer) #DragDrop #Scrolling #Layout #Table #TextareaAutosize #Bidi #Platform
##### CDK Portals #DynamicComponentRendering #OverlayIntegration
##### CDK Drag and Drop #Lists #FreeDragging #Handles #Previews #DataTransfer

### CSS Framework Integration #TailwindCSS #Bootstrap #Bulma #Etc
#### Setup #PostCSS #Configuration #TailwindConfigJs #ContentPurging
#### Using Utility Classes #TemplateStyling #ApplyingClassesDynamically `[ngClass]`
#### Purging Unused Styles #Optimization #ProductionBuilds #Safelist

### Animations #Motion #UserFeedback #EngagingUI #DelightfulUX
#### @angular/animations Module #BrowserAnimationsModule #NoopAnimationsModule #Importing
#### Animation DSL #trigger #state #style #transition #animate #keyframes #group #sequence #query #stagger #AnimationMetadata
##### trigger() #BindingToHost `[@triggerName]`
##### state() #DefiningStylesForStates
##### transition() #DefiningAnimationBetweenStates #Wildcard `*` #EnterLeave `:enter` `:leave` #BooleanStates `true => false`
##### animate() #Duration #Delay #EasingFunctions
##### keyframes() #MultiStepAnimations #Offsets
##### group() #ParallelAnimations
##### sequence() #SequentialAnimations
##### query() #AnimatingInnerElements #Optional #Limit
##### stagger() #AnimatingListsWithDelay
#### Reusable Animations #AnimationBuilder #BuildingAnimationsProgrammatically #useAnimation

## Performance Optimization #Speed #Responsiveness #Efficiency #CoreWebVitals

### Lazy Loading Modules/Components #CodeSplitting #InitialLoadTime #ReducingBundleSize
#### loadChildren (Modules) #DynamicImport #RouteBasedLazyLoading
#### loadComponent (Standalone) #DynamicImport #RouteBasedLazyLoading #ComponentLevelSplitting

### Change Detection Optimization #ReducingChecks #OnPush #MinimizingWork
#### Using OnPush Strategy #ImmutableData #Observables+AsyncPipe #Signals #Benefits #Pitfalls
#### Detaching Change Detector #ManualControl #PerformanceCriticalSections #RunOutsideAngular
#### Optimizing Template Expressions #KeepThemSimple #AvoidComplexCalculations #PurePipes

### Build Optimizations #SmallerBundles #FasterBuilds #DeliverySpeed
#### AOT Compilation #Tree Shaking #Minification #Uglification #DeadCodeElimination
#### Differential Loading #ModernBrowserSupport #SmallerPayloadsForModernBrowsers
#### Bundle Analysis #webpack-bundle-analyzer #source-map-explorer #IdentifyingLargeChunks #DuplicateDependencies #OptimizationOpportunities
#### Optimizing Assets #ImageCompression #FontSubsetting #SVGOptimization

### Runtime Performance #EfficientCode #MemoryManagement #SmoothInteractions
#### TrackBy Function #NgFor #EfficientListUpdates #PreventingDOMRecreation #StableIDs
#### Unsubscribing Observables #MemoryLeaks #takeUntil #AsyncPipe #SubscriptionManagementLibraries #tslint-rxjs-subject-unsubscribe-check
#### Using Pure Pipes #Memoization #AvoidingRecalculation #ImpurePipesConsiderations
#### Web Workers #OffloadingTasks #KeepingMainThreadFree #CPUIntensiveTasks
#### Virtual Scrolling #CDKScrolling #RenderingVisibleItemsOnly #LargeLists #PerformanceForLongLists
#### Memoization Techniques #Decorators #PureFunctions #CachingResults

### SSR & Hydration Benefits #TTFB #FCP #SEO #PerceivedPerformance

## Ecosystem & Related Technologies #BeyondCore #Integration #FullStack

### Nx Workspaces #Monorepo #ScalableArchitecture #Tooling #CodeSharing #AffectedCommands
#### Managing Multiple Apps/Libs #CodeSharing #BuildOrchestration #Generators #Executors #DependencyGraph #ConsistentTooling
#### Nx Console #VSCodeExtension #GUIAssistance

### Mobile Development #CrossPlatform #NativeFeel
#### Ionic Framework #HybridApps #WebView #AngularIntegration #Capacitor #Cordova #PWAs #NativeAPIAccessViaPlugins
#### NativeScript #NativeApps #DirectAPI Access (Community driven, less official Angular focus now)

### Backend Integration #FullStack #DataSources #APIs
#### Node.js Frameworks #Express #NestJS (Angular Inspired) #APIEndpoints #TypeScriptBackend
#### Serverless Functions #AWSLambda #AzureFunctions #GoogleCloudFunctions #FirebaseFunctions #Scalability #CostEfficiency
#### GraphQL #AlternativeToREST #ApolloAngular #QueryLanguage #SingleEndpoint #TypedSchema
#### Other Backends #Java (Spring) #Python (Django/Flask) #Ruby (Rails) #.NET #ConnectingToAnyAPI

### Desktop Apps #CrossPlatformDesktop
#### Electron #BuildingDesktopAppsWithWebTech #NodeJSIntegration #AngularInElectron
#### Tauri #RustBased #WebView #SecurityFocus #PerformanceFocus #AlternativeToElectron

## Best Practices & Security #QualityCode #Robustness #Protection #Maintainability

### Coding Standards & Style Guides #Consistency #Readability #Teamwork
#### Angular Style Guide #OfficialRecommendations #FileStructure #NamingConventions #CodingPatterns
#### Linters & Formatters #ESLint #Prettier #Configuration #Automation #EnforcingStandards #ng lint #ng format
##### ESLint Rules for Angular #@angular-eslint/eslint-plugin

### Security Considerations #Vulnerabilities #Protection #OWASP
#### Cross-Site Scripting (XSS) #Sanitization #DomSanitizer #bypassSecurityTrustHtml #TrustedTypes #ContentSecurityPolicy (CSP) #PreventingInjection
#### Cross-Site Request Forgery (CSRF) #TokenValidation #BackendCoordination #SameSiteCookies #DoubleSubmitCookie #SynchronizerTokenPattern
#### Template Injection #AvoidingDynamicTemplates #ServerSideTemplateInjectionRisks
#### Dependency Security #AuditingPackages #NPM Audit #Snyk #Dependabot #KeepingDependenciesUpdated #VulnerabilityScanning
#### Authentication & Authorization #JWT #OAuth2 #OpenIDConnect #RouteGuards #SecureStorage
#### API Security #HTTPS #InputValidation #RateLimiting #SecureHeaders

### Accessibility (a11y) #InclusiveDesign #WCAG #UsabilityForAll
#### Semantic HTML #UsingNativeElementsCorrectly #Landmarks
#### ARIA Attributes #Roles #States #Properties #EnhancingSemanticsForAssistiveTech
#### KeyboardNavigation #FocusManagement #CDKFocusTrap #LogicalFocusOrder #VisibleFocusIndicators
#### Testing Tools #Lighthouse #Axe #ScreenReaders (JAWS, NVDA, VoiceOver) #ManualTesting

### Maintainability & Scalability #LongTermHealth #CodeQuality
#### SOLID Principles #SingleResponsibility #OpenClosed #LiskovSubstitution #InterfaceSegregation #DependencyInversion
#### CleanCode Principles #MeaningfulNames #SmallFunctions #Comments #Formatting #ErrorHandling
#### DesignPatterns #GangOfFour #EnterprisePatterns #ApplyingToAngular (Facades, Adapters, etc.)
#### Code Reviews #Collaboration #QualityImprovement #KnowledgeSharing #PullRequests
#### Documentation #Comments #Readme #Compodoc #Storybook #LivingDocumentation

## Migration & Updates #StayingCurrent #FrameworkEvolution #Maintenance

### Keeping Angular Updated #ng update #VersionManagement #SemanticVersioning
#### @angular/cli #@angular/core #OtherPackages #RxJSUpdates #TypeScriptUpdates
#### Update Guide #OfficialDocumentation #MigrationSteps #AngularUpdateGuideWebsite #AutomatedMigrations

### Understanding Breaking Changes #ReleaseNotes #Deprecations #PlanningUpdates
#### Long-Term Support (LTS) #SupportPolicy #VersionLifecycle #ActiveLTS #MaintenanceLTS

### Migrating Older Apps #Strategies #Refactoring #LegacyCode #Modernization
#### From AngularJS (v1.x) #ngUpgrade (Hybrid Approach) #Rewrite (Often Recommended) #Assessment #Planning
#### Between Major Angular Versions #FollowingGuides #AutomatedMigrations #ManualAdjustments #TestingAfterMigration


