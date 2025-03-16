# I. Introduction to Hibernate

## Understanding ORM (Object-Relational Mapping)

### Defining ORM and its purpose

### Benefits of using ORM frameworks like Hibernate (e.g., productivity, maintainability, portability)

### Limitations of ORM

## Introduction to Hibernate Framework

### What is Hibernate?

### Hibernate Architecture

### Hibernate Features: Persistence, Caching, Transactions

# II. Setting up Hibernate Environment

## Required Dependencies

### Downloading Hibernate libraries (e.g., Core, JPA, ORM)

### Adding Hibernate JARs to your project (e.g., Maven, Gradle, manual inclusion)

## Configuring Hibernate

### `hibernate.cfg.xml` Configuration File

#### Defining Database Connection Properties: `hibernate.connection.driver_class`, `hibernate.connection.url`, `hibernate.connection.username`, `hibernate.connection.password`
```xml
<property name="connection.driver_class">com.mysql.cj.jdbc.Driver</property>
<property name="connection.url">jdbc:mysql://localhost:3306/mydatabase</property>
<property name="connection.username">root</property>
<property name="connection.password">password</property>
```

#### Specifying Dialect: `hibernate.dialect` (e.g., `org.hibernate.dialect.MySQLDialect`)
```xml
<property name="dialect">org.hibernate.dialect.MySQLDialect</property>
```

#### Setting `show_sql` and `format_sql` for Debugging
```xml
<property name="show_sql">true</property>
<property name="format_sql">true</property>
```

#### Mapping Entity Classes: `<mapping class="com.example.entity.User"/>`
```xml
<mapping class="com.example.entity.User"/>
```

### Programmatic Configuration using `Configuration` Class

#### Creating `Configuration` object

#### Setting properties programmatically: `configuration.setProperty("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");`

#### Adding annotated classes: `configuration.addAnnotatedClass(User.class);`

#### Building `SessionFactory`

# III. Hibernate Mapping and Entities

## Creating Persistent Classes (Entities)

### Defining Entity Classes

### Primary Key Mapping

#### Using `@Id` annotation

#### Generating Primary Keys using `@GeneratedValue` (e.g., `GenerationType.IDENTITY`, `GenerationType.AUTO`, `GenerationType.SEQUENCE`)

```java
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;
```

## Mapping Attributes

### Basic Types Mapping (e.g., `String`, `Integer`, `Date`)

### `@Column` annotation: `name`, `nullable`, `unique`, `length`

```java
@Column(name = "first_name", nullable = false, length = 50)
private String firstName;
```

### `@Transient` annotation for non-persistent fields

## Relationship Mapping

### One-to-One Relationship

#### `@OneToOne` annotation

#### `@JoinColumn` annotation to specify foreign key column

### One-to-Many Relationship

#### `@OneToMany` and `@ManyToOne` annotations

####  Using `mappedBy` attribute in `@OneToMany`

### Many-to-Many Relationship

#### `@ManyToMany` annotation

#### `@JoinTable` annotation to define the join table

## Inheritance Mapping

### Table per Class Hierarchy

#### `@Inheritance(strategy = InheritanceType.SINGLE_TABLE)`

#### `@DiscriminatorColumn` and `@DiscriminatorValue` annotations

### Table per Subclass

#### `@Inheritance(strategy = InheritanceType.JOINED)`

### Table per Concrete Class

#### `@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)`

# IV. Hibernate Session Management

## Obtaining a Session

### Using `SessionFactory.openSession()`

### Understanding `SessionFactory` and its role

## Working with Sessions

### Saving Objects: `session.save(object)` and `session.persist(object)`

### Retrieving Objects: `session.get(Class, id)` and `session.load(Class, id)`

### Updating Objects: `session.update(object)` and `session.merge(object)`

### Deleting Objects: `session.delete(object)`

### Using `session.beginTransaction()`, `transaction.commit()`, and `transaction.rollback()`

## Closing a Session

### Ensuring session resources are released: `session.close()`

### Using `try-with-resources` statement for automatic resource management

# V. Hibernate Querying

## HQL (Hibernate Query Language)

### Writing basic HQL queries: `FROM EntityName`

### Using `WHERE` clause: comparison operators, logical operators, `LIKE`, `BETWEEN`, `IN`, `IS NULL`

### Using `ORDER BY` clause: `ASC`, `DESC`

### Using `GROUP BY` and `HAVING` clauses

### Named Parameters: `:parameterName`

### Positional Parameters: `?index`

## Criteria API

### Creating `Criteria` objects: `session.createCriteria(EntityClass.class)`

### Adding restrictions: `Restrictions.eq()`, `Restrictions.gt()`, `Restrictions.like()`

### Ordering results: `Order.asc()`, `Order.desc()`

## Native SQL Queries

### Creating native SQL queries: `session.createSQLQuery(sql)`

### Mapping results to entities: `query.addEntity(EntityClass.class)`

# VI. Transactions and Concurrency

## Understanding Transactions

### ACID Properties (Atomicity, Consistency, Isolation, Durability)

### Transaction Management in Hibernate

#### Using `Transaction` interface

#### Starting, committing, and rolling back transactions

## Concurrency Control

### Optimistic Locking

#### Using `@Version` annotation

#### Handling `OptimisticLockException`

### Pessimistic Locking

#### Using `LockModeType` in queries

# VII. Caching

## First-Level Cache

### Understanding the Session-level cache

### How Hibernate manages objects within a Session

## Second-Level Cache

### Enabling Second-Level Cache

#### Configuring cache provider (e.g., Ehcache, Hazelcast)

####  Using `@Cacheable` and `@Cache` annotations

### Query Cache

#### Enabling Query Cache

####  Invalidating the Query Cache

# VIII. Advanced Hibernate Features

## Interceptors

### Implementing `Interceptor` interface

### Customizing Hibernate behavior

### Auditing with Interceptors

## Events

### Event Listeners

### Implementing event listener interfaces (e.g., `PreInsertEventListener`, `PostUpdateEventListener`)

### Performing actions before and after database operations

## Batch Processing

### Inserting/updating large datasets efficiently

### Using `StatelessSession` for batch operations

# IX. Hibernate with Spring

## Integrating Hibernate with Spring Framework

### Configuring `LocalSessionFactoryBean` in Spring

### Using `HibernateTemplate` (deprecated, but useful for understanding legacy code)

### Using `@Autowired` to inject `SessionFactory`

## Spring Transaction Management with Hibernate

### Using `@Transactional` annotation

### Configuring transaction manager (e.g., `HibernateTransactionManager`)

## Spring Data JPA with Hibernate

### Using Spring Data JPA repositories

### Deriving queries from method names

### Customizing repositories with `@Query`

# X. Hibernate Performance Tuning

## Analyzing Performance Bottlenecks

### Using profiling tools to identify slow queries

### Monitoring database performance

## Optimizing Queries

### Fetching strategies: Eager vs. Lazy loading

#### Using `@Fetch` annotation

### Batch fetching

#### Using `hibernate.default_batch_fetch_size`

### Query Hints

#### Using `setHint()` method to pass database-specific hints

## Caching Strategies

### Choosing appropriate cache regions

### Configuring cache expiration policies

## Connection Pooling

### Configuring connection pool size

### Using connection pool libraries like HikariCP
