# Database Design #Overview #DataManagement #InformationSystems
The process of producing a detailed data model of a database. This logical data model contains all the needed logical and physical design choices and physical storage parameters needed to generate a design in a data definition language, which can then be used to create a database.

## Introduction to Databases and Design #Fundamentals #Basics #Concepts
Core concepts and the rationale behind database design.

### What is a Database? #Definition #CoreConcept
Collection of organized information or data.

### What is a Database Management System (DBMS)? #Software #Tools #Definition
Software used to create, manage, and query databases (e.g., MySQL, PostgreSQL, Oracle, SQL Server, MongoDB).

### Goals of Database Design #Objectives #Principles #Quality
Ensuring data integrity, minimizing redundancy, enabling efficient data retrieval, ensuring scalability and flexibility.

### Database Development Life Cycle (DDLC) #Process #Methodology #Lifecycle
Phases involved: Planning, Requirements Gathering, Conceptual Design, Logical Design, Physical Design, Implementation, Testing, Maintenance.

## Requirements Analysis #Planning #Analysis #DataGathering
Understanding the data needs of the system or application.

### Identifying User Needs #Stakeholders #Interviews #UseCases
Gathering information from users, stakeholders, and existing systems.

### Functional Requirements #Features #Operations #SystemBehavior
What the database system must *do* (e.g., store customer orders, generate reports).

### Non-Functional Requirements #Constraints #QualityAttributes #Performance
Performance (speed, throughput), security, reliability, scalability, availability criteria.

### Data Requirements #InformationNeeds #DataModeling #Attributes
Specific data elements, relationships, and constraints needed.

### Documentation #Specifications #DataDictionary #RequirementsDocument
Creating formal documents outlining the gathered requirements.

## Conceptual Database Design #Modeling #Abstraction #ERD
Creating a high-level model of the data, independent of any specific DBMS.

### Entity-Relationship (ER) Model #ERM #CoreModel #Diagramming
A graphical representation of entities and their relationships.

#### Entities #Objects #Tables #Nouns
Real-world objects or concepts about which data is stored (e.g., Customer, Product, Order).

#### Attributes #Properties #Fields #Columns
Characteristics or properties of entities (e.g., CustomerName, ProductPrice, OrderDate).
##### Types of Attributes #AttributeVariations #Details
Simple, Composite, Single-Valued, Multi-Valued, Derived, Key Attributes.

#### Relationships #Associations #Links #Verbs
Connections or associations between entities (e.g., a Customer *places* an Order).
##### Relationship Degree #Cardinality #Participation
Number of participating entity types (Unary, Binary, Ternary).
##### Cardinality Ratios #Constraints #Mapping #Rules
Specifies the number of instances of one entity that can relate to instances of another entity (1:1, 1:N, M:N).
##### Participation Constraints #Optionality #Mandatory #Total #Partial
Specifies whether an entity instance *must* participate in a relationship (Total/Mandatory) or *can* optionally participate (Partial/Optional).

### Enhanced Entity-Relationship (EER) Model #EERM #AdvancedModeling #Extensions
Extends the basic ER model with concepts like specialization, generalization, and aggregation.

#### Specialization/Generalization #ISA #Inheritance #Hierarchy
Modeling subclasses and superclasses (e.g., Employee is specialized into SalariedEmployee, HourlyEmployee).
##### Constraints on Specialization/Generalization #Rules #Overlapping #Disjoint #Total #Partial
Disjoint vs. Overlapping, Total vs. Partial.

#### Aggregation #RelationshipOnRelationship #Abstraction
Modeling a relationship as an entity.

#### Composition #RelationshipOnRelationship #StrongOwnership
Similar to aggregation but implies stronger ownership or existence dependency.

### Conceptual Design Tools #Software #CASE #ModelingTools
Software used for creating ER/EER diagrams (e.g., Lucidchart, draw.io, ERwin).

## Logical Database Design #RelationalModel #Mapping #DBMSIndependent
Translating the conceptual model into a logical structure based on a specific data model (commonly the relational model), but still independent of the physical storage details or specific DBMS.

### The Relational Model #Theory #Codd #Foundation
Based on set theory and predicate logic; data is stored in tables (relations).

#### Relations (Tables) #DataStructure #Collection
Two-dimensional structure with rows and columns.

#### Tuples (Rows/Records) #Instances #DataEntries
Represent individual instances of an entity or relationship.

#### Attributes (Columns/Fields) #Properties #DataElements
Represent properties or characteristics, drawn from domains.

#### Domains #DataTypes #Constraints #ValidValues
Set of permissible values for an attribute.

#### Keys #Identifiers #Constraints #Relationships
Attributes used to uniquely identify tuples and establish links between tables.
##### Super Key #Uniqueness #IdentifierSet
A set of one or more attributes that, taken collectively, uniquely identifies a tuple.
##### Candidate Key #MinimalSuperKey #Identifier
A minimal super key (no proper subset is also a super key).
##### Primary Key #MainIdentifier #PK #Constraint
The candidate key chosen to uniquely identify tuples within a relation. Cannot be NULL.
##### Alternate Key #OtherCandidateKeys
Candidate keys not chosen as the primary key.
##### Foreign Key #ReferentialIntegrity #FK #RelationshipLink
An attribute (or set of attributes) in one relation that refers to the primary key of another (or the same) relation. Used to enforce relationships.

### Mapping ER/EER to Relational Model #Translation #Rules #SchemaGeneration
Systematic process for converting conceptual schemas into relational schemas.
#### Mapping Entities #TableCreation #PKAssignment
Strong entities become tables with their attributes; primary key identified.
#### Mapping Weak Entities #DependentTable #FKCreation
Weak entities become tables including the primary key of the owner entity as a foreign key (part of the weak entity's primary key).
#### Mapping Relationship Types #FKPlacement #RelationshipTable
Mapping 1:1, 1:N, M:N relationships, often involving foreign keys or separate link tables for M:N.
#### Mapping Attributes #ColumnCreation #DataTypeSelection
Mapping simple, composite, multi-valued attributes (often requires separate tables for multi-valued).
#### Mapping Specialization/Generalization #HierarchyMapping #Options
Different strategies: separate tables per subclass, single table with type attribute, etc.

### Integrity Constraints #Rules #DataAccuracy #Consistency
Rules enforced by the DBMS to ensure data accuracy and consistency.
#### Entity Integrity #PrimaryKeyRule #NotNull
Ensures that the primary key value is never NULL.
#### Referential Integrity #ForeignKeyRule #Consistency
Ensures that a foreign key value must either match a primary key value in the referenced table or be NULL (if allowed). Defines actions on update/delete (Cascade, Set Null, Restrict).
#### Domain Constraints #DataTypeRule #ValueRange
Ensures attribute values are from the corresponding domain (data type, checks, ranges).
#### Key Constraints #UniquenessRule
Ensures uniqueness of candidate and primary keys.
#### Assertions and Triggers #BusinessRules #CustomConstraints #ProceduralLogic
More complex, user-defined rules.

## Normalization #DataIntegrity #RedundancyReduction #Optimization
Process of organizing columns and tables in a relational database to minimize data redundancy and improve data integrity.

### Functional Dependencies (FDs) #Dependencies #Rules #Relationships
A constraint between two sets of attributes in a relation. X -> Y means the value of X uniquely determines the value of Y.

### Normal Forms #Levels #Standards #Decomposition
A series of steps or levels to achieve normalization.
#### First Normal Form (1NF) #Atomicity #BasicRequirement
All attribute values must be atomic (indivisible); no repeating groups or multi-valued attributes within a single column.
#### Second Normal Form (2NF) #FullDependency #PKBased
Must be in 1NF and every non-prime attribute must be fully functionally dependent on the entire primary key (no partial dependencies). Applies to relations with composite primary keys.
#### Third Normal Form (3NF) #TransitiveDependency #CommonGoal
Must be in 2NF and no non-prime attribute should be transitively dependent on the primary key (dependencies should be direct).
#### Boyce-Codd Normal Form (BCNF) #Strict3NF #Determinants
A stricter version of 3NF. For every non-trivial functional dependency X -> Y, X must be a super key.
#### Higher Normal Forms (4NF, 5NF, DKNF) #AdvancedNormalization #Multivalued #Join
Addressing multi-valued dependencies (4NF) and join dependencies (5NF). Domain-Key Normal Form (DKNF) is the theoretical ideal.

### Normalization Process #Decomposition #Analysis #Steps
Identifying FDs, identifying keys, decomposing relations to eliminate anomalies (insertion, deletion, update).

### Denormalization #Performance #Tradeoffs #RedundancyIntroduction
Intentionally introducing redundancy to improve query performance, often done after normalization. Requires careful consideration of trade-offs.

## Physical Database Design #Implementation #Storage #DBMSpecific
Deciding on the physical storage structures and access methods for the database, specific to the chosen DBMS.

### Mapping Logical to Physical #Translation #ImplementationDetails
Converting the logical schema (tables, columns, constraints) into physical storage specifications.

### Choosing Data Types #StorageSize #Performance #Constraints
Selecting appropriate DBMS-specific data types for columns (e.g., INT, VARCHAR, DATE, BLOB).

### File Organization #StorageStructure #DataAccess
How data is physically stored on disk.
#### Heap Files #Unordered #Simple
Records stored in no particular order.
#### Sequential Files #Ordered #Sorting
Records stored in order based on some key field.
#### Hashed Files #Hashing #DirectAccess
Records stored based on a hash function applied to a key field.
#### Clustered Files #DataClustering #CoLocation
Storing related records from different tables close together physically.

### Indexing Strategies #PerformanceTuning #DataAccessPaths #Optimization
Creating data structures (indexes) to speed up data retrieval operations.
#### Index Concepts #Pointers #Lookup #Speed
Data structures that store column values and pointers to the corresponding rows.
#### Types of Indexes #Variations #Structures
##### B-Trees / B+ Trees #TreeBased #Balanced #Common
Standard tree-based index structures used in most relational databases. B+ trees often preferred for range queries.
##### Hash Indexes #HashingBased #EqualityLookup
Efficient for equality lookups but not range queries.
##### Clustered Indexes #PhysicalOrdering #PrimaryKey
Determines the physical order of data in the table. Usually only one per table (often on the primary key).
##### Non-Clustered Indexes (Secondary Indexes) #SeparateStructure #Pointers
Indexes where the logical order does not match the physical storage order. Multiple allowed per table.
##### Bitmap Indexes #LowCardinality #Warehousing
Efficient for columns with few distinct values.
##### Full-Text Indexes #TextSearch #Keywords
Specialized indexes for searching text data.
#### Index Selection #WhichColumns #Tradeoffs #MaintenanceCost
Choosing which columns to index based on query patterns, selectivity, and maintenance overhead.

### Disk Space Estimation #Sizing #CapacityPlanning #StorageCalculation
Calculating the required storage space for tables, indexes, and overhead.

### Partitioning and Sharding #Scalability #LargeDatabases #Distribution
Splitting large tables into smaller, more manageable pieces (partitions) or distributing data across multiple servers (sharding).

## Implementation and Deployment #Execution #Creation #GoLive
Creating the database schema and loading initial data.

### Data Definition Language (DDL) #SQL #SchemaCreation #Commands
SQL commands used to define the database structure.
#### CREATE TABLE #TableDefinition #Columns #Constraints
Command to create a new table.
#### ALTER TABLE #SchemaModification #AddingColumns #ChangingConstraints
Command to modify an existing table structure.
#### DROP TABLE #SchemaDeletion #RemovingTables
Command to delete a table.
#### CREATE INDEX #IndexCreation #Performance
Command to create an index.
#### CREATE VIEW #VirtualTable #QuerySimplification
Command to create a logical view based on a query.

### Data Manipulation Language (DML) #SQL #DataOperations #CRUD
SQL commands for managing data within schema objects (briefly relevant to design for testing/population).
#### INSERT #AddingData #PopulatingTables
#### SELECT #RetrievingData #Querying
#### UPDATE #ModifyingData
#### DELETE #RemovingData

### Data Control Language (DCL) #Security #Permissions #AccessControl
SQL commands for managing permissions.
#### GRANT #AssigningPermissions
#### REVOKE #RemovingPermissions

### Data Loading #InitialData #ETL #Migration
Populating the database with initial data.

### Testing and Validation #Verification #QualityAssurance #Accuracy
Ensuring the database meets requirements and functions correctly.

## Database Security Design #Protection #AccessControl #Confidentiality
Integrating security considerations into the database design.

### Security Objectives #CIA #Confidentiality #Integrity #Availability
Protecting data confidentiality, ensuring integrity, and maintaining availability.

### Access Control Models #Permissions #Authorization #Policies
#### Discretionary Access Control (DAC) #OwnerBased #GRANT/REVOKE
Access control based on user identity and permissions granted by object owners.
#### Mandatory Access Control (MAC) #RuleBased #Labels #Military
Access control based on security labels assigned to objects and subjects.
#### Role-Based Access Control (RBAC) #Roles #Groups #Administration
Access control based on roles assigned to users, simplifying administration.

### Authentication #UserVerification #Login #Credentials
Verifying the identity of users trying to access the database.

### Authorization #Permissions #Privileges #WhatUsersCanDo
Defining what actions authenticated users are allowed to perform.

### Encryption #DataProtection #AtRest #InTransit
Protecting data by converting it into an unreadable format.
#### Encryption at Rest #StorageProtection #DiskEncryption
Encrypting data stored on disk.
#### Encryption in Transit #NetworkProtection #SSLTLS
Encrypting data transmitted over networks.

### Auditing #Logging #Monitoring #TrackingChanges
Recording database activities for security monitoring and compliance.

## Performance Tuning and Optimization (Design Aspects) #Speed #Efficiency #QueryOptimization
Design choices impacting database performance.

### Query Optimization Principles #ExecutionPlans #CostBased #RuleBased
How the DBMS processes queries efficiently. Understanding execution plans.

### Indexing Impact on Performance #QuerySpeed #WriteOverhead
How indexes speed up reads but can slow down writes (INSERT, UPDATE, DELETE).

### Understanding Execution Plans #QueryAnalysis #Bottlenecks #TuningTools
Analyzing how the database executes a query to identify performance issues.

### Design Choices Affecting Performance #NormalizationLevel #DataTypes #Partitioning
How decisions made during design (e.g., denormalization, data type selection, partitioning) influence performance.

## Data Warehousing and Business Intelligence Design #OLAP #Reporting #Analytics
Designing databases specifically for analytical purposes.

### OLTP vs OLAP #Transactional #Analytical #Differences
Contrasting databases designed for online transaction processing vs. online analytical processing.

### Dimensional Modeling #StarSchema #SnowflakeSchema #Facts #Dimensions
A design methodology for data warehouses focusing on fact tables (measurements) and dimension tables (context).
#### Star Schema #Simple #DenormalizedDimensions
A central fact table connected to multiple denormalized dimension tables.
#### Snowflake Schema #NormalizedDimensions #Complex
A variation of the star schema where dimension tables are normalized into related sub-tables.
#### Fact Tables #Measurements #Metrics #Grain
Contain quantitative data (measures) and foreign keys to dimension tables.
#### Dimension Tables #Context #Attributes #Hierarchies
Contain descriptive attributes about the facts. Often have hierarchies (e.g., Time: Year > Quarter > Month > Day).

### ETL (Extract, Transform, Load) Process Design #DataIntegration #Pipeline #Staging
Designing the process for extracting data from source systems, transforming it, and loading it into the data warehouse.

## NoSQL Database Design #NonRelational #BigData #Flexibility
Design considerations for databases that don't follow the traditional relational model.

### Types of NoSQL Databases #Categories #Variations
#### Key-Value Stores #Simple #FastLookup (e.g., Redis, Memcached)
#### Document Databases #JSON #BSON #FlexibleSchema (e.g., MongoDB, Couchbase)
#### Column-Family Stores #WideColumn #Scalability (e.g., Cassandra, HBase)
#### Graph Databases #Relationships #Nodes #Edges (e.g., Neo4j, ArangoDB)

### CAP Theorem #Consistency #Availability #PartitionTolerance #Tradeoffs
Fundamental theorem stating a distributed system can only provide two out of three guarantees: Consistency, Availability, Partition Tolerance.

### BASE Properties #BasicallyAvailable #SoftState #EventualConsistency #NoSQLPrinciples
An alternative set of properties often exhibited by NoSQL databases (contrast to ACID).

### Schema Design in NoSQL #Schemaless #Flexible #ApplicationDriven
Often involves embedding data, denormalization based on query patterns, and less rigid schemas compared to relational databases.

### Data Modeling Patterns for NoSQL #Techniques #BestPractices
Specific patterns like embedding vs referencing, handling relationships, indexing strategies tailored to NoSQL models.

## Advanced Database Design Topics #Specialized #Emerging #FutureTrends
More complex or specialized areas of database design.

### Distributed Databases #Distribution #Replication #Concurrency
Designing databases spread across multiple physical locations.
#### Replication Strategies #DataCopying #Availability #Consistency
#### Distributed Concurrency Control #Locking #Timestamping #Challenges
#### Distributed Query Processing #Optimization #DataTransfer

### Object-Oriented and Object-Relational Databases #OODBMS #ORDBMS #ComplexData
Databases designed to work directly with object-oriented programming concepts.

### Temporal Databases #TimeVaryingData #History #Versioning
Databases designed to manage data that changes over time, tracking history.

### Spatial Databases #GeographicData #GIS #Location
Databases optimized for storing and querying data based on geometric or geographic location.

### Cloud Database Design #CloudServices #DBaaS #Scalability #ManagedServices
Design considerations when using cloud platforms (AWS, Azure, GCP) and Database-as-a-Service offerings. Elasticity, cost management, service limitations.

### Multimodal Databases #Hybrid #MultipleModels #Flexibility
Databases supporting multiple data models (e.g., relational and document, or graph and key-value) within a single system.

## Database Administration and Maintenance (Design Implications) #Operations #Management #Longevity
How design choices impact ongoing database administration.

### Backup and Recovery Strategy Design #DataProtection #DisasterRecovery #Planning
Designing databases to facilitate effective backup and recovery procedures.

### Monitoring and Alerting Design #HealthChecks #PerformanceTracking #ProactiveManagement
Designing schemas or including elements that aid in monitoring database health and performance.

### Scalability Planning #Growth #VerticalScaling #HorizontalScaling
Designing databases with future growth in mind (scaling up vs. scaling out).

### High Availability (HA) Design #Uptime #Failover #Redundancy
Designing database systems to minimize downtime using techniques like clustering, replication, and automatic failover.
