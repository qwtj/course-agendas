# I. Introduction to AWS S3

## Understanding S3 Basics

### What is Amazon S3?

*   Explain S3 as an object storage service.
*   Discuss use cases: data backup, content storage, media hosting.

### Key S3 Concepts

*   Buckets: Naming, creation, and region selection.
*   Objects: Keys, data, and metadata.
*   Regions: Geographic locations for buckets.
*   Storage Classes: Standard, Intelligent-Tiering, Standard-IA, One Zone-IA, Glacier, Deep Archive.
*   Example: Creating a bucket named `my-unique-bucket-name` in the `us-west-2` (Oregon) region.

## Setting up AWS CLI

### Installing AWS CLI

*   Download and install AWS CLI based on your operating system.
*   Example: On MacOS, `brew install awscli`.

### Configuring AWS CLI

*   Configure AWS CLI with your AWS credentials (Access Key ID and Secret Access Key).
*   Command: `aws configure`
*   Understanding IAM roles and their relationship to CLI access.
*   Example: Inputting your `AWS Access Key ID` and `AWS Secret Access Key`.

# II. Working with S3 Buckets

## Creating and Deleting Buckets

### Creating a Bucket

*   Using the AWS CLI to create a new bucket.
*   Command: `aws s3 mb s3://your-unique-bucket-name --region your-aws-region`
*   Explanation of naming conventions for buckets.

### Deleting a Bucket

*   Deleting an empty bucket using the AWS CLI.
*   Command: `aws s3 rb s3://your-unique-bucket-name`
*   Handling errors when a bucket is not empty.
*   Force deletion: `aws s3 rb s3://your-unique-bucket-name --force` (Use with extreme caution!).

## Listing Buckets and Objects

### Listing Buckets

*   Using the AWS CLI to list all your S3 buckets.
*   Command: `aws s3 ls`
*   Interpreting the output.

### Listing Objects in a Bucket

*   Listing objects within a specific bucket.
*   Command: `aws s3 ls s3://your-bucket-name`
*   Using prefixes to filter objects.
*   Command: `aws s3 ls s3://your-bucket-name/prefix/`

# III. Managing Objects in S3

## Uploading Objects

### Uploading a Single File

*   Uploading a file to a bucket using the AWS CLI.
*   Command: `aws s3 cp local-file.txt s3://your-bucket-name/`
*   Specifying the destination key.
*   Command: `aws s3 cp local-file.txt s3://your-bucket-name/remote-file.txt`

### Uploading Multiple Files

*   Uploading multiple files using the AWS CLI.
*   Command: `aws s3 cp local-directory s3://your-bucket-name/ --recursive`
*   Understanding the `--recursive` flag.

## Downloading Objects

### Downloading a Single File

*   Downloading a file from a bucket using the AWS CLI.
*   Command: `aws s3 cp s3://your-bucket-name/remote-file.txt local-file.txt`

### Downloading Multiple Files

*   Downloading multiple files using the AWS CLI.
*   Command: `aws s3 cp s3://your-bucket-name/remote-directory local-directory --recursive`

## Deleting Objects

### Deleting a Single Object

*   Deleting a single object from a bucket using the AWS CLI.
*   Command: `aws s3 rm s3://your-bucket-name/object-key`

### Deleting Multiple Objects

*   Deleting multiple objects from a bucket using the AWS CLI.
*   Deleting a directory and its contents: `aws s3 rm s3://your-bucket-name/directory/ --recursive`

# IV. S3 Security and Permissions

## Access Control Lists (ACLs)

### Understanding ACLs

*   Explanation of Access Control Lists (ACLs).
*   Use cases for ACLs.
*   ACL options: private, public-read, public-read-write, etc.

### Setting ACLs

*   Setting ACLs during upload.
*   Command: `aws s3 cp local-file.txt s3://your-bucket-name/object-key --acl public-read`

## Bucket Policies

### Understanding Bucket Policies

*   Explanation of Bucket Policies.
*   JSON structure of a bucket policy.
*   Use cases for bucket policies.

### Creating Bucket Policies

*   Example: Allowing public read access to all objects in a bucket.
    ```json
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Sid": "PublicReadGetObject",
          "Effect": "Allow",
          "Principal": "*",
          "Action": "s3:GetObject",
          "Resource": "arn:aws:s3:::your-bucket-name/*"
        }
      ]
    }
    ```
*   Applying a bucket policy using the AWS CLI: `aws s3api put-bucket-policy --bucket your-bucket-name --policy file://policy.json`

## IAM Roles for S3 Access

### Understanding IAM Roles

*   Explanation of IAM Roles and their use cases.
*   Granting EC2 instances access to S3 using IAM roles.

### Creating IAM Roles

*   Creating an IAM role with S3 access.
*   Attaching the role to an EC2 instance.
*   Testing access to S3 from the EC2 instance.

# V. Advanced S3 Features

## S3 Versioning

### Understanding S3 Versioning

*   How versioning works in S3.
*   Benefits of using versioning: data recovery, historical analysis.

### Enabling Versioning

*   Enabling versioning on a bucket using the AWS CLI.
*   Command: `aws s3api put-bucket-versioning --bucket your-bucket-name --versioning-configuration Status=Enabled`

### Retrieving Specific Versions

*   Retrieving a specific version of an object.
*   Deleting a specific version of an object.

## S3 Lifecycle Policies

### Understanding Lifecycle Policies

*   Explanation of S3 Lifecycle Policies.
*   Use cases: moving objects to cheaper storage classes, expiring objects.

### Creating Lifecycle Policies

*   Creating a lifecycle policy to transition objects to Glacier after 30 days.
    ```json
    {
      "Rules": [
        {
          "ID": "MoveToGlacier",
          "Status": "Enabled",
          "Prefix": "",
          "Transitions": [
            {
              "Date": "2024-12-31T00:00:00.000Z",
              "StorageClass": "GLACIER"
            }
          ],
          "Expiration": {
              "Days": 365
          }
        }
      ]
    }
    ```
*   Applying a lifecycle policy using the AWS CLI: `aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle.json`

## S3 Transfer Acceleration

### Understanding Transfer Acceleration

*   How Transfer Acceleration improves upload/download speeds.
*   Use cases: transferring data over long distances.

### Enabling Transfer Acceleration

*   Enabling Transfer Acceleration on a bucket.

## S3 Event Notifications

### Understanding Event Notifications

*   Explanation of S3 Event Notifications.
*   Triggering Lambda functions or sending messages to SNS/SQS on S3 events (e.g., object creation, deletion).

### Configuring Event Notifications

*   Setting up an event notification to trigger a Lambda function on object creation.

# VI. S3 Monitoring and Management

## S3 Storage Lens

### Understanding S3 Storage Lens
* Overview of S3 Storage Lens and its purpose for gaining organization-wide visibility into object storage usage and activity trends.
* Explain how it aggregates metrics to identify cost optimization opportunities and data protection best practices.
### Using S3 Storage Lens
* Setting up Storage Lens to track the overall storage, activity and cost metrics for an AWS account or individual S3 buckets.
* Analyzing the collected metrics to gain insights into trends, identify anomalies, and improve overall storage efficiency.

## CloudWatch Metrics for S3

### Understanding CloudWatch Metrics

*   Overview of CloudWatch metrics available for S3.
*   Monitoring storage usage, request counts, and error rates.

### Setting up CloudWatch Alarms

*   Creating CloudWatch alarms to notify you of high error rates or low storage availability.

## S3 Inventory

### Understanding S3 Inventory

*   Explanation of S3 Inventory.
*   Creating daily or weekly inventory reports.
*   Using inventory reports to analyze object storage usage and optimize costs.
*   Understanding the inventory file format (CSV or Parquet).
