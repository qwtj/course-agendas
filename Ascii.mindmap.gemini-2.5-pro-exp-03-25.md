```markdown
# ASCII #CharacterEncoding #Standard #ComputingHistory
American Standard Code for Information Interchange. A foundational character encoding standard for electronic communication, representing text in computers and other devices. Originally based on the English alphabet.

## History and Development #Origins #Evolution #Standardization
The creation and timeline of the ASCII standard.

### Precursors #Telegraphy #Baudot #FIELDATA #Teleprinters
Influence of earlier codes like telegraph codes (Morse, Baudot) and teleprinter systems. Bell data services promoted a 7-bit code for Teletype Model 33/35. [1, 4, 10, 13]
Needed more than 64 codes (6-bit) to include needed symbols and control characters compatible with existing standards (ITA2, FIELDATA, EBCDIC). [1]

### Standardization Process #ASA #ANSI #X3Committee
Work began in May/October 1960/1961 under the American Standards Association (ASA) X3.2 subcommittee. [1, 4, 13, 32]
Bob Bemer (IBM) proposed a common code in 1961. [10, 13, 32]
Key goal: Convenient sorting (alphabetization) compared to older codes. [1, 4]

### Publication Milestones #1963 #1967 #1986
First edition published as ASA X3.4-1963. [1, 4, 13, 20]
Major revision in 1967. [1, 4, 13]
Minor revision in 1968 (no graphic changes). [10, 13]
Further revisions/updates in 1977 and 1986. [1, 4, 13]

### Adoption and Mandates #FederalStandard #IBM #Internet
Mandated as a US federal standard by President Lyndon B. Johnson in 1968 for government systems (effective July 1969) to ensure interoperability. [10, 13]
Initially faced slow adoption; IBM used EBCDIC for OS/360 (1964). [13]
Became standard for network interchange (RFC 20 in 1969, later elevated to Internet Standard). [1, 2]
Used in IBM PC (1981). [13]
Most common encoding on WWW until surpassed by UTF-8 in 2008. [4]

## Structure and Definition #Format #Layout #Encoding
How ASCII is defined and organized.

### 7-Bit Encoding #BinaryRepresentation #CodePoints
Uses 7 bits to represent characters, allowing for 128 unique code points (0-127). [1, 5, 9, 18, 30, 32]
Each character assigned a unique integer value. [1, 11, 19]
Example: 'A' is decimal 65 (binary 1000001), 'a' is decimal 97 (binary 1100001), '1' is decimal 49. [1, 19]

### Control Characters (Non-Printable) #C0Controls #DeviceControl #Formatting
Codes 0-31 (decimal) and 127 (decimal). [1, 18, 19, 25, 30]
Total of 33 non-printing control codes. [1, 4]
Originally designed for controlling teletypewriters and peripheral devices (like printers) or managing data streams. [1, 2, 18, 25]
Examples: Line Feed (LF, 10), Carriage Return (CR, 13), Tab (HT, 9), Backspace (BS, 8), Escape (ESC, 27), Delete (DEL, 127). [1, 18, 20]
Many are now obsolete, but some (LF, CR, HT) remain common. [1, 2, 18]
Do not represent printable glyphs but signals or formatting instructions. [1, 18]
Can be represented by placeholder symbols for debugging (e.g., per ISO 2047). [1]

### Printable Characters #Letters #Digits #Punctuation #Symbols #Space
Codes 32-126 (decimal). [1, 18, 19, 25]
Total of 95 printable characters. [1, 4, 18]
Includes:
    *   Space (Code 32 - considered an invisible graphic). [4, 5, 18]
    *   Digits 0-9 (Codes 48-57). [1, 5, 18, 20]
    *   Uppercase Latin letters A-Z (Codes 65-90). [1, 5, 18, 20]
    *   Lowercase Latin letters a-z (Codes 97-122). [1, 5, 18, 20]
    *   Punctuation and Symbols (e.g., !, @, #, $, %, &, *, +, -, ., /, :, ;, <, =, >, ?, [, \, ], ^, _, `, {, |, }, ~). [1, 5, 18, 20]

### Character Order #Sorting #Alphabetization
Designed for convenient sorting. [1, 4]
Order details: Digits and many punctuation marks come before letters; All uppercase letters come before lowercase letters (e.g., 'Z' precedes 'a'). [1]

### Parity Bit (Optional 8th Bit) #ErrorChecking #DataTransmission
The 8th bit was sometimes used for error checking (parity) in data transmission or initially set to zero. [17, 18]
Parity checks help detect if an error occurred but not the specific cause. [18]

## Extended ASCII and Variants #8Bit #CodePages #Proprietary #ISO8859
Extensions and variations beyond the original 7-bit standard.

### Concept of Extended ASCII #8BitEncoding #256Characters
Not a single standard, but various 8-bit encodings that keep the original 128 characters (0-127) and add 128 more (128-255). [11, 17, 21, 28]
Uses the 8th bit to double the character set to 256. [18, 20, 21, 30]
Developed as 8-bit computers became common in the 1970s/1980s. [2, 21]

### Motivation #LanguageSupport #Symbols #Graphics
Need to represent characters for non-English languages (esp. Western European), special symbols, and graphical elements (box drawing). [2, 17, 20, 21, 28, 30]
Standard ASCII was insufficient for many languages. [7, 9, 10]

### Code Pages #IBM #Microsoft #Vendors
Vendors (like IBM, Microsoft) created specific 8-bit character sets called "code pages" for different languages or purposes. [17, 21, 27]
Examples: CP437 (Original IBM PC), CP850 (DOS Latin 1), Windows-1252 (Windows Latin 1). [21, 27, 28, 34]
Led to compatibility issues due to lack of a single standard. [7, 10, 17, 21]

### ISO/IEC 8859 Series #InternationalStandard #Latin1
An early international standard formalizing ASCII extensions for various language groups. [21]
ISO 8859-1 (Latin-1) covers most Western European languages and is widely known. [21]
Other parts cover Cyrillic, Greek, Arabic, Hebrew, etc. [17, 21]

### Relationship to Other Encodings #EBCDIC #Unicode
EBCDIC: Another character encoding mainly used by IBM mainframes, also with many variants. [2, 13, 17, 21]
Unicode: A modern, universal standard designed to overcome limitations of ASCII and code pages, encompassing characters for nearly all world languages. ASCII is a subset of Unicode (first 128 characters). [1, 2, 8, 9, 11, 14, 16, 17, 21, 32]

## Usage and Applications #Computing #Communication #Files
Where and how ASCII is used.

### Text Files #PlainText #TXT #CSV
Fundamental format for plain text files (.txt). [19, 23]
Used in configuration files (especially older Unix/Linux systems). [23, 33]
Basis for structured text data like Comma Separated Values (.csv). [23]

### Programming #SourceCode #Syntax #Strings
Source code for many programming languages is written in ASCII or ASCII-compatible encodings. [1, 19, 23]
String literals and character data types often rely on ASCII. [19]
Language syntax often influenced by available ASCII punctuation. [1]

### Data Interchange #Protocols #Networking #LegacySystems
Used in network protocols like HTTP, FTP (ASCII mode), SMTP (email). [19, 23, 29]
Facilitates data exchange between different systems due to its universality (within its character limits). [2, 23]
Essential for compatibility with legacy systems. [3, 23]

### Command Line Interfaces (CLI) #Shell #Configuration
Used for commands and text output in terminals and CLIs. [33]
Used in router configurations via CLI (Telnet/SSH). [33]

### Data Logging #Logs #Readability
Often used for system and application log files due to human readability and simplicity. [23]

### Input Methods #AltCodes
On Windows, Alt codes allow inputting characters (including extended ASCII) by holding Alt and typing the decimal code on the numpad. [28]

## Limitations and Disadvantages #Drawbacks #Issues #Obsolescence
Problems and shortcomings of the ASCII standard.

### Limited Character Set #EnglishCentric #Internationalization
Only 128 characters (95 printable) is insufficient for most languages beyond English. [1, 2, 7, 9, 16]
Cannot represent accented characters, non-Latin scripts (Cyrillic, Greek, Asian languages, etc.), or many symbols directly. [2, 7, 9, 10]
Extended ASCII attempts were fragmented and still limited. [7, 9]

### Lack of Rich Text Formatting #NoMarkup #Appearance
Does not define mechanisms for text structure, layout, or appearance (bold, italics, fonts, etc.). Requires other schemes like markup languages (HTML, Markdown). [1]

### Ambiguity in Control Codes #Obsolete #Interpretation
Original meanings of some control codes were ambiguous or became obsolete. [1, 4]

### Data Corruption Vulnerability #7BitIssues
Using only 7 bits can make it vulnerable if systems assume 8 bits or if the 8th bit (parity) is misinterpreted or corrupted. [3]

### Modern Context #Unicode #UTF8 #Obsolescence
Largely superseded by Unicode (especially UTF-8) for modern applications needing broader character support. [2, 4, 9]
While technically obsolete for global use, its base remains foundational within Unicode. [2]

## ASCII Art #CreativeUse #DigitalCulture #Emoticons
Using ASCII characters to create images and visual representations.

### Definition and Technique #TextArt #CharacterGraphics
Graphic design using printable ASCII characters to form pictures. [12, 15]
Translates visual content into text, usable in text-only environments. [15]
Ranges from simple emoticons `:-)` to complex illustrations. [12, 15]

### History and Context #BBS #Forums #Email #CodeComments
Originated in the 1960s-70s, popular on early platforms like teletypes, BBSs, Usenet, email, and in code comments. [15, 26]
Flourished when graphical capabilities were limited. [15, 26]
Initially linked to computer underground/piracy ("warez") scene, later dedicated art groups/BBSs emerged. [26]

### Cultural Impact #DigitalExpression #Community #Nostalgia
Formed a shared visual language in early online communities. [15, 24, 26]
Represents creativity within technical constraints. [15]
Influenced digital culture, emoticons, and some graphic design aesthetics. [12, 24]
Contemporary artists sometimes use it to comment on digital culture or for its retro aesthetic. [15, 22, 24]
Its relevance declined with widespread graphics on the internet, but it persists as a niche art form. [26]

## Technical Aspects #Implementation #Binary #Parity
Deeper technical details.

### Binary Representation #IntegerMapping
Characters are stored and transmitted as their corresponding 7-bit binary integer values. [1, 18, 32]

### Use in APIs and Programming Languages #CharacterFunctions #StringHandling
Languages provide functions to get ASCII/Unicode values of characters (e.g., `ord()` in Python, `charCodeAt()` in JavaScript) and vice-versa (e.g., `chr()`, `fromCharCode()`). [14, 19, 31]
String manipulation often implicitly uses ASCII or compatible encodings. [19]

### Parity Checking #ErrorDetection
The 8th bit could optionally be used for parity to detect single-bit errors during transmission, though not for correction. [17, 18]
```
