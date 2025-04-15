# Game Theory #Overview #Introduction
Game theory is the mathematical study of strategic interactions among rational decision-makers (players). It analyzes how players' choices affect each other's outcomes. It has broad applications in economics, political science, biology, computer science, psychology, and more. #MathematicalModeling #DecisionMaking #Strategy

## Foundational Concepts #Basics #Terminology
Core ideas and definitions essential for understanding game theory. #CoreConcepts #Definitions

### Players #Agents #DecisionMakers
The entities (individuals, groups, firms, nations) making decisions within the game. #Participants
Assumption: Players are typically assumed to be rational, meaning they act to maximize their own utility or payoff given their beliefs. #Rationality #Assumptions

### Strategies #Actions #Choices
A complete plan of action a player will take, specifying the choice for every possible situation or contingency within the game. #PlanOfAction #DecisionRule
#### Pure Strategy #Deterministic #SingleAction
A strategy where a player chooses a specific action with certainty in every situation. #Certainty
#### Mixed Strategy #Probabilistic #Randomized
A strategy where a player randomly chooses between different pure strategies according to certain probabilities. Used when pure strategy equilibria don't exist or to keep opponents guessing. #Randomization #Probability

### Payoffs #Utility #Outcomes
The value, benefit, or utility a player receives based on the combination of strategies chosen by all players in the game. Often represented numerically. #Rewards #Consequences #Value

### Information #Knowledge #Beliefs
What players know about the game rules, payoffs, and actions of other players at different points in time. #Awareness #GameStructure
#### Perfect Information #Transparency #FullKnowledge
Each player, when making a decision, knows all previous moves made by all other players. Chess is an example. #SequentialGames #Observability
#### Imperfect Information #Uncertainty #HiddenActions
Players do not know all previous moves, possibly because decisions are made simultaneously or some actions are hidden. Poker is an example. #SimultaneousGames #IncompleteKnowledge
#### Complete Information #KnownRules #KnownPayoffs
The rules of the game, the players, strategies, and payoffs are common knowledge among all players. Players know the structure and preferences. #CommonKnowledge
#### Incomplete Information (Bayesian Games) #PrivateInformation #UncertainPayoffs
Players have private information about their own or others' payoffs or types. Players form beliefs about others' types. #AsymmetricInformation #Beliefs

### Rationality #Optimization #SelfInterest
The assumption that players make decisions to maximize their own expected payoff, given their beliefs about the game and other players' actions. #DecisionTheory #ExpectedUtility
#### Common Knowledge of Rationality (CKR) #RecursiveBeliefs #Assumptions
The assumption that all players are rational, all players know that all players are rational, all players know that all players know... and so on, infinitely. #Foundation

## Game Representation #Modeling #Frameworks
Methods used to formally describe a game. #GameModels #Formalism

### Normal Form (Strategic Form) #Matrix #SimultaneousMoves
Represents a game using a matrix, showing players, strategies, and payoffs for each combination of strategies. Best suited for simultaneous move games or games where timing is irrelevant. #PayoffMatrix #StaticGames

### Extensive Form #GameTree #SequentialMoves
Represents a game using a tree structure, showing the sequence of moves, players' choices at each decision node, information sets, and payoffs at terminal nodes. Best suited for sequential games. #DecisionTree #DynamicGames #InformationSets

## Classification of Games #GameTypes #Taxonomy
Different ways to categorize games based on their structural properties. #Categorization #Properties

### Cooperative vs. Non-Cooperative #Alliances #SelfEnforcement
Distinction based on whether players can form binding commitments and enforce agreements. #BindingAgreements #Coalitions
#### Cooperative Games #CoalitionFormation #ShapleyValue
Players can form binding agreements (contracts). Focuses on how coalitions form and distribute payoffs (e.g., Shapley value, Core). #Bargaining #FairDivision
#### Non-Cooperative Games #IndividualStrategy #NashEquilibrium
Players cannot form binding agreements; any cooperation must be self-enforcing (i.e., in each player's individual interest). Focuses on individual strategies and equilibria. #Competition #SelfInterest

### Simultaneous vs. Sequential #Timing #OrderOfPlay
Distinction based on the timing of players' moves. #GameFlow #DecisionTiming
#### Simultaneous Games #ConcurrentDecisions #NormalForm
Players choose their actions at the same time, or without knowing the other players' current actions. Often represented in normal form. #StaticGames
#### Sequential Games #TurnBased #ExtensiveForm
Players move in a defined order, and later players may have information about earlier players' moves. Often represented in extensive form. #DynamicGames #BackwardInduction

### Zero-Sum vs. Non-Zero-Sum #PayoffStructure #ConflictVsCooperation
Distinction based on whether the sum of payoffs is constant. #GameOutcome #TotalPayoff
#### Zero-Sum Games #PureConflict #ConstantSum
One player's gain is exactly equal to the other player(s)' loss. The total payoff across all players is always zero (or a constant). #Competition #Minimax
#### Non-Zero-Sum Games #VariableSum #MixedMotive
Players' interests are not strictly opposed; outcomes can result in mutual gains or mutual losses. The sum of payoffs varies depending on the strategies chosen. #CooperationPossible #WinWin #LoseLose

### Symmetric vs. Asymmetric #PlayerRoles #IdenticalStrategies
Distinction based on whether players have the same strategy sets and payoffs under role reversal. #Symmetry #Fairness
#### Symmetric Games #EqualFooting #InterchangeablePlayers
Players have the same set of strategies, and the payoffs depend only on the strategies played, not on who played them (e.g., Prisoner's Dilemma if payoffs are identical). #StrategySets
#### Asymmetric Games #DifferentRoles #UnequalStrategies
Players may have different strategy sets or payoffs. Roles matter. (e.g., Ultimatum Game). #RoleDifferences #UniquePayoffs

### Perfect vs. Imperfect Information #KnowledgeDuringPlay #InformationSets
Distinction based on what players know when they make their move. (Already defined under Foundational Concepts/Information). #GameKnowledge

### Complete vs. Incomplete Information #KnowledgeOfGame #BayesianGames
Distinction based on whether players know all parameters of the game (payoffs, types). (Already defined under Foundational Concepts/Information). #GameParameters

### Discrete vs. Continuous Games #StrategySpace #ActionTypes
Distinction based on the set of available strategies. #Calculus #Optimization
#### Discrete Games #FiniteActions #CountableStrategies
Players choose from a finite or countably infinite set of strategies. #CombinatorialGames
#### Continuous Games #InfiniteActions #RealNumbers
Players choose strategies from a continuous set (e.g., setting a price, choosing an effort level). Often involve calculus. #DifferentialGames #Cournot

### Finite vs. Infinite Games #GameDuration #Repetition
Distinction based on the number of moves or stages. #GameLength
#### Finite Games #LimitedMoves #TerminalNode
The game ends after a fixed number of moves or has a finite game tree. #Termination
#### Infinite Games (Repeated Games) #EndlessPlay #LongTermInteraction
The game is played potentially infinitely, or for an unknown number of rounds. Allows for reputation, cooperation, and punishment. #RepeatedGames #FolkTheorem

## Solution Concepts #Equilibrium #Prediction
Methods for predicting the outcome of a game assuming rational players. #GameSolution #RationalOutcome

### Dominance #StrategyElimination #RationalChoice
Identifying strategies that are always better or worse than others, regardless of what opponents do. #DominatedStrategy #DominantStrategy
#### Strictly Dominated Strategy #InferiorChoice #NeverBest
A strategy that yields a lower payoff than another strategy for every possible combination of opponents' strategies. Rational players never play strictly dominated strategies. #Elimination
#### Weakly Dominated Strategy #PotentiallyInferior #SometimesWorse
A strategy that yields a payoff less than or equal to another strategy for all opponent actions, and strictly less for at least one. #Suboptimal
#### Iterated Elimination of Dominated Strategies (IEDS/IESDS) #Simplification #RationalityAssumption
A process of simplifying the game by repeatedly removing dominated strategies. Order of elimination can matter for weakly dominated strategies. #GameReduction #SolutionMethod

### Nash Equilibrium (NE) #Stability #MutualBestResponse
A set of strategies (one for each player) such that no player can unilaterally improve their payoff by changing their own strategy, given the strategies chosen by the other players. The cornerstone of non-cooperative game theory. #JohnNash #NoRegret #StableOutcome
#### Pure Strategy Nash Equilibrium (PSNE) #DeterministicEquilibrium #StableAction
A Nash Equilibrium where all players choose a pure strategy. #NonRandomized
#### Mixed Strategy Nash Equilibrium (MSNE) #ProbabilisticEquilibrium #Indifference
A Nash Equilibrium where at least one player plays a mixed strategy. Players are indifferent between the pure strategies they mix over. #RandomizedEquilibrium

### Refinements of Nash Equilibrium #AddressingMultiplicity #Plausibility
Concepts designed to select more plausible or robust equilibria when multiple Nash Equilibria exist, especially in dynamic games. #EquilibriumSelection #Robustness
#### Subgame Perfect Nash Equilibrium (SPNE) #BackwardInduction #SequentialRationality
A Nash Equilibrium where the players' strategies constitute a Nash Equilibrium in every subgame of the original game. Eliminates non-credible threats in sequential games. Applied using backward induction. #ReinhardSelten #CredibleThreats
#### Perfect Bayesian Equilibrium (PBE) #IncompleteInformation #BeliefUpdating
A refinement for games of incomplete information. Specifies strategies AND beliefs about players' types, requiring strategies to be optimal given beliefs and beliefs to be consistent with strategies (using Bayes' rule where possible). #BayesianUpdating #SignalingGames
#### Trembling Hand Perfect Equilibrium #Mistakes #Robustness
An equilibrium that remains optimal even if there's a small probability that players make unintended "mistakes" (trembles). #RobustEquilibrium #Selten

### Minimax / Maximin (Zero-Sum Games) #WorstCase #SecurityLevel
In two-player zero-sum games, the concept where players choose strategies to minimize their maximum possible loss (minimax) or maximize their minimum guaranteed gain (maximin). The minimax theorem states these values are equal in such games. #VonNeumann #SecurityStrategy

### Correlated Equilibrium #CoordinationDevice #Mediator
A broader solution concept than Nash Equilibrium where players can coordinate their strategies based on a shared random signal from a mediator. Can lead to outcomes better than NE. #RobertAumann #Coordination

### Evolutionary Stable Strategy (ESS) #EvolutionaryGameTheory #StabilityAgainstMutants
A strategy such that, if adopted by a population, it cannot be invaded by any alternative (mutant) strategy that is initially rare. Based on biological evolution concepts. #JohnMaynardSmith #PopulationDynamics

## Specific Game Types & Examples #ClassicGames #Illustrations
Well-known games illustrating key game theory concepts. #CaseStudies #Models

### Prisoner's Dilemma #CooperationFailure #DominantStrategyNE
A game where individual rationality leads to a collectively suboptimal outcome. Illustrates the conflict between self-interest and mutual benefit. #Defection #SocialDilemma

### Battle of the Sexes #CoordinationGame #MultipleEquilibria
A coordination game with two Nash Equilibria (one preferred by each player), highlighting the challenge of coordinating on a mutually agreeable outcome. #CoordinationProblem #Compromise

### Stag Hunt (Assurance Game) #Coordination #Trust #RiskDominance
A game illustrating the tension between safety (hunting hare alone) and mutually beneficial cooperation (hunting stag together). Has two pure strategy Nash equilibria. #Cooperation #RiskAversion

### Chicken (Hawk-Dove) #AntiCoordination #Brinkmanship
An anti-coordination game where players prefer to choose opposite actions (e.g., swerving vs. going straight). Two pure strategy equilibria where one yields and one doesn't. #Conflict #Escalation

### Matching Pennies #ZeroSum #MixedStrategy
A simple zero-sum game with no pure strategy Nash Equilibrium, requiring mixed strategies. #NoPSNE #RandomizationExample

### Ultimatum Game #Bargaining #Fairness #SequentialMoves
A sequential bargaining game where one player proposes a division of a sum, and the other accepts or rejects. Rejection means neither gets anything. Tests rationality vs. fairness. #Proposal #AcceptReject

### Dictator Game #Altruism #Fairness #NoStrategy
A simplified version of the Ultimatum game where the second player cannot reject; the first player simply dictates the allocation. Used to study altruism. #Generosity #SocialPreferences

### Centipede Game #BackwardInductionParadox #TrustSequential
A sequential game where players can gain by passing the move to the other, but backward induction suggests the first player should defect immediately. Shows limitations of backward induction assumptions. #Paradox #CooperationPuzzle

### Cournot Competition #Oligopoly #QuantityCompetition
An economic model where firms compete by choosing output quantities simultaneously. #MarketStructure #Duopoly

### Bertrand Competition #Oligopoly #PriceCompetition
An economic model where firms compete by setting prices simultaneously. Can lead to price wars and zero economic profit under certain conditions. #PriceWars #MarketPower

### Auctions #Bidding #MechanismDesign
Games involving bidding for goods or services. Different types (English, Dutch, Sealed-bid) have different strategic properties. #BiddingStrategy #RevenueMaximization

## Dynamic and Repeated Games #TimeDimension #LongTermRelationships
Games that unfold over time or are played multiple times. #TemporalGames #InteractionDynamics

### Subgame Perfection #SequentialRationality #Credibility
Solution concept for sequential games ensuring strategies are optimal at every decision point (subgame). Found via backward induction. #BackwardInduction #DynamicConsistency

### Repeated Games #Reputation #Cooperation #Punishment
Games where a base game (stage game) is played multiple times by the same players. Allows for strategies based on past behavior (e.g., tit-for-tat). #FolkTheorem #EnduringRelationships
#### Finitely Repeated Games #EndgameEffect #BackwardInductionApplies
If the number of repetitions is known and finite, backward induction often unravels cooperation. #KnownHorizon
#### Infinitely Repeated Games (or Unknown End) #CooperationPossible #DiscountFactor
Cooperation can be sustained as a Nash equilibrium if players are sufficiently patient (high discount factor) using trigger strategies. #TriggerStrategy #PatientPlayers

### Stochastic Games #ProbabilisticTransitions #DynamicStates
Games where transitions between states depend probabilistically on players' actions. Combines elements of repeated games and Markov decision processes. #StateTransitions #Randomness

## Games of Incomplete Information (Bayesian Games) #Uncertainty #Beliefs
Games where players lack common knowledge about some aspect of the game, typically others' payoffs (types). #PrivateInformation #AsymmetricInfo

### Bayesian Nash Equilibrium (BNE) #IncompleteInfoEquilibrium #ExpectedPayoffs
An equilibrium concept for static games of incomplete information. Players' strategies must maximize their expected payoff given their beliefs about opponents' types and opponents' strategies. #Harsanyi #BeliefConsistency

### Signaling Games #InformationTransmission #CredibleSignals
Dynamic games where an informed player (Sender) takes an action (sends a signal) to influence the beliefs and actions of an uninformed player (Receiver). #Signaling #Screening #AdverseSelection #MoralHazard

### Mechanism Design #ReverseGameTheory #Implementation
The "reverse engineering" aspect of game theory: designing game rules (mechanisms) to achieve a desired outcome, assuming players act strategically. #IncentiveCompatibility #AuctionDesign #VotingSystems

## Cooperative Game Theory #Coalitions #ValueAllocation
Focuses on the formation of cooperating groups (coalitions) and how the joint payoff should be distributed among members. #GroupFormation #FairDistribution

### The Core #Stability #NoBlockingCoalition
A set of payoff allocations where no coalition of players has an incentive to break away and form their own group, as they cannot guarantee themselves a better payoff by doing so. #CoalitionStability #GroupRationality

### Shapley Value #Fairness #MarginalContribution
A solution concept that assigns a unique payoff distribution based on players' average marginal contributions to all possible coalitions. Satisfies certain fairness axioms. #AxiomaticApproach #ContributionBased

### Bargaining Theory #Negotiation #Agreement
Analyzes how rational players reach agreements in situations involving potential gains from cooperation. #NashBargainingSolution #RubinsteinBargaining

## Evolutionary Game Theory (EGT) #Biology #PopulationDynamics
Applies game theory concepts to populations of players where strategies with higher payoffs become more common over time, often inspired by biological evolution. Assumes bounded rationality or learning rather than full rationality. #EvolutionaryStability #ReplicatorDynamics #Learning

### Evolutionary Stable Strategy (ESS) #Stability #InvasionResistance
A strategy that, if adopted by a population, cannot be successfully invaded by a small group of mutants playing a different strategy. #PopulationGames #NaturalSelectionAnalogy

### Replicator Dynamics #StrategyFrequency #LearningModels
Mathematical models describing how the prevalence of different strategies changes in a population over time based on their relative success (payoffs). #PopulationEvolution #StrategyAdoption

## Behavioral and Experimental Game Theory #Psychology #RealBehavior
Studies how real people actually behave in strategic situations, often deviating from predictions of classical game theory based on perfect rationality. #BoundedRationality #CognitiveBiases #Experiments

### Bounded Rationality #LimitedCognition #Heuristics
Models that relax the assumption of perfect rationality, acknowledging cognitive limitations, heuristics, and imperfect information processing. #HerbertSimon #DecisionMakingLimits

### Fairness and Altruism #SocialPreferences #OtherRegarding
Incorporating players' concerns for fairness, equity, reciprocity, or the well-being of others into their utility functions. #InequityAversion #Reciprocity

### Experimental Methods #LabExperiments #FieldExperiments
Using controlled experiments with human subjects to test game theory predictions and observe actual strategic behavior. #EmpiricalTesting #BehavioralInsights

## Applications of Game Theory #RealWorld #Interdisciplinary
Use of game theory principles in various fields. #PracticalUse #CaseStudies

### Economics #MarketCompetition #Auctions #Bargaining
Analysis of oligopolies (Cournot, Bertrand), auctions, bargaining, contract theory, public goods, market design. #Microeconomics #IndustrialOrganization

### Political Science #Voting #InternationalRelations #Conflict
Modeling elections, legislative bargaining, coalition formation, arms races, international treaties, conflict resolution. #PoliticalStrategy #PolicyMaking

### Biology #Evolution #AnimalBehavior
Explaining the evolution of cooperation, conflict strategies (Hawk-Dove), signaling, parental care, sex ratios using EGT. #BehavioralEcology #EvolutionaryBiology

### Computer Science #AI #Networks #Cryptography #Algorithms
Designing algorithms for multi-agent systems, network routing, cryptography, resource allocation, online auctions. #AlgorithmicGameTheory #ArtificialIntelligence

### Philosophy #Ethics #SocialNorms #Language
Analyzing the emergence of social norms, ethical rules, conventions, and the strategic aspects of language use. #NormativeBehavior #PhilosophyOfLanguage

### Business Strategy #Pricing #Negotiation #EntryDecisions
Informing decisions on pricing, market entry, R&D investments, advertising, negotiation tactics, supply chain interactions. #ManagementScience #StrategicManagement

### Psychology #SocialInteraction #DecisionBiases
Understanding social dilemmas, trust, cooperation, and how cognitive biases affect strategic decision-making. #SocialPsychology #CognitiveScience

## History and Key Figures #Development #Pioneers
Major milestones and influential thinkers in game theory. #HistoricalContext #Influences

### Early Ideas #Cournot #Zermelo
Precursors to modern game theory, including Cournot's duopoly model and Zermelo's theorem on games like chess. #Origins

### von Neumann & Morgenstern #Formalization #Book
Publication of "Theory of Games and Economic Behavior" (1944), establishing game theory as a field. Introduced utility theory and minimax theorem for zero-sum games. #Founders #UtilityTheory

### John Nash #NashEquilibrium #NonCooperativeTheory
Developed the Nash Equilibrium concept, extending game theory to non-cooperative, non-zero-sum games. Nobel laureate. #NobelPrize #EquilibriumConcept

### Selten & Harsanyi #Refinements #IncompleteInformation
Developed refinements like Subgame Perfect Equilibrium (Selten) and Bayesian Games for incomplete information (Harsanyi). Nobel laureates with Nash. #NobelPrize #AdvancedConcepts

### John Maynard Smith #EvolutionaryGameTheory #ESS
Applied game theory to biology, developing the concept of Evolutionary Stable Strategy (ESS). #BiologyApplication #Evolution

### Aumann, Shapley, Schelling, Roth, etc. #ContinuedDevelopment #Nobelists
Numerous other contributors developing areas like cooperative game theory (Shapley, Aumann), correlated equilibrium (Aumann), focal points (Schelling), mechanism design and matching markets (Roth), etc. #ModernGameTheory #FurtherContributions

## Criticisms and Limitations #Challenges #Assumptions
Acknowledged weaknesses and areas where game theory struggles. #Critique #Scope

### Rationality Assumption #BehavioralCritiques #Realism
The core assumption of perfect rationality is often unrealistic for human behavior. #BoundedRationality #CognitiveLimits

### Multiplicity of Equilibria #PredictionProblem #SelectionIssue
Many games have multiple Nash equilibria, making it difficult to predict the actual outcome without further refinements or context. #EquilibriumSelection #Ambiguity

### Common Knowledge Assumption #InformationRequirements #Unrealistic
The assumption that the game structure and rationality are common knowledge can be very strong. #Beliefs #InformationLimits

### Complexity #ComputationalIssues #Scalability
Analyzing complex games with many players or strategies can become computationally intractable. #LargeGames #Tractability
