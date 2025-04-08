# I. Introduction to Spark with Python

## Understanding Spark's Core Concepts

### Resilient Distributed Datasets (RDDs)

*   Definition and properties of RDDs: Immutability, fault tolerance, distributed nature.
*   RDD operations: Transformations (e.g., `map`, `filter`, `flatMap`) and Actions (e.g., `collect`, `count`, `reduce`).
*   Example: Creating an RDD from a Python list using `sc.parallelize([1, 2, 3, 4, 5])`.
*   Lazy evaluation: Understanding how Spark optimizes execution plans.

### SparkContext and SparkSession

*   Role of `SparkContext` as the entry point to Spark functionality (legacy).
*   `SparkSession` as the unified entry point for all Spark functionalities (including SQL and DataFrames).
*   Creating a `SparkSession` using `SparkSession.builder.appName("MyApp").getOrCreate()`.
*   Understanding Spark configuration parameters.

## Setting Up a Spark Development Environment

### Installing Spark and PySpark

*   Downloading Spark from the Apache Spark website.
*   Setting up environment variables (e.g., `SPARK_HOME`, `JAVA_HOME`).
*   Installing PySpark using `pip install pyspark`.
*   Verifying the installation by running a simple Spark application.

### Configuring Spark

*   Understanding `spark-defaults.conf` for cluster-wide configurations.
*   Using `--conf` option when submitting Spark applications.
*   Configuring memory settings (`spark.driver.memory`, `spark.executor.memory`).

# II. Working with RDDs in PySpark

## Creating and Manipulating RDDs

### Creating RDDs from Various Data Sources

*   From local files: `sc.textFile("path/to/file.txt")`.
*   From Hadoop Distributed File System (HDFS): `sc.textFile("hdfs://...")`.
*   From databases (via Spark SQL or connectors).

### RDD Transformations

*   `map`: Applying a function to each element. Example: `rdd.map(lambda x: x * 2)`.
*   `filter`: Selecting elements based on a condition. Example: `rdd.filter(lambda x: x > 5)`.
*   `flatMap`: Similar to `map`, but flattens the results. Example: `rdd.flatMap(lambda x: x.split(" "))`.
*   `distinct`: Removing duplicate elements. Example: `rdd.distinct()`.
*   `sample`: Creating a sample RDD. Example: `rdd.sample(False, 0.5)`.

### RDD Actions

*   `collect`: Retrieving all elements to the driver program.
*   `count`: Counting the number of elements.
*   `first`: Retrieving the first element.
*   `take`: Retrieving the first N elements. Example: `rdd.take(10)`.
*   `reduce`: Aggregating elements using a function. Example: `rdd.reduce(lambda x, y: x + y)`.
*   `saveAsTextFile`: Saving RDD to a text file. Example: `rdd.saveAsTextFile("output/path")`.

## Pair RDDs

### Creating Pair RDDs

*   Using `map` to create key-value pairs. Example: `rdd.map(lambda x: (x, 1))`.

### Pair RDD Transformations

*   `groupByKey`: Grouping values by key.  Example: `pair_rdd.groupByKey().mapValues(list)`.
*   `reduceByKey`: Reducing values for each key. Example: `pair_rdd.reduceByKey(lambda x, y: x + y)`.
*   `sortByKey`: Sorting by key. Example: `pair_rdd.sortByKey()`.
*   `join`: Joining two pair RDDs. Example: `rdd1.join(rdd2)`.
*   `cogroup`: Cogrouping two pair RDDs. Example: `rdd1.cogroup(rdd2)`.

### Pair RDD Actions

*   `countByKey`: Counting the number of elements for each key.
*   `collectAsMap`: Collecting the pair RDD as a dictionary.
*   `lookup`: Returning all values associated with a key. Example: `pair_rdd.lookup("key")`.

# III. Spark DataFrames and SQL

## Introduction to DataFrames

### Creating DataFrames

*   From RDDs: `spark.createDataFrame(rdd, schema=schema)`.
*   From CSV files: `spark.read.csv("path/to/file.csv", header=True, inferSchema=True)`.
*   From JSON files: `spark.read.json("path/to/file.json")`.
*   From Parquet files: `spark.read.parquet("path/to/file.parquet")`.

### DataFrame Operations

*   Selecting columns: `df.select("column1", "column2")`.
*   Filtering rows: `df.filter(df["column"] > 10)`.
*   Adding new columns: `df.withColumn("new_column", df["column1"] + df["column2"])`.
*   Renaming columns: `df.withColumnRenamed("old_column", "new_column")`.
*   Dropping columns: `df.drop("column")`.
*   Grouping and aggregating: `df.groupBy("column").agg({"other_column": "sum"})`.
*   Sorting: `df.orderBy("column", ascending=False)`.

## Spark SQL

### Registering DataFrames as Tables

*   `df.createOrReplaceTempView("table_name")`.

### Writing SQL Queries

*   Using `spark.sql("SELECT * FROM table_name WHERE condition")`.
*   Joining tables with SQL.
*   Using aggregate functions (e.g., `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).

### Interacting with DataFrames and SQL

*   Converting between DataFrames and RDDs: `df.rdd`.
*   Using SQL queries to create new DataFrames.

# IV. Spark Streaming

## Introduction to Spark Streaming

### Understanding Micro-batch Processing

*   How Spark Streaming divides input data into small batches.
*   Defining the batch interval.

### Creating a StreamingContext

*   `StreamingContext(sparkContext, batchDuration)`.
*   Common batch durations.

## Working with DStreams

### Creating DStreams from Various Sources

*   From TCP sockets: `ssc.socketTextStream("hostname", port)`.
*   From Kafka: Using the `spark-streaming-kafka` package.
*   From Flume: Using the `spark-streaming-flume` package.

### DStream Transformations

*   `map`: Applying a function to each element in the DStream.
*   `filter`: Filtering elements based on a condition.
*   `count`: Counting elements in each batch.
*   `window`: Applying transformations over a sliding window.
*   `reduceByKeyAndWindow`: Reducing values by key over a window.

### DStream Output Operations

*   `print`: Printing the output to the console.
*   `saveAsTextFiles`: Saving the output to text files.
*   `foreachRDD`: Applying a function to each RDD in the DStream.

## State Management

### Using `updateStateByKey`

*   Maintaining state across batches.
*   Defining the update function.

# V. Advanced Spark Concepts

## Spark Optimization

### Understanding Spark Execution Plans

*   Using `explain()` to view the execution plan of a DataFrame or RDD.
*   Identifying potential bottlenecks.

### Data Partitioning

*   Understanding the impact of data partitioning on performance.
*   Using `repartition()` and `coalesce()` to control the number of partitions.

### Caching and Persistence

*   Using `cache()` and `persist()` to store RDDs or DataFrames in memory.
*   Understanding different storage levels (e.g., `MEMORY_ONLY`, `DISK_ONLY`, `MEMORY_AND_DISK`).

## Deployment and Cluster Management

### Submitting Spark Applications

*   Using `spark-submit`.
*   Specifying deployment mode (`--deploy-mode`).
*   Configuring resources (`--num-executors`, `--executor-memory`, `--executor-cores`).

### Understanding Spark Cluster Architectures

*   Standalone mode.
*   YARN.
*   Mesos.
*   Kubernetes.
