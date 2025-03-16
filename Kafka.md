# I. Introduction to Kafka

## Understanding Core Concepts

### Kafka's Purpose and Use Cases
*   Real-time data pipelines
*   Stream processing applications
*   Log aggregation

### Key Terminology
*   Topics: Categories or feeds to which records are published.
*   Partitions: Dividing topics into ordered, immutable sequences of records.
*   Brokers: Servers that make up the Kafka cluster.
*   Producers: Applications that publish (write) records to Kafka topics.
*   Consumers: Applications that subscribe to (read) records from Kafka topics.
*   Zookeeper: Used to manage and coordinate the Kafka brokers.

## Kafka Architecture

### Broker Discovery and Metadata Management
*   How consumers and producers find brokers.
*   Role of Zookeeper in cluster management and configuration.

### Partitioning and Replication
*   Understanding how data is distributed and replicated across the cluster.
*   Leader election and fault tolerance.

### Producers and Consumers
*   Asynchronous vs. synchronous producers.
*   Consumer groups and offsets.

# II. Setting Up a Kafka Environment

## Installing Kafka

### Downloading and Extracting Kafka
*   Downloading the Kafka distribution from the Apache Kafka website.
*   Extracting the archive to a suitable directory.

### Configuring Kafka
*   Configuring `server.properties` (broker configuration):
    *   `broker.id`: Unique ID for each broker in the cluster.
    *   `listeners`: Addresses the broker listens on.
    *   `log.dirs`: Directory where Kafka stores its data.
    *   `zookeeper.connect`: Zookeeper connection string.

### Starting Kafka and Zookeeper
*   Starting Zookeeper: `bin/zookeeper-server-start.sh config/zookeeper.properties`
*   Starting Kafka broker: `bin/kafka-server-start.sh config/server.properties`

## Using the Kafka Command-Line Tools

### Creating Topics
*   `kafka-topics.sh --create --topic my-topic --bootstrap-server localhost:9092 --partitions 3 --replication-factor 1`

### Listing Topics
*   `kafka-topics.sh --list --bootstrap-server localhost:9092`

### Producing Messages
*   `kafka-console-producer.sh --topic my-topic --bootstrap-server localhost:9092`

### Consuming Messages
*   `kafka-console-consumer.sh --topic my-topic --bootstrap-server localhost:9092 --from-beginning`

# III. Kafka Producers

## Producer Configuration

### Required Properties
*   `bootstrap.servers`: List of Kafka brokers.
*   `key.serializer`: Serializer for the key. Example: `org.apache.kafka.common.serialization.StringSerializer`
*   `value.serializer`: Serializer for the value. Example: `org.apache.kafka.common.serialization.StringSerializer`

### Optional Properties
*   `acks`: Number of acknowledgments the producer requires. (0, 1, all)
*   `retries`: Number of times to retry sending a message.
*   `batch.size`: Size of the batch to accumulate before sending.
*   `linger.ms`: Time to wait for more records to arrive before sending a batch.
*   `buffer.memory`: Total memory available to the producer for buffering.

## Writing a Simple Kafka Producer (Java)

### Creating a Producer Instance
```java
Properties props = new Properties();
props.put("bootstrap.servers", "localhost:9092");
props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");

Producer<String, String> producer = new KafkaProducer<>(props);
```

### Sending Messages
```java
ProducerRecord<String, String> record = new ProducerRecord<>("my-topic", "key", "value");
producer.send(record);
producer.close();
```

### Asynchronous Sending and Callbacks
```java
producer.send(record, new Callback() {
    public void onCompletion(RecordMetadata metadata, Exception e) {
        if (e != null) {
            System.err.println("Failed to send message: " + e.getMessage());
        } else {
            System.out.println("Message sent to partition " + metadata.partition() + ", offset " + metadata.offset());
        }
    }
});
```

## Custom Serializers

### Implementing a Custom Serializer
*   Creating a class that implements the `org.apache.kafka.common.serialization.Serializer` interface.
*   Implementing the `serialize()` method.

### Using Custom Serializers in Producers
*   Setting the `value.serializer` property to your custom serializer class.

# IV. Kafka Consumers

## Consumer Configuration

### Required Properties
*   `bootstrap.servers`: List of Kafka brokers.
*   `key.deserializer`: Deserializer for the key. Example: `org.apache.kafka.common.serialization.StringDeserializer`
*   `value.deserializer`: Deserializer for the value. Example: `org.apache.kafka.common.serialization.StringDeserializer`
*   `group.id`: Consumer group ID.

### Optional Properties
*   `auto.offset.reset`: What to do when there is no initial offset in Kafka or if the current offset does not exist any more on the server (earliest, latest, none).
*   `enable.auto.commit`: Whether to automatically commit offsets periodically.
*   `auto.commit.interval.ms`: The frequency in milliseconds that the consumer offsets are auto-committed to Kafka if `enable.auto.commit` is set to `true`.
*   `session.timeout.ms`: The timeout used to detect consumer failures.

## Writing a Simple Kafka Consumer (Java)

### Creating a Consumer Instance
```java
Properties props = new Properties();
props.put("bootstrap.servers", "localhost:9092");
props.put("group.id", "my-group");
props.put("key.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
props.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");

KafkaConsumer<String, String> consumer = new KafkaConsumer<>(props);
```

### Subscribing to Topics
```java
consumer.subscribe(Collections.singletonList("my-topic"));
```

### Polling for Messages
```java
while (true) {
    ConsumerRecords<String, String> records = consumer.poll(Duration.ofMillis(100));
    for (ConsumerRecord<String, String> record : records) {
        System.out.println("Received message: (" + record.key() + ", " + record.value() + ") at offset " + record.offset());
    }
}
```

### Committing Offsets
*   Automatic offset committing: `enable.auto.commit=true`
*   Manual offset committing:
    *   `commitSync()`: Commits the last received offset synchronously.
    *   `commitAsync()`: Commits the last received offset asynchronously.

## Custom Deserializers

### Implementing a Custom Deserializer
*   Creating a class that implements the `org.apache.kafka.common.serialization.Deserializer` interface.
*   Implementing the `deserialize()` method.

### Using Custom Deserializers in Consumers
*   Setting the `value.deserializer` property to your custom deserializer class.

# V. Advanced Kafka Concepts

## Kafka Streams

### Understanding Kafka Streams
*   Lightweight stream processing library built on top of Kafka.
*   Uses Kafka as both source and sink for data.

### Basic Stream Operations
*   Filtering: Selecting records based on a condition.
*   Mapping: Transforming records.
*   Aggregation: Computing aggregations over windows of data.
*   Joining: Combining data from multiple streams.

### Implementing a Simple Kafka Streams Application

## Kafka Connect

### Understanding Kafka Connect
*   Tool for streaming data between Kafka and other systems.
*   Pre-built connectors for various data sources and sinks.

### Using Pre-built Connectors
*   Configuring and running connectors for databases, file systems, and other systems.

### Writing Custom Connectors (Overview)

## Kafka Administration and Monitoring

### Monitoring Kafka Brokers
*   Key metrics to monitor: CPU usage, memory usage, disk I/O, network I/O.
*   Tools for monitoring Kafka: Kafka Manager, Prometheus, Grafana.

### Managing Kafka Topics
*   Increasing partitions.
*   Deleting topics.

### Scaling Kafka Clusters
*   Adding brokers to the cluster.
*   Rebalancing partitions.
