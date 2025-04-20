# Hibernate #ORM #Java #Persistence
The root topic covering the Hibernate Object/Relational Mapping framework for Java.

## Introduction to Hibernate & ORM #Intro #ORM #Basics
Fundamental concepts of Object/Relational Mapping and Hibernate's role.
Provides context on why Hibernate is used and the problems it solves.

### What is ORM? #Concept #Definition #Mapping
Object/Relational Mapping bridges the gap between object-oriented programming languages and relational databases.

### Benefits of ORM #Advantages #Productivity #Maintainability
Discusses advantages like reduced development time, database independence, improved maintainability, and performance features (caching).

### What is Hibernate? #Definition #Framework #Java
Hibernate is a popular open-source ORM framework for Java applications.

### Hibernate History & Evolution #History #Versions #Timeline
Overview of Hibernate's development, key releases, and its relationship with standards like JPA.

### JPA vs Hibernate #Comparison #JPA #Standard #API
Explains the Java Persistence API (JPA) as a specification and Hibernate as an implementation, highlighting their relationship and differences.

## Hibernate Architecture #Architecture #Core #Components
Overview of Hibernate's internal structure and key components.

### Core Interfaces #API #Interface #CoreObjects
Central interfaces developers interact with.
    #### SessionFactory #Factory #Core #ThreadSafe #ConfigurationCache
    Factory for creating Session instances. Expensive to create, typically one per application. Caches configuration and metadata.
    #### Session #Core #Context #UnitOfWork #NotThreadSafe
    Primary interface for persistence operations. Represents a single unit of work, manages the persistence context (first-level cache).
    #### Transaction #Core #ACID #DatabaseOp
    API for managing database transactions (begin, commit, rollback).
    #### Query #Core #DataRetrieval #HQL #NativeSQL
    Interface for executing HQL and native SQL queries.
    #### Criteria #Core #DataRetrieval #ProgrammaticQuery #DeprecatedInHibernate5
    Interface for building queries programmatically (largely superseded by JPA Criteria API).
    #### Configuration #Core #Setup #Bootstrap #DeprecatedInHibernate5
    Used for bootstrapping Hibernate, loading configuration files and mappings (largely superseded by `StandardServiceRegistryBuilder`).

### Key Components (Internal) #Internal #Modules #SPI
Internal building blocks and service providers.
    #### ConnectionProvider #Database #ConnectionPooling #SPI
    Manages database connections, often integrates with connection pools.
    #### TransactionFactory #Transaction #Management #SPI
    Factory for creating Transaction instances.
    #### CacheProvider #Caching #Performance #SPI #SecondLevelCache
    SPI for plugging in second-level cache implementations.
    #### Dialect #Database #SQLVariants #Compatibility
    Abstracts database-specific SQL variations, DDL generation, and type mappings.
    #### Service Registry #Services #Configuration #Extensibility #Hibernate5+
    Centralized registry for Hibernate services, introduced for better extensibility and management.

## Configuration #Setup #Configuration #Bootstrap
How to configure Hibernate for an application.

### Configuration Files #Files #XML #Properties #Setup
Methods for externalizing configuration settings.
    #### hibernate.cfg.xml #XML #PrimaryConfig #Standard
    Default XML configuration file for Hibernate-specific settings and mappings.
    #### hibernate.properties #Properties #AlternativeConfig #Simpler
    Alternative properties file format for configuration.
    #### persistence.xml #JPA #Standard #XML #JavaEE
    Standard JPA configuration file, used when operating in JPA mode.

### Programmatic Configuration #Code #JavaConfig #Flexibility #BootstrapAPI
Configuring Hibernate directly in Java code using the Bootstrap API (`StandardServiceRegistryBuilder`).

### Key Configuration Properties #Settings #Database #Behavior #Tuning
Essential properties to configure Hibernate's behavior.
    #### Database Connection Properties #DataSource #JDBC #Credentials #URL
    Settings for driver class, database URL, username, password.
    #### Dialect Configuration #Database #SQL #Compatibility #hibernate.dialect
    Specifies the SQL Dialect for the target database.
    #### Caching Settings #Cache #Performance #L2Cache #QueryCache
    Properties to enable and configure second-level and query caches.
    #### Transaction Management Settings #Transaction #Strategy #JTA #JDBC
    Configuration for transaction factory and coordination (e.g., JTA, JDBC).
    #### Connection Pooling Settings #Pooling #Performance #ResourceManagement #c3p0 #HikariCP
    Integration with connection pooling libraries.
    #### Schema Generation (hibernate.hbm2ddl.auto) #DDL #Schema #Development #Testing
    Controls automatic Data Definition Language (DDL) generation (e.g., create, update, validate, none). Use with caution, especially in production.
    #### Show SQL / Format SQL #Debugging #Logging #SQL #hibernate.show_sql
    Properties to log generated SQL statements to the console.

## Object Relational Mapping (ORM) Concepts #ORM #Mapping #CoreConcept #StateManagement
Core principles behind mapping objects to relational tables.

### Entities / Persistent Objects #POJO #Entity #DomainModel #MappedClass
Java objects (POJOs) that are managed by Hibernate and mapped to database tables.

### Object Identity #PrimaryKey #ID #Equality #DatabaseIdentifier
How Hibernate uniquely identifies objects, typically using a primary key mapped to the `@Id` field.

### Object State & Lifecycle #Lifecycle #StateManagement #PersistenceContext
The different states an entity instance can be in relative to the Session/Persistence Context.
    #### Transient #State #NewObject #Unmanaged
    The object has just been instantiated and is not associated with a Session. No database identity.
    #### Persistent #State #Managed #InSession #Tracked
    The object is associated with an active Session and has a database identity. Changes are tracked and synchronized.
    #### Detached #State #OutOfSession #HasIdentity
    The object was previously persistent but is no longer associated with an active Session. Has a database identity but changes are not tracked.
    #### Removed #State #MarkedForDeletion #InSession
    The object is associated with a Session and scheduled for deletion upon transaction commit.

## Entity Mapping #Mapping #Metadata #Configuration #Annotations #XML
Defining how Java objects correspond to database tables and columns.

### Mapping with Annotations (JPA & Hibernate) #Annotations #JPA #Modern #MetadataInCode
Using annotations directly in entity classes to define mappings (preferred modern approach).
    #### @Entity #Entity #ClassLevel #Required
    Marks a class as a persistent entity.
    #### @Table #Database #Schema #TableName #Optional
    Specifies the primary table for the entity.
    #### @Id #PrimaryKey #Identifier #Required
    Marks the field representing the primary key.
    #### @GeneratedValue #IDGeneration #Strategy #AutoIncrement #Sequence
    Specifies the strategy for generating primary key values.
    #### @Column #Database #Schema #ColumnMapping #Optional
    Specifies mapping for a basic persistent field to a database column (name, length, nullability, etc.).
    #### @Basic #FieldMapping #Default #Optional
    Specifies basic type mapping (often implied). Control fetch type (LAZY/EAGER) for basic types.
    #### @Transient #Ignore #NonPersistent #FieldLevel #MethodLevel
    Marks a field or method that should not be persisted.
    #### @Temporal #Date #Time #Mapping #TemporalType
    Specifies the JDBC type (DATE, TIME, TIMESTAMP) for `java.util.Date` or `java.util.Calendar` fields.
    #### @Lob #LargeObject #BLOB #CLOB #ByteStream #CharacterStream
    Specifies mapping for Large Object types (Binary or Character).
    #### @Enumerated #Enum #Mapping #EnumType
    Specifies how an Enum type is persisted (ORDINAL or STRING).
    #### @Embedded & @Embeddable #Composition #ValueObject #ComponentMapping
    Used for mapping composite value types (embeddable classes) within an entity. `@Embeddable` marks the class, `@Embedded` marks the field in the entity.
    #### @MappedSuperclass #Inheritance #MappingBase #NonEntity
    Designates a class whose mapping information is applied to its entity subclasses, but is not an entity itself.
    #### @AttributeOverride & @AssociationOverride #Inheritance #MappingOverride #EmbeddedOverride
    Used to override mappings defined in `@MappedSuperclass` or `@Embeddable` types.

### Mapping Associations #Relationships #Joins #ForeignKey
Defining relationships between entities (one-to-one, one-to-many, many-to-one, many-to-many).
    #### One-to-One (@OneToOne) #Relation #1to1 #Association
    Maps a one-to-one relationship. Requires careful consideration of ownership and primary key sharing.
    #### One-to-Many (@OneToMany) #Relation #1toM #CollectionValued #Association
    Maps a one-to-many relationship (typically involves a Collection).
    #### Many-to-One (@ManyToOne) #Relation #Mto1 #SingleValued #Association
    Maps a many-to-one relationship (owning side of a bidirectional 1-to-M).
    #### Many-to-Many (@ManyToMany) #Relation #MtoM #CollectionValued #Association
    Maps a many-to-many relationship, usually requiring a join table.
    #### Join Columns (@JoinColumn) #ForeignKey #Mapping #OwnerSide
    Specifies the foreign key column(s) used in an association.
    #### Join Tables (@JoinTable) #ManyToMany #LinkTable #AssociationTable
    Specifies the join table used in a many-to-many association.
    #### Fetch Types (EAGER vs LAZY) #Performance #LoadingStrategy #FetchType
    Controls whether associated entities/collections are loaded immediately (EAGER) or on demand (LAZY). LAZY is generally preferred.
    #### Cascade Types #Operations #Propagation #Lifecycle #CascadeType
    Defines which persistence operations (persist, merge, remove, refresh, detach) on the owning entity should cascade to the associated entity.

### Mapping Inheritance #Inheritance #Strategy #Polymorphism
Strategies for mapping class hierarchies to database tables.
    #### Single Table Strategy (@Inheritance(strategy=SINGLE_TABLE)) #Strategy #Discriminator #Default
    Maps all classes in the hierarchy to a single table, using a discriminator column to distinguish types.
    #### Joined Subclass Strategy (@Inheritance(strategy=JOINED)) #Strategy #Joins #Normalization
    Maps each class to its own table, with subclasses containing only their specific fields and a foreign key to the superclass table. Requires joins.
    #### Table Per Class Strategy (@Inheritance(strategy=TABLE_PER_CLASS)) #Strategy #Unions #NoJoins #NotRecommendedGenerally
    Maps each concrete class to its own table, including inherited fields. Leads to complex polymorphic queries (UNIONs) and potential schema issues.

### Mapping Collections #Collections #List #Set #Map #Bag #ElementCollection
Mapping collections of basic types or embeddable objects.
    #### @ElementCollection #ValueTypes #Collections #NonEntityCollection
    Maps collections of non-entity types (basic types or embeddables) stored in a separate table.
    #### @OrderColumn, @OrderBy #Ordering #Collections #ListOrder #SQLOrder
    Specifies ordering for lists or collections (`@OrderColumn` for DB column, `@OrderBy` for HQL/SQL ORDER BY clause).
    #### @MapKey, @MapKeyColumn, @MapKeyJoinColumn #Map #Mapping #KeyMapping
    Annotations for specifying how the key of a `java.util.Map` is mapped.

### Mapping with XML (hbm.xml) #XML #Legacy #Alternative #ExternalMetadata
Defining mappings in separate XML files (`.hbm.xml`). Older approach, still supported.
    #### <hibernate-mapping> #RootElement #XMLFile
    Root element of an `hbm.xml` file.
    #### <class> #EntityMapping #XMLTag
    Maps an entity class to a table.
    #### <id> #PrimaryKey #XMLTag
    Maps the identifier property.
    #### <property> #FieldMapping #XMLTag
    Maps a basic property.
    #### <many-to-one>, <one-to-many>, <one-to-one>, <many-to-many> #Associations #XMLTag
    XML tags for mapping associations.
    #### <component> #EmbeddedObject #XMLTag #ValueObject
    Maps an embedded/component class.
    #### <subclass>, <joined-subclass>, <union-subclass> #Inheritance #XMLTag
    XML tags for mapping inheritance hierarchies.

## Session Management #Session #Context #UnitOfWork #Lifecycle
Managing the Hibernate Session, which represents the interaction with the database.

### SessionFactory #Singleton #ThreadSafe #ConfigurationCache #Heavyweight
The factory responsible for creating Sessions. It's heavyweight and thread-safe, typically created once per application.

#### Building a SessionFactory #Bootstrap #Configuration #ServiceRegistry
Process of creating the SessionFactory from configuration (XML, properties, or programmatic).

### Session #Interface #WorkUnit #NotThreadSafe #Lightweight
The main runtime interface between the application and Hibernate. It's lightweight and not thread-safe. Should be short-lived.

#### Obtaining a Session #OpenSession #GetCurrentSession #FactoryMethod
How to get a Session instance from the SessionFactory (`openSession()`, `getCurrentSession()`).
#### Session Scope & Context #RequestScope #ThreadLocal #ContextualSession #JTA
Strategies for managing the lifecycle and scope of a Session (e.g., thread-local pattern, integration with frameworks like Spring or JTA).
#### Managing the Session Lifecycle #Open #Close #Flush #Clear #Evict
Operations like opening, closing, flushing changes to the DB, clearing the session cache, and evicting specific objects.

### Persistence Context #Cache #Tracking #ManagedEntities #FirstLevelCache
The cache associated with a Session, holding managed entity instances. Hibernate synchronizes object state with the database based on this context.

### CRUD Operations #DataManipulation #BasicOps #SessionAPI
Core operations for creating, reading, updating, and deleting entities using the Session API.
    #### save() #Create #Persist #HibernateAPI #ReturnsID
    Persists a transient instance, assigning an identifier. Hibernate specific.
    #### persist() #Create #JPA #Persist #VoidReturn #Standard
    JPA equivalent of `save()`. Makes a transient instance persistent.
    #### update() #Update #Detached #HibernateAPI #Reattach
    Re-attaches a detached object to the session, marking it for update. Throws exception if another instance with same ID is already in session.
    #### merge() #Update #Detached #JPA #ReturnsManagedCopy #Standard
    Copies the state of the detached object onto a managed instance (loading it if necessary) and returns the managed instance. Preferred over `update()`.
    #### saveOrUpdate() #CreateOrUpdate #Convenience #HibernateAPI
    Either `save()` or `update()` based on the object's state/identifier. Hibernate specific.
    #### delete() #Delete #Remove #HibernateAPI
    Removes an object instance (can be persistent or detached).
    #### remove() #Delete #JPA #Remove #RequiresManaged #Standard
    JPA equivalent of `delete()`. Requires the instance to be managed/persistent.
    #### get() #Retrieve #ByID #NullIfNotFound #DatabaseHit
    Retrieves an entity by its ID. Returns null if not found. Hits the database if not in L1 cache.
    #### load() #Retrieve #ByID #Proxy #ExceptionIfNotFound #LazyLoad
    Retrieves an entity by its ID. Returns a proxy without hitting the database initially. Throws `ObjectNotFoundException` if accessed and not found.

## Transaction Management #Transaction #ACID #Consistency #Concurrency
Ensuring data integrity through atomic units of work (transactions).

### ACID Properties #Atomicity #Consistency #Isolation #Durability #DatabaseTheory
The fundamental properties guaranteed by database transactions.

### Transaction Interface #API #Begin #Commit #Rollback #SessionAPI
Hibernate's `Transaction` interface for programmatically controlling transaction boundaries.

### Transaction Demarcation #Boundaries #Management #Scope
Defining the start and end points of a transaction.
    #### Programmatic Transaction Management #Manual #CodeControl #TryCatchFinally
    Manually controlling transactions using the `Transaction` API in code. Requires careful handling.
    #### Declarative Transaction Management (JTA, Spring) #AOP #Annotations #Configuration #BestPractice
    Using annotations (`@Transactional`) or configuration to manage transactions, typically via Spring or JTA (Java Transaction API) in Java EE environments. Preferred approach.

### Concurrency Control & Locking #Concurrency #Isolation #DataIntegrity #Pessimistic #Optimistic
Mechanisms to handle simultaneous access to data.
    #### Optimistic Locking (@Version) #Versioning #NoLocks #ConflictDetection #Timestamp #VersionNumber
    Assumes conflicts are rare. Uses a version number or timestamp column to detect concurrent modifications during update/delete. Throws `StaleObjectStateException`.
    #### Pessimistic Locking (LockMode) #DatabaseLocks #Exclusive #Shared #SelectForUpdate
    Acquires database-level locks (shared or exclusive) when data is read, preventing others from modifying or sometimes even reading it. Can lead to deadlocks and reduce concurrency. Uses `Session.lock()` or query hints.

## Querying Data #DataRetrieval #Querying #Search #HQL #Criteria #SQL
Different ways to retrieve data from the database using Hibernate.

### Hibernate Query Language (HQL) #HQL #ObjectOriented #SQLAlternative #Portable
An object-oriented query language, similar to SQL but operates on entities and properties instead of tables and columns.
    #### Syntax and Structure #Select #From #Where #GroupBy #OrderBy #JPQLSimilar
    Basic HQL query structure. Very similar to JPA Query Language (JPQL).
    #### Joins (Inner, Left, Right, Fetch) #Associations #DataFetching #Performance
    Specifying how to join associated entities in queries. `FETCH JOIN` allows initializing associations within the query.
    #### Parameter Binding #Security #NamedParameters #PositionalParameters #InjectionPrevention
    Using named (`:paramName`) or positional (`?1`) parameters to safely pass values into queries. Prevents SQL injection.
    #### Aggregate Functions #Count #Sum #Avg #Min #Max #Reporting
    Functions like `count()`, `sum()`, `avg()`, `min()`, `max()` for data aggregation.
    #### Projections #SelectingSpecificFields #DTOs #ConstructorExpression #Performance
    Selecting specific properties or using constructor expressions to return DTOs or `Object[]` instead of full entities.
    #### Bulk Updates and Deletes #BatchOperations #Performance #ExecuteUpdate
    Performing `UPDATE` or `DELETE` operations directly in the database using HQL for efficiency, bypassing the session cache.
    #### Named Queries #Reusable #Precompiled #Performance #Annotations #XML
    Defining queries statically (in annotations or XML) and referencing them by name. Often parsed/validated at startup.

### JPA Criteria API #Criteria #Programmatic #TypeSafe #BuilderPattern #JPAStandard
A programmatic, type-safe way to build queries using a builder pattern API. Part of the JPA standard.
    #### Creating Criteria Queries #CriteriaBuilder #CriteriaQuery #Root
    Using `CriteriaBuilder` to create `CriteriaQuery`, `CriteriaUpdate`, `CriteriaDelete` objects.
    #### Adding Restrictions (Predicates) #WhereClause #Filtering #Expressions #LogicalOperators
    Building the `WHERE` clause using `Predicate` objects created via `CriteriaBuilder`.
    #### Ordering Results #OrderBy #Sorting #Asc #Desc
    Specifying the `ORDER BY` clause using `Order` objects.
    #### Projections #SelectingFields #Tuple #DTO #Construct #Multiselect
    Selecting specific attributes, potentially into `Tuple` objects or DTOs via `construct()`.
    #### Grouping and Aggregations #GroupBy #Having #Count #Sum #AggregateFunctions
    Building `GROUP BY` and `HAVING` clauses, using aggregate functions.
    #### Joins #FetchingAssociations #TypeSafeJoins #Join #Fetch
    Creating type-safe joins between entities, including fetch joins.
    #### Metamodel API #StaticTyping #CompileTimeCheck #TypeSafety #Attribute
    Using a statically generated metamodel (`Entity_` classes) to refer to entity attributes in a type-safe manner, enabling
 compile-time checks.

### Native SQL Queries #NativeSQL #DatabaseSpecific #Performance #Legacy #StoredProcedures
Executing raw SQL queries directly against the database. Useful for database-specific features or complex queries not easily expressed in HQL/Criteria.
    #### Creating Native Queries #createNativeQuery #SQLString
    Using `Session.createNativeQuery()` with a plain SQL string.
    #### Scalar Results #RawData #Columns #ObjectArray #BasicTypes
    Retrieving raw column values, typically as `Object[]` or lists of basic types.
    #### Entity Results #MappingToEntities #ResultMapping #SQLResultSetMapping
    Mapping the results of a native SQL query back to managed entity instances. Requires careful column aliasing or `@SqlResultSetMapping`.
    #### Named Native Queries #Reusable #SQL #Annotations #XML
    Defining native SQL queries statically (in annotations or XML) and referencing them by name.
    #### Stored Procedure Calls #DatabaseLogic #Procedures #Functions #StoredProcedureQuery
    Executing database stored procedures and functions.

### Filters #DynamicFiltering #DataPartitioning #Security #CrossCutting
Defining dynamic filter criteria that can be enabled/disabled on a Session. Useful for multi-tenancy or soft deletes.
    #### Defining Filters (@FilterDef, @Filter) #Configuration #Annotations #XML
    Defining filter names, parameters, and the default condition using annotations (`@FilterDef`, `@Filter`) or XML.
    #### Enabling Filters (Session.enableFilter) #Runtime #Parameters #Activation
    Activating a defined filter on a specific Session instance, potentially passing parameters.

## Caching Mechanisms #Caching #Performance #Optimization #DataLocality
Strategies Hibernate uses to minimize database access and improve performance.

### First-Level Cache (Session Cache) #Mandatory #SessionScope #Transactional #IdentityMap
The mandatory cache associated with a `Session`. Stores entities loaded or saved within the current session/transaction. Ensures object identity.
    #### How it works #IdentityMap #RepeatableRead #TransactionalWriteBehind
    Acts as an identity map; tracks changes to persistent objects for dirty checking and transactional write-behind.
    #### Managing the Session Cache (evict, clear, contains) #Control #MemoryManagement #API
    APIs to explicitly remove objects (`evict`), clear the entire cache (`clear`), or check for existence (`contains`).

### Second-Level Cache (SessionFactory Cache) #Optional #Global #CrossSession #Pluggable
An optional cache shared across multiple Sessions, associated with the `SessionFactory`. Improves performance for frequently read, infrequently modified data.
    #### Architecture and Providers (EhCache, Infinispan, Hazelcast, JCache) #Pluggable #Providers #SPI #Integration
    Pluggable architecture allowing different caching libraries (implementing `RegionFactory`) to be used.
    #### Configuration #Enable #ProviderSelection #Properties #hibernate.cache.*
    Requires explicit configuration to enable, choose a provider, and set cache properties.
    #### Cacheable Entities and Collections (@Cacheable, @Cache) #Annotations #Configuration #Granularity
    Marking entities and collections as eligible for L2 caching using annotations or XML.
    #### Cache Concurrency Strategies #ReadOnly #ReadWrite #NonstrictReadWrite #Transactional #IsolationTradeoff
    Defines guarantees for cached data consistency (e.g., READ_ONLY, READ_WRITE, NONSTRICT_READ_WRITE, TRANSACTIONAL). Affects performance and consistency.
    #### Cache Regions #Granularity #Configuration #Tuning
    Logical grouping of cached data (e.g., entity region, collection region, query region) allowing separate configuration per region.

### Query Cache #Optional #QueryResultCaching #Performance #HQL #Criteria
An optional cache that stores the results of specific queries (identifiers and scalar values).
    #### Enabling Query Cache #Configuration #Flag #hibernate.cache.use_query_cache
    Requires a global flag to be enabled in configuration.
    #### Caching Specific Queries #QueryHints #setCacheable #Programmatic
    Individual queries must be marked as cacheable using `Query.setCacheable(true)`.
    #### Cache Regions for Queries #Configuration #Optional
    Query results can optionally be stored in specific named cache regions.
    #### Invalidation #TimestampBased #DataChanges #AutomaticInvalidation
    Query cache results are automatically invalidated when tables involved in the query are modified. Relies on timestamps.

## Advanced Topics #Advanced #Features #Concepts #EdgeCases
More complex features and concepts in Hibernate.

### Hibernate Events & Interceptors #Lifecycle #Callbacks #CustomLogic #AOPLike
Mechanisms for reacting to events within Hibernate's lifecycle or intercepting operations.
    #### Event Listener Architecture #Pluggable #CallbackAPI #ServiceRegistry #Standardized
    A flexible, standardized way (since Hibernate 3) to hook into specific events (e.g., pre-insert, post-load) by registering listeners.
    #### Interceptors #SessionScoped #Transient #StateInspection #LegacyStyle
    An older mechanism, allowing interception of Session operations. Can be Session-scoped or SessionFactory-scoped. Less flexible than listeners.

### Hibernate Envers #Auditing #Versioning #HistoryTracking #DataChanges
A module for automatically auditing (tracking history of) changes to persistent entities.

### Batch Processing #BulkOperations #Performance #Memory #JDBCBatching
Techniques for efficiently processing large numbers of inserts, updates, or deletes.
    #### Batch Inserts/Updates/Deletes #JDBCBatching #SessionManagement #FlushAndClear
    Configuring JDBC batch size and managing the Session (`flush()`, `clear()`) periodically to control memory usage.
    #### StatelessSession #LowOverhead #BulkData #BypassCache
    An alternative Session interface (`StatelessSession`) that bypasses L1/L2 caches and lifecycle events, designed for bulk operations.

### Multi-Tenancy #SaaS #DataIsolation #Strategy #Architecture
Support for applications serving multiple tenants (customers) with varying degrees of data isolation.
    #### Separate Database #Strategy #Isolation #HighCost
    Each tenant has their own database instance.
    #### Separate Schema #Strategy #Isolation #ModerateCost
    Tenants share a database instance but use separate schemas.
    #### Discriminator Column (Shared Schema, Shared Table) #Strategy #SharedSchema #LowCost #ComplexQueries
    Tenants share tables, with a tenant identifier column used to partition data. Hibernate helps manage this.

### Connection Handling and Pooling #DataSource #Efficiency #ResourceManagement #DatabaseConnection
Managing database connections efficiently.
    #### Built-in Pooling (Deprecated) #Legacy #NotRecommended
    Hibernate's rudimentary built-in pooling is generally not recommended for production.
    #### Third-party Pooling (HikariCP, c3p0, DBCP2) #Integration #BestPractice #Performance #Reliability
    Integrating robust, production-grade connection pooling libraries is the standard practice.

### Custom Types #UserTypes #CompositeUserTypes #MappingExtensions #CustomLogic
Implementing custom logic for mapping specific Java types to database columns when standard mappings are insufficient.

### Fetching Strategies #Performance #DataLoading #NPlusOne
Controlling how and when associated entities and collections are loaded from the database.
    #### Select Fetching (Default) #NPlusOneProblem #LazyLoadingDefault
    Default behavior for lazy associations: issues a separate SELECT statement when the association is first accessed. Can lead to N+1 query problems.
    #### Join Fetching #EagerLoading #HQL #Criteria #SingleQuery
    Using `JOIN FETCH` in HQL/Criteria or `FetchType.EAGER` to load associations in the same query as the owning entity.
    #### Subselect Fetching #Collections #Performance #TwoQueries
    Loads collections for multiple owning entities loaded previously, using a single subselect query. Triggered by `@Fetch(FetchMode.SUBSELECT)`.
    #### Batch Fetching (@BatchSize) #Collections #Proxies #Performance #MultipleQueriesBatched
    Loads collections or proxies for multiple owning entities in batches using `IN` clauses. Configured via `@BatchSize` annotation. Reduces N+1 severity.

### Validations (Bean Validation / JSR 380/349) #DataIntegrity #Constraints #Integration #Annotations
Integrating with Bean Validation API for automatic data validation before persistence operations.

## Integration with Other Technologies #Integration #Ecosystem #Frameworks #JavaEE
Using Hibernate within broader application contexts and frameworks.

### Hibernate & Spring Framework #Spring #IoC #DeclarativeTx #SpringDataJPA
Leveraging Spring for configuration, transaction management, and data access simplification.
    #### SessionFactory Configuration in Spring #Bean #XML #JavaConfig #DependencyInjection
    Managing the `SessionFactory` or JPA `EntityManagerFactory` as a Spring bean.
    #### Declarative Transaction Management (@Transactional) #AOP #SpringTX #SimplifiedTx
    Using Spring's `@Transactional` annotation for easy transaction demarcation.
    #### Exception Translation #DataAccessException #SpringDAO #PortableExceptions
    Spring's mechanism to convert Hibernate-specific exceptions into its portable `DataAccessException` hierarchy.
    #### Spring Data JPA #RepositoryPattern #Abstraction #BoilerplateReduction #Convenience
    A Spring module that further simplifies data access layers by providing repository abstractions on top of JPA/Hibernate.

### Hibernate & Java EE / Jakarta EE #JEE #JPA #JTA #CDI
Using Hibernate in Java EE / Jakarta EE environments.
    #### JTA Integration #ContainerManagedTransactions #CMT #ApplicationServer
    Integrating with Java Transaction API for container-managed transactions.
    #### CDI Integration #DependencyInjection #Contexts #JavaEEStandard
    Using Contexts and Dependency Injection (CDI) to manage Hibernate components like the `EntityManager`.

### Build Tool Integration (Maven, Gradle) #Build #Dependencies #Plugins #Lifecycle
Managing Hibernate dependencies and potential build-time tasks (like metamodel generation) using Maven or Gradle.

## Performance Tuning & Best Practices #Performance #Optimization #BestPractice #Efficiency
Tips and techniques for optimizing Hibernate applications and avoiding common issues.

### Identifying Performance Bottlenecks #Profiling #Logging #SlowQueries #Statistics
Using tools and techniques like SQL logging, Hibernate Statistics, and profiling tools (e.g., JProfiler, VisualVM) to find performance issues.

### Optimizing Fetching Strategies #LazyLoading #EagerLoading #FetchProfiles #NPlusOnePrevention
Choosing appropriate fetch strategies (LAZY vs EAGER, JOIN vs SELECT vs SUBSELECT vs BATCH) to avoid N+1 problems and unnecessary data loading.

### Effective Caching #L1Cache #L2Cache #QueryCache #StrategySelection #CacheTuning
Leveraging first-level, second-level, and query caches appropriately. Choosing correct concurrency strategies and tuning cache settings.

### Batch Processing Techniques #BulkData #StatelessSession #JDBCBatchSize
Using batching for bulk operations to improve performance.

### Query Optimization (HQL, SQL) #Indexing #EfficientQueries #Projections #DatabaseTuning
Writing efficient HQL/Criteria queries, ensuring proper database indexes exist, using projections (DTOs) when full entities aren't needed.

### Connection Pool Tuning #PoolSize #Timeouts #Configuration #ResourceLeaks
Optimally configuring the database connection pool (size, timeouts, validation queries).

### Avoiding Common Pitfalls #NPlusOneProblem #SessionLeaks #LazyInitializationException #LargeSessions
Recognizing and preventing frequent issues like N+1 queries, forgetting to close Sessions, accessing lazy associations outside a Session, and holding too many objects in the Session.

### Using DTOs (Data Transfer Objects) #Projections #Performance #Decoupling #APIContracts
Using DTOs returned from queries (via projections) instead of entities for read-only operations or API boundaries to reduce data loaded and decouple layers.

### Schema Design Considerations #Indexing #Normalization #Denormalization #DatabaseDesign
How database schema design impacts ORM performance (e.g., appropriate indexing, impact of normalization vs. denormalization).

## Hibernate Tools #Tooling #Development #Utilities #Productivity
Utilities provided by the Hibernate project to aid development.

### Schema Generation/Export #DDL #DatabaseSetup #hbm2ddl #Flyway #Liquibase
Tools (`hbm2ddl`) to generate database schema (DDL) from mappings. Often used for testing or initial setup, but migration tools (Flyway, Liquibase) are preferred for production evolution.

### Reverse Engineering #DatabaseToCode #EntityGeneration #hbm2java
Tools (`hbm2java`, IDE plugins) to generate entity classes and mapping files from an existing database schema.

### IDE Integration (Eclipse, IntelliJ) #Plugins #Productivity #CodeCompletion #Console
IDE plugins (e.g., JBoss Tools for Eclipse, built-in support in IntelliJ IDEA Ultimate) providing features like HQL editors, configuration wizards, and mapping assistance.
