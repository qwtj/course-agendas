# Amazon AWS Machine Learning Services #AWS #MachineLearning #CloudML
Overview of machine learning capabilities offered by Amazon Web Services.

## AI Services (API-Driven) #AIServices #ManagedML #APIs
Pre-trained AI models accessible via APIs, requiring minimal ML expertise.

### Vision Services #ComputerVision #ImageAnalysis #VideoAnalysis
Services for analyzing images and videos.
#### Amazon Rekognition #ImageRecognition #VideoAnalysis #FacialAnalysis
Automated image and video analysis (object detection, facial recognition, text extraction).
#### Amazon Textract #OCR #DocumentAnalysis #DataExtraction
Extracts text, handwriting, and data from scanned documents.
#### Amazon Lookout for Vision #QualityInspection #DefectDetection #IndustrialAI
Detects visual anomalies in industrial products using computer vision.

### Speech Services #SpeechRecognition #SpeechSynthesis #VoiceAI
Services for converting speech to text and text to speech.
#### Amazon Transcribe #ASR #SpeechToText #Transcription
Automatic speech recognition (ASR) service.
#### Amazon Polly #TTS #TextToSpeech #VoiceGeneration
Turns text into lifelike speech.

### Language Services #NLP #TextAnalysis #Translation
Services for natural language processing tasks.
#### Amazon Comprehend #TextAnalytics #SentimentAnalysis #EntityRecognition
Discovers insights and relationships in text (sentiment, entities, key phrases).
#### Amazon Translate #MachineTranslation #LanguageTranslation
Neural machine translation service.
#### Amazon Lex #Chatbots #ConversationalAI #NLU
Builds conversational interfaces (voice and text chatbots).
#### Amazon Kendra #EnterpriseSearch #IntelligentSearch #DocumentSearch
Intelligent enterprise search service powered by machine learning.

### Contact Center Services #ContactCenterAI #CustomerService #CallAnalytics
AI services tailored for contact centers.
#### Amazon Connect Wisdom #AgentAssist #KnowledgeManagement #RealTimeAssistance
Delivers real-time knowledge recommendations to contact center agents.
#### Amazon Contact Lens for Amazon Connect #CallAnalytics #SentimentAnalysis #ConversationInsights
Provides analytics and insights for contact center conversations.

### Forecasting & Personalization #Forecasting #Personalization #RecommendationEngines
Services for time-series forecasting and user personalization.
#### Amazon Forecast #TimeSeriesForecasting #DemandPlanning #BusinessMetrics
Managed time-series forecasting service.
#### Amazon Personalize #RecommendationSystem #UserPersonalization #RealTimeRecommendations
Real-time personalization and recommendation service.

### Fraud Detection #FraudPrevention #RiskManagement #OnlineFraud
Managed service for detecting potentially fraudulent online activities.
#### Amazon Fraud Detector #FraudDetection #MachineLearning #RiskAnalysis
Build, deploy, and manage fraud detection models.

### Code Generation & Assistance #CodeGeneration #DeveloperTools #AIProgramming
AI services to assist developers with coding.
#### Amazon CodeWhisperer #AICodeCompletion #DeveloperProductivity #CodeSuggestion
ML-powered coding companion that generates code suggestions.

### Health AI #HealthcareAI #MedicalNLP #HealthData
AI services specifically designed for the healthcare and life sciences industry.
#### Amazon Comprehend Medical #MedicalNLP #PHI #ClinicalNotes
Extracts medical information from unstructured text like clinical notes and reports.
#### Amazon HealthLake #HealthcareDataLake #Interoperability #FHIR
HIPAA-eligible service to store, transform, query, and analyze health data.
#### Amazon Omics #Genomics #Bioinformatics #OmicsData
Store, query, and analyze genomic, transcriptomic, and other omics data.

## Amazon SageMaker (ML Platform) #SageMaker #MLPlatform #EndToEndML
Fully managed service to build, train, and deploy machine learning models at scale.

### SageMaker Studio #IDE #MLWorkbench #DevelopmentEnvironment
Integrated development environment (IDE) for machine learning.

### Data Preparation & Labeling #DataPreprocessing #FeatureEngineering #DataLabeling
Tools within SageMaker for preparing data.
#### SageMaker Data Wrangler #DataPreparation #DataVisualization #FeatureEngineering
Visual interface for data preparation and feature engineering.
#### SageMaker Feature Store #FeatureManagement #FeatureDiscovery #MLFeatures
Centralized store for machine learning features.
#### SageMaker Ground Truth #DataLabeling #Annotation #HumanInTheLoop
Build highly accurate training datasets using human annotators or automated labeling.

### Model Building #ModelDevelopment #AlgorithmSelection #Notebooks
Tools and environments for building ML models.
#### SageMaker Studio Notebooks #Jupyter #ManagedNotebooks #Development
Managed Jupyter notebooks integrated with SageMaker Studio.
#### SageMaker Notebook Instances #StandaloneNotebooks #EC2 #MLDevelopment
Standalone ML compute instances pre-packaged with Jupyter.
#### Built-in Algorithms #Algorithms #PrebuiltModels #Optimization
Optimized algorithms provided by SageMaker.
#### Bring Your Own Algorithm/Script #CustomML #BYOM #Flexibility
Support for custom algorithms and training scripts.
#### Automatic Model Tuning (Hyperparameter Optimization) #HPO #Hyperparameters #Optimization
Automates the hyperparameter tuning process.

### Model Training #TrainingJobs #DistributedTraining #ManagedTraining
Managed infrastructure and tools for training models.
#### Managed Training #ScalableTraining #DistributedTraining #SpotTraining
Simplified and scalable model training jobs.
#### SageMaker Experiments #ExperimentTracking #MLTracking #Comparison
Track, compare, and evaluate ML experiments and model versions.
#### SageMaker Debugger #Debugging #ModelAnalysis #TrainingInsights
Debug and analyze complex training issues.
#### SageMaker Training Compiler #TrainingAcceleration #GPUOptimization #DeepLearning
Accelerates deep learning model training.

### Model Deployment #ModelDeployment #Inference #EndpointHosting
Options for deploying trained models for inference.
#### Real-Time Inference #Endpoints #LowLatency #OnlinePrediction
Deploy models to HTTPS endpoints for low-latency predictions.
#### Serverless Inference #ServerlessML #PayPerUse #AutoScaling
Automatically scales compute capacity based on inference traffic.
#### Batch Transform #BatchPrediction #OfflineInference #LargeDatasets
Run predictions on large datasets without needing a persistent endpoint.
#### Asynchronous Inference #LargePayloads #LongProcessing #QueuedRequests
Queue incoming requests for inference, suitable for large payloads or long processing times.
#### SageMaker Edge Manager #EdgeML #ModelDeployment #DeviceManagement
Deploy and manage models on edge devices.

### Model Monitoring & Management #ModelMonitoring #DriftDetection #MLOps
Tools for monitoring deployed models and managing the ML lifecycle.
#### SageMaker Model Monitor #DataDrift #ModelQuality #ConceptDrift
Automatically detects data drift and model quality issues.
#### SageMaker Model Registry #ModelCatalog #Versioning #ApprovalWorkflow
Central repository to catalog and manage model versions.
#### SageMaker Pipelines #MLWorkflows #Orchestration #CI/CD
Build, automate, and manage end-to-end ML workflows (CI/CD for ML).

## Generative AI on AWS #GenerativeAI #FoundationModels #LLM
Services and capabilities focused on generative AI and large language models.

### Amazon Bedrock #FoundationModels #ManagedService #API GatedAccess
Access foundation models from AI21 Labs, Anthropic, Cohere, Meta, Stability AI, and Amazon via API.
#### Model Customization #FineTuning #PromptEngineering #RAG
Capabilities for customizing foundation models (e.g., fine-tuning, Retrieval Augmented Generation).
#### Agents for Bedrock #AutonomousAgents #TaskAutomation #Orchestration
Build and deploy autonomous agents to execute tasks using foundation models.

### Amazon Titan Models #AmazonModels #FoundationModels #FirstParty
Foundation models developed by Amazon (Text, Embeddings, Multimodal).

### Amazon SageMaker JumpStart #FoundationModels #PretrainedModels #DeploymentTemplates
Discover, fine-tune, and deploy foundation models and pre-built solutions within SageMaker.

## ML Infrastructure #Compute #Storage #Networking
Underlying AWS infrastructure optimized for machine learning workloads.

### Compute Instances #EC2 #GPUInstances #Inferentia #Trainium
Optimized compute options for training and inference.
#### EC2 Instances (P, G, DL, Trn, Inf families) #GPU #CPU #Accelerators
Virtual servers optimized for different ML tasks (e.g., GPU for training, Inferentia for inference).
#### Amazon EC2 Capacity Blocks for ML #ReservedCapacity #GPUAccess #PredictableCost
Reserve GPU instances for short durations for ML workloads.
#### AWS Trainium #TrainingChip #DeepLearning #CostEffectiveTraining
AWS-designed chip optimized for high-performance deep learning training.
#### AWS Inferentia #InferenceChip #LowLatencyInference #CostEffectiveInference
AWS-designed chip optimized for high-performance, low-cost inference.

### Storage #S3 #EFS #FSx
Scalable and cost-effective storage options for large datasets.
#### Amazon S3 #ObjectStorage #DataLake #TrainingData
Scalable object storage for datasets.
#### Amazon EFS #FileSystem #SharedStorage #Linux
Elastic file system for Linux-based workloads.
#### Amazon FSx for Lustre #HPC #FileSystem #HighPerformance
High-performance file system optimized for compute-intensive workloads.

### Networking #VPC #DirectConnect #NetworkingOptimization
Secure and high-bandwidth networking options.

### Containers & Orchestration #Docker #ECS #EKS #Kubernetes
Container services for packaging and deploying ML applications.
#### Amazon Elastic Container Service (ECS) #ContainerOrchestration #Docker #Scalability
Managed container orchestration service.
#### Amazon Elastic Kubernetes Service (EKS) #Kubernetes #ManagedK8s #Portability
Managed Kubernetes service.
#### AWS Deep Learning Containers #DLC #PreconfiguredEnvironments #Frameworks
Docker images pre-installed with deep learning frameworks.

### Deep Learning AMIs #AMI #PreconfiguredInstances #DeepLearning
Amazon Machine Images (AMIs) pre-installed with popular deep learning frameworks and tools.

## Data Preparation & Feature Engineering #DataPrep #FeatureEngineering #ETL
Services and features focused on preparing data for ML.

### AWS Glue #ETL #DataCatalog #ServerlessETL
Serverless data integration service for ETL, data cataloging, and data preparation.
#### Glue DataBrew #VisualDataPrep #NoCode #DataCleaning
Visual data preparation tool for cleaning and normalizing data without code.
#### Glue Studio #VisualETL #JobAuthoring #Pipelines
Graphical interface for creating, running, and monitoring ETL jobs.

### AWS Lake Formation #DataLakeManagement #Security #Governance
Service to set up, secure, and manage data lakes.

### Amazon Athena #ServerlessQuery #SQL #DataExploration
Interactive query service to analyze data in S3 using standard SQL.

### Amazon EMR #BigData #Spark #Hadoop #DataProcessing
Managed cluster platform for big data processing using frameworks like Spark and Hadoop.

### SageMaker Data Wrangler (See SageMaker) #DataWrangler #VisualPrep #SageMakerIntegration

### SageMaker Feature Store (See SageMaker) #FeatureStore #MLFeatures #Centralized

## ML Operations (MLOps) #MLOps #Automation #LifecycleManagement
Practices and tools for automating and managing the end-to-end machine learning lifecycle.

### SageMaker Pipelines (See SageMaker) #WorkflowOrchestration #CI/CDforML #Automation

### SageMaker Model Registry (See SageMaker) #ModelVersioning #Approval #Catalog

### SageMaker Model Monitor (See SageMaker) #DriftDetection #PerformanceMonitoring #Alerts

### SageMaker Experiments (See SageMaker) #ExperimentTracking #Comparison #Reproducibility

### AWS CodePipeline / CodeCommit / CodeBuild #CI/CD #DevOps #InfrastructureAsCode
Core AWS DevOps services applicable to MLOps workflows.

### CloudFormation / CDK #InfrastructureAsCode #IaC #Automation
Define and manage AWS infrastructure using code for reproducibility.

## Responsible AI & Governance #ResponsibleAI #Fairness #Explainability #Governance
Tools and frameworks for building and deploying AI responsibly.

### SageMaker Clarify #BiasDetection #Explainability #ModelAnalysis
Provides tools for detecting bias in data and models and explaining model predictions.

### SageMaker Model Cards #ModelDocumentation #Transparency #Reporting
Provides a standardized framework for documenting model information and performance.

### SageMaker Model Governance #RiskManagement #Compliance #Auditability
Integrated capabilities for managing model risk and meeting regulatory requirements.

### AI Service Cards #Transparency #AIServices #Documentation
Documentation detailing intended uses, limitations, and responsible AI considerations for AI services.

## Edge ML #EdgeComputing #IoT #OnDeviceML
Running machine learning models on edge devices.

### SageMaker Edge Manager #EdgeDeployment #ModelOptimization #DeviceFleet
Manages model deployment and monitoring on edge devices.

### AWS IoT Greengrass #IoTEdge #LocalCompute #Messaging
Software that extends AWS services to devices so they can act locally on generated data.

### Lookout for Vision (Edge Capabilities) #IndustrialAI #EdgeInspection #AnomalyDetection
Option to deploy computer vision models to the edge for local defect detection.

## AWS ML Marketplace #Marketplace #Algorithms #Models #ThirdParty
A curated digital catalog with thousands of ML models and algorithms from third-party sellers.

### Algorithms #PrebuiltAlgorithms #ThirdPartySolutions
Purchase or subscribe to ML algorithms.

### Models #PretrainedModels #ThirdPartyModels
Purchase or subscribe to pre-trained ML models deployable via SageMaker.

## Learning Resources & Community #Education #Training #Support
Resources for learning and getting help with AWS ML.

### AWS Training and Certification #Courses #Certification #SkillsValidation
Official training courses and certifications for AWS ML.

### AWS Documentation #Guides #APIs #Tutorials
Comprehensive documentation for all services.

### AWS ML Blog #Articles #Updates #BestPractices
Blog posts on new features, use cases, and best practices.

### AWS Samples (GitHub) #CodeSamples #Examples #GitHub
Repositories with sample code and applications.

### AWS re:Invent / Summits #Conferences #Networking #Announcements
AWS events featuring ML sessions and announcements.

### AWS User Groups / Community Builders #Community #Support #Networking
Community programs for peer support and learning.

## Cost Management for ML #CostOptimization #Billing #Budgeting
Tools and strategies for managing the costs associated with AWS ML services.

### AWS Cost Explorer #CostAnalysis #Visualization #Reporting
Visualize, understand, and manage AWS costs and usage.

### AWS Budgets #BudgetAlerts #CostControl #Notifications
Set custom budgets and receive alerts for cost overruns.

### Cost Allocation Tags #Tagging #CostTracking #ResourceManagement
Tag resources to track ML costs by project, department, etc.

### Savings Plans / Reserved Instances #CostSavings #Commitment #ComputeCosts
Commitment-based pricing models for compute resources.

### Spot Instances (for Training) #SpotMarket #CostReduction #Interruptible
Utilize spare EC2 capacity at significantly lower prices for fault-tolerant training jobs.

### SageMaker Cost Optimization Features #ManagedSpotTraining #Autoscaling #RightSizing
Specific features within SageMaker to optimize costs (e.g., Managed Spot Training).

## Industry Solutions & Use Cases #Applications #Verticals #Examples
How AWS ML services are applied across different industries and scenarios.

### Financial Services #FraudDetection #RiskAnalysis #AlgorithmicTrading
Applications in banking, insurance, and investment.

### Retail & E-commerce #Personalization #Forecasting #SupplyChain
Use cases like recommendation engines, demand forecasting, churn prediction.

### Healthcare & Life Sciences #DrugDiscovery #MedicalImaging #PatientOutcomes
Applications leveraging services like Comprehend Medical, HealthLake, Omics.

### Manufacturing #PredictiveMaintenance #QualityControl #ProcessOptimization
Using services like Lookout for Vision, Lookout for Equipment, Monitron.

### Media & Entertainment #ContentRecommendation #MediaAnalysis #PersonalizedAds
Tailoring content and advertising using personalization and analysis services.

### Automotive #AutonomousDriving #PredictiveMaintenance #InCarExperience
ML for vehicle development, manufacturing, and connected car features.

### Public Sector #CitizenServices #Security #ResourceOptimization
Applications in government, education, and non-profits.
