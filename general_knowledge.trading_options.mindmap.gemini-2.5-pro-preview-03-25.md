# Trading Options #Overview #Derivatives
An introduction to options as financial derivatives, their purpose (speculation, hedging, income), and basic mechanics. Options are contracts giving the buyer the right, but not the obligation, to buy (call) or sell (put) an underlying asset at a specified price on or before a certain date.

## Option Fundamentals & Terminology #Basics #Definitions #Concepts
Core concepts and vocabulary required to understand options trading.
### Underlying Asset #Asset #Security
The financial instrument (stock, ETF, index, commodity, currency) on which the option contract is based.
### Option Types: Calls & Puts #Calls #Puts #Contracts
Explanation of the two primary types of options.
#### Call Options #Call #BuyRight
Gives the holder the right (not obligation) to buy the underlying asset at the strike price before expiration. Used to speculate on price increases or hedge short positions.
#### Put Options #Put #SellRight
Gives the holder the right (not obligation) to sell the underlying asset at the strike price before expiration. Used to speculate on price decreases or hedge long positions.
### Strike Price (Exercise Price) #StrikePrice #ExercisePrice #PricePoint
The predetermined price at which the underlying asset can be bought (call) or sold (put) if the option is exercised.
### Expiration Date #Expiration #TimeLimit #ContractEnd
The specific date by which the option contract must be exercised or becomes worthless.
### Option Premium #Premium #Price #Cost
The market price of the option contract, paid by the buyer to the seller (writer).
### Contract Specifications #Contract #Details
Standardized terms of an options contract, including the multiplier (typically 100 shares for equity options).
### Moneyness #Moneyness #ValueState
Describes the relationship between the option's strike price and the current market price of the underlying asset.
#### In-the-Money (ITM) #ITM
A call option where the underlying price is above the strike price, or a put option where the underlying price is below the strike price. Has intrinsic value.
#### At-the-Money (ATM) #ATM
An option where the strike price is (approximately) equal to the current market price of the underlying asset.
#### Out-of-the-Money (OTM) #OTM
A call option where the underlying price is below the strike price, or a put option where the underlying price is above the strike price. Has no intrinsic value.
### Option Value Components #Valuation #PremiumComponents
Breaking down the factors contributing to the option's premium.
#### Intrinsic Value #IntrinsicValue #RealValue
The amount by which an option is in-the-money. It's the theoretical immediate exercise value (difference between strike and underlying price for ITM options, zero otherwise).
#### Extrinsic Value (Time Value) #ExtrinsicValue #TimeValue #VolatilityValue
The portion of the premium above the intrinsic value. It reflects time until expiration, volatility, interest rates, and dividends. Primarily composed of time decay and implied volatility effects.

## Types of Options #OptionVarieties #Markets
Different categories of options based on the underlying asset or contract terms.
### Equity Options #EquityOptions #StockOptions
Options based on individual stocks.
### Index Options #IndexOptions #MarketIndices
Options based on market indices (e.g., SPX, NDX, VIX). Often cash-settled.
### ETF Options #ETFOptions #FundOptions
Options based on Exchange-Traded Funds.
### Futures Options #FuturesOptions #CommodityOptions
Options contracts on underlying futures contracts (e.g., oil, gold, agricultural products).
### Forex Options (Currency Options) #ForexOptions #CurrencyOptions
Options based on currency exchange rates.
### Weekly Options (Weeklys) #Weeklys #ShortTerm
Options with short expiration cycles, typically expiring each Friday.
### LEAPS (Long-Term Equity AnticiPation Securities) #LEAPS #LongTerm
Options with expiration dates longer than one year, allowing for long-term strategic positions.
### Exotic Options #ExoticOptions #NonStandard
Less common, non-standardized options (e.g., barrier options, binary options - often with higher risk).

## Option Pricing & The Greeks #PricingModels #Greeks #RiskMetrics
Understanding how options are priced and the key risk/sensitivity measures.
### Option Pricing Models #ValuationModels #Theory
Mathematical models used to estimate the theoretical fair value of an option.
#### Black-Scholes Model #BlackScholes #PricingFormula
A widely used model for pricing European options, considering stock price, strike price, time to expiration, volatility, and risk-free interest rate.
#### Binomial Option Pricing Model #BinomialModel #PricingTree
A model representing the underlying asset's price movement over time as a tree of discrete up/down moves.
### Volatility Concepts #Volatility #IV #HV
Understanding the crucial role of volatility in option pricing.
#### Implied Volatility (IV) #ImpliedVolatility #IV #MarketExpectation
The market's forecast of likely future price movement volatility of the underlying asset, implied by the option's current market price. A key component of extrinsic value.
#### Historical Volatility (HV) #HistoricalVolatility #HV #PastMovement
The actual measured volatility of the underlying asset over a past period.
#### Volatility Skew & Smile #VolatilitySkew #VolatilitySmile #IVPatterns
Patterns in implied volatility across different strike prices and expirations.
#### VIX (Volatility Index) #VIX #FearIndex
A measure of expected market volatility based on S&P 500 index options.
### The Greeks #Greeks #RiskSensitivity #OptionMetrics
Measures of an option's sensitivity to various factors. Essential for risk management and strategy selection.
#### Delta #Delta #PriceSensitivity
Measures the rate of change of the option's price relative to a $1 change in the underlying asset's price. Represents directional exposure.
#### Gamma #Gamma #DeltaSensitivity
Measures the rate of change of Delta relative to a $1 change in the underlying asset's price. Represents the sensitivity of directional exposure.
#### Theta #Theta #TimeDecay #TimeSensitivity
Measures the rate of change of the option's price relative to the passage of time (sensitivity to time decay). Generally negative for long options.
#### Vega #Vega #VolatilitySensitivity
Measures the rate of change of the option's price relative to a 1% change in the implied volatility of the underlying asset.
#### Rho #Rho #InterestRateSensitivity
Measures the rate of change of the option's price relative to a 1% change in the risk-free interest rate.

## Basic Option Strategies #BeginnerStrategies #CoreStrategies
Fundamental strategies involving single options or simple combinations.
### Long Call #LongCall #Bullish
Buying a call option, expecting the underlying price to rise significantly. Limited risk (premium paid), unlimited potential profit.
### Long Put #LongPut #Bearish
Buying a put option, expecting the underlying price to fall significantly. Limited risk (premium paid), substantial potential profit (down to zero).
### Covered Call #CoveredCall #IncomeStrategy #NeutralBullish
Owning the underlying stock and selling a call option against it. Generates income (premium received), limits upside potential, provides limited downside protection.
### Cash-Secured Put #CashSecuredPut #IncomeStrategy #NeutralBullish
Selling a put option while having enough cash set aside to buy the stock if assigned. Generates income (premium received), expresses willingness to buy the stock at the strike price.
### Protective Put (Married Put) #ProtectivePut #Hedging #Insurance
Owning the underlying stock and buying a put option. Provides downside protection (like insurance) at the cost of the premium.

## Intermediate Option Strategies #SpreadStrategies #DefinedRisk
Strategies involving simultaneous buying and selling of options, often creating spreads.
### Vertical Spreads #VerticalSpreads #PriceSpreads
Using options with the same expiration date but different strike prices.
#### Bull Call Spread (Debit Call Spread) #BullCallSpread #DebitSpread #ModerateBullish
Buying a call and simultaneously selling a higher-strike call. Limits potential profit and loss, reduces cost/risk compared to a long call.
#### Bear Put Spread (Debit Put Spread) #BearPutSpread #DebitSpread #ModerateBearish
Buying a put and simultaneously selling a lower-strike put. Limits potential profit and loss, reduces cost/risk compared to a long put.
#### Bull Put Spread (Credit Put Spread) #BullPutSpread #CreditSpread #ModerateBullish
Selling a put and simultaneously buying a lower-strike put. Generates net credit, profits if the underlying stays above a certain level. Limited risk and profit.
#### Bear Call Spread (Credit Call Spread) #BearCallSpread #CreditSpread #ModerateBearish
Selling a call and simultaneously buying a higher-strike call. Generates net credit, profits if the underlying stays below a certain level. Limited risk and profit.
### Horizontal Spreads (Calendar/Time Spreads) #CalendarSpreads #TimeSpreads #ThetaStrategies
Using options with the same strike price but different expiration dates. Profits from time decay differences.
#### Long Calendar Spread #LongCalendar #VolatilityPlay
Buying a longer-term option and selling a shorter-term option (same strike). Profits if the stock price stays near the strike as the short-term option decays faster.
#### Short Calendar Spread #ShortCalendar
Selling a longer-term option and buying a shorter-term option (same strike). Less common, profits from specific volatility/time scenarios.
### Diagonal Spreads #DiagonalSpreads #CombinedSpreads
Using options with different strike prices AND different expiration dates. Combines elements of vertical and horizontal spreads.

## Advanced Option Strategies #ComplexStrategies #MultiLeg
More complex strategies involving multiple option legs, often focused on volatility or specific market outlooks.
### Straddles & Strangles #VolatilityStrategies #NonDirectional
Strategies profiting from significant price movement, regardless of direction (long), or from low volatility (short).
#### Long Straddle #LongStraddle #HighVolatility
Buying a call and a put with the same strike price and expiration. Profits from a large move up or down.
#### Short Straddle #ShortStraddle #LowVolatility #Neutral
Selling a call and a put with the same strike price and expiration. Profits if the underlying price stays near the strike. Unlimited risk potential.
#### Long Strangle #LongStrangle #HighVolatility
Buying an OTM call and an OTM put with the same expiration but different strike prices. Cheaper than a straddle, requires a larger price move to profit.
#### Short Strangle #ShortStrangle #LowVolatility #Neutral
Selling an OTM call and an OTM put with the same expiration but different strike prices. Generates more premium than short straddle (wider breakevens), but still unlimited risk.
### Butterfly Spreads #ButterflySpreads #RangeBound #LowVolatility
Strategies with four legs, aiming to profit from the underlying price staying within a narrow range (long butterfly) or moving outside a range (short butterfly). Typically involves three different strike prices.
#### Long Call Butterfly #LongCallButterfly
Buy one lower strike call, sell two ATM calls, buy one higher strike call.
#### Long Put Butterfly #LongPutButterfly
Buy one higher strike put, sell two ATM puts, buy one lower strike put.
### Condors #CondorSpreads #RangeBound #WiderRange
Four-legged strategies similar to butterflies but using four different strike prices, creating a wider profit range.
#### Iron Condor #IronCondor #CreditSpread #Neutral #RangeBound
Combines a bull put spread and a bear call spread. Profits if the underlying stays between the short strikes. Defined risk, net credit received.
#### Long Call Condor #LongCallCondor #DebitSpread
Buy lower strike call, sell lower-middle strike call, sell higher-middle strike call, buy highest strike call.
### Ratio Spreads #RatioSpreads #DirectionalVolatility
Buying and selling an unequal number of options. Can be used for directional bets with reduced cost or specific volatility plays.
### Collars #CollarStrategy #Hedging #RangeBoundStock
Holding stock, selling an OTM call, and buying an OTM put. Limits both upside and downside potential (zero-cost collar possible).
### Backspreads #Backspreads #VolatilityPlay
Selling one option and buying more further OTM options (e.g., sell 1 ATM call, buy 2 OTM calls). Profits from large moves.
### Box Spreads #BoxSpread #Arbitrage #LowRisk
A combination of a bull call spread and a bear put spread on the same underlying, designed to lock in a risk-free profit (rare in practice due to commissions/fees).

## Option Trading Mechanics #Execution #Process #Platforms
The practical aspects of placing and managing option trades.
### Choosing a Broker #BrokerSelection #PlatformChoice
Factors to consider: commissions, platform tools, research, margin rates, customer support.
### Order Types #OrderTypes #TradeExecution
Market orders, limit orders, stop orders, complex multi-leg orders.
### Placing a Trade #TradingProcess #OrderEntry
Steps involved in entering an options order (underlying, expiration, strike, type, quantity, price).
### Option Chains #OptionChain #Quotes #MarketData
Understanding how to read option quote displays (bid, ask, volume, open interest, Greeks).
### Assignment & Exercise #Assignment #Exercise #Settlement
Process by which option sellers fulfill their obligation (assignment) or buyers use their right (exercise). Understanding American vs. European style exercise.
### Early Exercise #EarlyExercise #AmericanOptions
Considerations for exercising an American-style option before expiration (usually related to dividends or deep ITM status).
### Expiration Procedures #ExpirationProcess #PinRisk
What happens on expiration day: automatic exercise (for ITM options), assignment notices, managing expiring positions, pin risk.
### Margin Requirements #Margin #Leverage #BrokerRules
Understanding broker requirements for selling options (especially naked options) or trading spreads, and the risks of leverage.

## Risk Management in Options Trading #RiskControl #Safety #PortfolioProtection
Techniques and principles for managing the inherent risks of options trading.
### Position Sizing #PositionSizing #CapitalAllocation
Determining the appropriate amount of capital to allocate to each trade based on risk tolerance and account size.
### Diversification #Diversification #SpreadRisk
Spreading risk across different underlyings, strategies, and expiration dates.
### Understanding Maximum Loss/Gain #MaxLoss #MaxGain #RiskProfile
Analyzing the risk/reward profile of each strategy before entering a trade.
### Using Stop Losses (Conceptual) #StopLoss #ExitStrategy
Applying mental or conditional stops to limit losses (note: traditional stop-loss orders can be tricky with options due to volatility).
### Hedging Strategies #Hedging #RiskReduction #PortfolioInsurance
Using options to protect existing stock or portfolio positions (e.g., protective puts, collars).
### Adjusting Positions #TradeAdjustment #Management
Techniques for modifying existing option positions in response to market movements or changing outlooks (e.g., rolling, converting spreads).
### Portfolio-Level Risk Management #PortfolioRisk #OverallExposure
Assessing the overall risk exposure (e.g., net delta, net vega) of the entire options portfolio.

## Option Analysis & Evaluation #Analysis #DecisionMaking
Methods used to analyze potential option trades.
### Technical Analysis #TechnicalAnalysis #Charting
Using charts, patterns, indicators (e.g., moving averages, RSI, MACD) on the underlying asset to inform trading decisions.
### Fundamental Analysis #FundamentalAnalysis #UnderlyingValue
Analyzing the underlying company's financial health, industry trends, and economic factors (more relevant for longer-term options like LEAPS or stock replacement).
### Volatility Analysis #VolatilityAnalysis #IVTrading
Assessing implied volatility levels (IV Rank, IV Percentile) to determine if options are relatively cheap or expensive. Trading based on volatility expectations.
### Scenario Analysis & Payoff Diagrams #ScenarioPlanning #PayoffDiagrams #Visualization
Modeling potential profit/loss outcomes based on different underlying price movements and time decay using payoff graphs.
### Probability Analysis #Probability #POP #POT
Estimating the probability of profit (POP) or the probability of the underlying reaching certain price levels based on option prices/IV.

## Taxation of Options #Taxes #IRS #FinancialPlanning
Understanding the tax implications of options trading profits and losses.
### Short-Term vs. Long-Term Capital Gains #CapitalGains #TaxRates
Tax treatment based on holding period (special rules often apply to options).
### Treatment of Premiums #PremiumTaxation
How premiums paid and received are taxed.
### Exercise & Assignment Tax Consequences #ExerciseTax #AssignmentTax
Tax events triggered by exercising or being assigned on an option.
### Wash Sale Rule #WashSale #TaxLossHarvesting
Rules affecting the deduction of losses when similar positions are re-established quickly.
### Straddle Rules #StraddleRules #TaxComplexities
Specific tax rules for offsetting positions like straddles.
### Constructive Sales #ConstructiveSale #TaxRules
Rules that may trigger gains even if a position isn't closed.

## Psychology of Options Trading #TradingPsychology #Mindset #Discipline
The mental and emotional aspects crucial for consistent options trading.
### Greed and Fear #Greed #Fear #Emotions
Managing the common emotional pitfalls that lead to poor decisions.
### Patience and Discipline #Patience #Discipline #RuleFollowing
Sticking to a trading plan and avoiding impulsive actions.
### Overcoming Biases #CognitiveBias #BehavioralFinance
Recognizing and mitigating common biases (e.g., confirmation bias, anchoring).
### Managing Drawdowns #Drawdowns #LosingStreaks
Coping emotionally and strategically with periods of losses.
### Trading Journal #TradingJournal #RecordKeeping #Review
Importance of documenting trades, rationale, and outcomes for learning and improvement.

## Market Structure & Regulation #MarketStructure #Regulation #Compliance
The environment in which options trading takes place.
### Options Exchanges #Exchanges #CBOE #TradingVenues
Major exchanges where options are listed and traded (e.g., CBOE, NYSE Arca, Nasdaq).
### The Options Clearing Corporation (OCC) #OCC #Clearinghouse #CounterpartyRisk
The central clearinghouse that guarantees option contracts, mitigating counterparty risk.
### Regulatory Bodies #Regulators #SEC #CFTC
Government agencies overseeing the options markets (e.g., Securities and Exchange Commission - SEC, Commodity Futures Trading Commission - CFTC).
### Order Flow & Market Makers #MarketMakers #Liquidity #OrderFlow
Understanding how orders are routed and executed, and the role of market makers in providing liquidity.

## Common Mistakes & Pitfalls #Mistakes #Pitfalls #Learning
Frequent errors made by options traders, especially beginners.
### Trading Without Education #LackOfKnowledge #Unprepared
Entering the market without a solid understanding of options mechanics and risks.
### Ignoring Implied Volatility (IV) #IgnoringIV #VolatilityRisk
Buying high IV options or selling low IV options without understanding the implications.
### Misunderstanding Greeks #IgnoringGreeks #RiskMismanagement
Failing to monitor and manage risk exposures indicated by the Greeks.
### Over-Leveraging #OverLeverage #ExcessiveRisk
Trading positions that are too large for the account size, leading to significant losses.
### Lack of a Trading Plan #NoPlan #ImpulsiveTrading
Trading without defined entry/exit rules, risk management, and strategy selection criteria.
### Chasing Profits (FOMO) #FOMO #ChasingTrades
Entering trades based on fear of missing out rather than sound analysis.
### Holding Losing Trades Too Long #HoldingLosses #HopeTrading
Failing to cut losses according to the trading plan.
