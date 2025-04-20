# Amazon AWS Shield #Overview #DDoSProtection #CloudSecurity
AWS Shield is a managed Distributed Denial of Service (DDoS) protection service that safeguards applications running on AWS.

## Introduction to AWS Shield #Basics #Fundamentals #ServiceOverview
Provides an overview of the service, its purpose, and its core value proposition.
### What is DDoS? #AttackVector #ThreatLandscape
Explanation of Distributed Denial of Service attacks and their types (volumetric, protocol, application layer).
### Purpose and Benefits of AWS Shield #ValueProposition #ManagedService #Resilience
Describes why AWS Shield is used, focusing on availability, reliability, and security against DDoS threats.
### Service Tiers: Standard and Advanced #Comparison #Tiers #Options
Introduction to the two levels of protection offered by AWS Shield.

## AWS Shield Standard #FreeTier #AutomaticProtection #DefaultSecurity
Covers the features and scope of the automatically included DDoS protection for all AWS customers.
### Features and Capabilities #NetworkFlowMonitoring #InlineMitigation #Layer3 #Layer4
Details the specific protection mechanisms provided by Shield Standard.
*   Always-on detection.
*   Automatic inline mitigations against common infrastructure-layer attacks.
*   Network flow monitoring.
### Covered Resources #EC2 #ELB #CloudFront #Route53 #GlobalAccelerator
Lists the AWS services that benefit from Shield Standard protection automatically.
### Attack Visibility #LimitedReporting #BasicMetrics
Explains the level of visibility provided (primarily through general CloudWatch metrics).
### Limitations #Layer7Protection #Visibility #Support #AdvancedThreats
Outlines what Shield Standard does *not* cover, such as advanced reporting, dedicated support, or application-layer protection.

## AWS Shield Advanced #PaidTier #EnhancedProtection #PremiumService
Details the features, benefits, and requirements of the premium AWS Shield Advanced tier.
### Features and Capabilities #AdvancedMitigation #Visibility #Support #CostProtection
Describes the enhanced protection mechanisms, reporting, support, and financial safeguards.
*   Protection against larger, more sophisticated attacks.
*   Application layer (Layer 7) DDoS mitigation (via AWS WAF).
*   Near real-time visibility and detailed diagnostics.
*   Access to AWS DDoS Response Team (DRT).
*   DDoS cost protection.
### Protected Resource Types #EC2 #ELB #CloudFront #Route53 #GlobalAccelerator #ElasticIP #ApplicationLoadBalancer #NetworkLoadBalancer
Specifies the resources that can be explicitly covered by subscribing to Shield Advanced.
### Health-Based Detection #ApplicationHealth #ProactiveMonitoring #CloudWatchAlarms
Using application health checks and CloudWatch alarms for faster, more accurate detection based on application performance.
### DDoS Response Team (DRT) #ExpertSupport #IncidentResponse #24x7
Details the role and benefits of having access to the specialized AWS DRT.
*   Assistance during active DDoS events.
*   Analysis of attacks.
*   Custom mitigation rule creation and application.
*   Proactive engagement for sensitive events.
### Cost Protection #Billing #FinancialSafety #Credits
Explanation of how Shield Advanced helps protect against scaling charges incurred due to DDoS attacks on protected resources.
### Included AWS WAF #Layer7 #WebApplications #BundledService
Details the integration and cost benefits of using AWS WAF with Shield Advanced for application-layer protection.

## Detection Mechanisms #ThreatDetection #Analysis #MonitoringTechniques
Explores the methods AWS Shield uses to identify potential DDoS attacks.
### Network Flow Monitoring #TrafficAnalysis #Baseline #VolumeMetrics
Analyzing traffic volumes, sources, and protocols entering the AWS network.
### Anomaly Detection #Deviation #Heuristics #BehavioralAnalysis
Identifying unusual patterns or deviations from established traffic baselines.
### Signature-Based Detection #KnownAttacks #Patterns #Fingerprinting
Using known attack signatures to identify malicious traffic.
### Health-Based Detection (Advanced) #ApplicationMonitoring #CloudWatchAlarms #PerformanceMetrics
Leveraging application health metrics (e.g., latency, error rates) as indicators of an attack impacting performance.

## Mitigation Techniques #Defense #Countermeasures #TrafficScrubbing
Describes the various methods employed by AWS Shield to counter DDoS attacks.
### Traffic Scrubbing & Filtering #CleaningCenters #MaliciousTrafficRemoval
Diverting traffic to specialized centers to analyze and remove malicious packets before forwarding legitimate traffic.
### Rate Limiting #TrafficControl #Thresholds #SourceLimiting
Restricting the rate of traffic from specific sources identified as potentially malicious.
### SYN Flood Protection #TCP #ConnectionFloods #SYNProxy #SYNCookies
Techniques to handle TCP SYN flood attacks without overwhelming protected resources.
### Reflection Attack Mitigation #UDP #Amplification #DNSAmplification #NTPAmplification
Blocking or mitigating attacks that leverage reflection or amplification techniques (e.g., DNS, NTP, SSDP).
### Challenge Responses (via WAF) #BotDetection #Validation #CAPTCHA
Using challenges to distinguish legitimate users from automated bots, primarily implemented via AWS WAF.
### Geo-Blocking (via WAF/CloudFront) #Geolocation #IPFiltering #RegionalBlocking
Blocking traffic originating from specific geographic locations.
### IP Address Blocking #Blacklisting #SourceBlocking #DenyRules
Directly blocking traffic from known malicious IP addresses or ranges.
### Inline Mitigation #RealTime #AutomaticDefense #NetworkEdge
Applying mitigation techniques directly within the data path for immediate effect.

## Integration with other AWS Services #Ecosystem #Synergy #CombinedProtection
How AWS Shield works alongside other AWS services for comprehensive security.
### AWS WAF #WebApplications #Layer7Protection #RuleManagement
Essential integration for application-layer (Layer 7) protection, managed rules, and custom rules.
### Amazon CloudFront #CDN #EdgeProtection #Caching #LatencyReduction
Using CloudFront distributes content and absorbs traffic at the edge, reducing the load on origin servers and providing a first line of defense.
### Amazon Route 53 #DNS #Availability #Failover #HealthChecks
Provides resilient DNS services, health checks, and traffic routing capabilities, enhancing availability during attacks.
### Elastic Load Balancing (ELB) #LoadBalancing #Scalability #Distribution
Distributes incoming traffic across multiple targets (e.g., EC2 instances), helping to absorb volumetric attacks.
### Amazon CloudWatch #Monitoring #Alarms #Visibility #Metrics
Provides metrics, dashboards, and alarms for monitoring traffic, detecting attacks (especially with Shield Advanced), and understanding attack details.
### AWS Firewall Manager #CentralManagement #PolicyEnforcement #MultiAccount
Allows central configuration and management of Shield Advanced protections and associated AWS WAF rules across multiple AWS accounts and resources.
### AWS Global Accelerator #NetworkPerformance #StaticIP #Anycast
Provides static IP addresses and optimizes network paths, improving application availability and performance, which can be protected by Shield.
### AWS CloudTrail #Logging #Auditing #APICalls
Logs API calls made to AWS Shield for auditing and compliance purposes.

## Monitoring and Reporting #Visibility #Metrics #Logs #Diagnostics
Covers the tools and data available for understanding DDoS activity and Shield's response.
### CloudWatch Metrics #Performance #AttackData #RealTimeMetrics
Specific metrics provided by Shield Standard (basic) and Shield Advanced (detailed attack metrics).
*   Examples: `DDoSDetected`, `DDoSAttackBitsPerSecond`, `DDoSAttackPacketsPerSecond`, `DDoSAttackRequestsPerSecond` (Advanced).
### Global Threat Environment Dashboard #ThreatIntelligence #AttackTrends #SituationalAwareness
Provides insights into global DDoS trends observed by AWS Shield.
### Attack Diagnostics (Advanced) #Forensics #EventAnalysis #PostMortem
Detailed reports and analysis available after an attack for Shield Advanced customers.
### Logging Integration #AuditTrail #Compliance #WAFLogs
Utilizing CloudTrail for API activity and potentially WAF logs for detailed request information during Layer 7 attacks.

## Pricing and Cost Management #Billing #Economics #Subscription
Explains the cost structure of AWS Shield Standard and Advanced.
### Shield Standard Pricing #Free #Included #Automatic
Reiteration that Shield Standard is included at no extra cost for all AWS customers.
### Shield Advanced Pricing Model #SubscriptionFee #DataTransferFee #PerResourceFee
Details the components of Shield Advanced costs:
*   Monthly base fee per organization.
*   Fees based on data transfer out (DTO) from protected resources (CloudFront, ELB, EC2, Global Accelerator).
*   Optional: Fee per resource protected (for resources beyond the base inclusion, depending on pricing model updates).
### DDoS Cost Protection (Advanced) #Credits #SpikeProtection #FinancialRelief
Mechanism for requesting service credits for usage spikes on protected ELB, CloudFront, Route 53, EC2, and Global Accelerator caused by a verified DDoS attack.
### AWS WAF Cost Considerations #IncludedValue #WAFUsage #RuleCosts
Clarification that standard AWS WAF usage fees are waived for web ACLs used with resources protected by Shield Advanced, though custom rule costs might apply.

## Best Practices and Use Cases #Recommendations #Scenarios #Architecture
Guidance on effectively using AWS Shield and designing resilient architectures.
### Architectural Best Practices #ReduceAttackSurface #DefenseInDepth
Designing applications to minimize exposure (e.g., using CloudFront, ELB, Auto Scaling, security groups).
### Protecting Web Applications #WebAppSecurity #Layer7 #WAFIntegration
Combining Shield Advanced with AWS WAF for robust Layer 3/4 and Layer 7 protection.
### Protecting Infrastructure and Network Services #NetworkSecurity #Layer3Layer4 #NonWeb
Using Shield Standard or Advanced for protecting EC2 instances, NLBs, Global Accelerator endpoints directly.
### Gaming Applications #LatencySensitive #HighAvailability #UDPProtection
Specific considerations for protecting real-time, latency-sensitive gaming services.
### Configuring Health Checks Appropriately #ProactiveDetection #ApplicationAware #Route53HealthChecks
Importance of accurate health checks for Health-Based Detection and Route 53 DNS failover.
### Utilizing AWS WAF Managed Rules #ThreatIntelligence #OWASP #BotControl
Leveraging pre-configured WAF rulesets for common threats alongside Shield.
### Engaging the DRT Proactively #HighRiskEvents #SupportPlanning
When and how to engage the DDoS Response Team before anticipated high-risk periods.
### Regular Review and Testing #SecurityPosture #FireDrills #MitigationValidation
Periodically reviewing Shield and WAF configurations and potentially conducting controlled tests.

## Support and Incident Response #Help #Assistance #DRT
Details the support options available, particularly the role of the DRT for Shield Advanced.
### AWS Support Plans #Basic #Developer #Business #Enterprise #GeneralSupport
How standard AWS support plans relate to Shield inquiries.
### DDoS Response Team (DRT) Engagement (Advanced) #SpecializedSupport #24x7 #EscalationPath
Process for contacting the DRT during an attack via AWS Support (Business or Enterprise level required).
### DRT Capabilities #MitigationAssistance #AttackAnalysis #CustomRules
What the DRT can do to help during and after an attack.
### Incident Communication #Reporting #AWSHealthDashboard #Notifications
How AWS communicates DDoS events and mitigation status.

## Comparison and Alternatives #Marketplace #Evaluation #DecisionMaking
Comparing Shield tiers and positioning Shield relative to other solutions.
### Shield Standard vs. Shield Advanced #TierComparison #FeatureDifferences #CostBenefit
Direct comparison of the two service tiers to aid selection.
### AWS Shield vs. Third-Party DDoS Providers #Cloudflare #Akamai #Imperva #VendorComparison
Comparing AWS's native solution with other major DDoS mitigation vendors.
### AWS Shield vs. On-Premises Solutions #HybridCloud #DataCenter #ApplianceComparison
Comparing cloud-based managed DDoS protection with traditional on-premises hardware/software.
### Role of AWS WAF vs. Shield #Layer7vsNetwork #ComplementaryServices #SecurityLayers
Clarifying the distinct but complementary roles of AWS WAF (application layer rules) and AWS Shield (primarily network/transport layer DDoS, with WAF integration for Layer 7 DDoS).
