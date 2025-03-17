# Knowledge Repository

This repository is a collection of notes, summaries, and synopses on a wide range of topics, from software development and computer science to history, mathematics, and more. It serves as a personal knowledge base and a reference point for various subjects.

## Contents

The repository is organized by topic, with each topic having its own markdown file (`.md`). Some topics also have synopsis files (`-synopsis.md`) for quick overviews and mind maps (`.txt`) for visual representations.

Here's a high-level overview of the topics covered:

### Software Development & Engineering

*   **Languages & Frameworks:** Angular, React, Java, Javascript, Kotlin, Python, Go, C, C++, Rust, Typescript, Swift, Objective-C, PHP
*   **Front-End:** Angular NgRX, React Redux, React, CSS, SCSS, Tailwind, CSS Animations, ThreeJs, ElectronJs, Deno, Nextjs, Zsh
*   **Back-End:** Spring Framework, Hibernate, Python Flask, Nodejs, gRPC, RabbitMQ, Kafka
*   **Databases:** SQL, SQL Injection, Database Security, Database Administration, Database Design, Database Maintenance, Redis, Memcached, Sqlite, Vector Databases
*   **Cloud:** AWS (Solutions Architect, Developer, S3, Macie, CDK), Azure Developer, Serverless Computing
*   **DevOps:** Kubernetes, Docker, Ansible, Pulumi, Infrastructure as Code, Jenkens CICD, Helm, PM2, Caddy Proxy, HAProxy, Squid Proxy, Vercel
*   **Testing:** Cypress, Playwright, Puppeteer, Karate Automation, Cucumber Automation, ChaiJs, Jasmine, SinonJs, STAF Automation, Vitest
*   **Mobile Development:** iOS Development, Mobile Application Development, MacOS Development
*   **Code Quality & Security:** Static Code Analysis, Secure Coding, OWASP, Code Security with Sonar, Javascript XSS, Locking Down SQL Security, Log4j
*   **Build Systems & Dependency Managers:** Yarn Package Manager, SW Build Systems, SW Dependency Managers, Python Poetry, NX Mono Application Framework
*   **Other:** Microservices Architecture, Rest API Development, Event Driven Architecture, Stream Processing, GraphQL, Web Assembly, Web3 Development, Internet of Things (IoT), Cyber Physical Systems, Real-time Operating Systems

### Computer Science & Mathematics

*   **Algorithms & Data Structures:** Algorithms and Data structures, Structures and Algorithms
*   **Mathematics:** Algebra, Linear Algebra, Calculus (1, 2, 3), Differential Equations, Plane Trigonometry, Number Theory, Combinatorics, Category Theory, Discrete Mathematics, Numerical Analysis, Probability and Statistics, Stochastic Processes, Graph Theory, Mathematics
*   **Physics:** Physics Classical Mechanics, Thermodynamics, Electric Circuits
*   **Information & Computation:** Information Theory, Computational Complexity Theory, Compiler Design, Formal Verification
*   **Security:** Cryptography, Quantum Cryptography, Certified Information Systems Security Professional (CISSP), Database Security, Cloud Computing Security

### Artificial Intelligence & Machine Learning

*   **Core Concepts:** Machine Learning, Reinforcement Learning, Learning Machine Learning
*   **Specific Models:** Deep Q-Networks (DQNs), Wasserstein Loss Function, Machine Learning CLIP
*   **AI Agents:** Artificial Intelligence Agents
*   **RAG:** Artificial Intelligence RAG
*   **NLP:** Natural Language Processing (NLP)
*   **LLMs:** LLM Prompt Engineering
*   **Tools & Libraries:** Tensorflow, PyTorch, Librosa
*   **Ethics:** Ethical Considerations in AI

### History

*   **Empires:** Akkadian Empire, Egyptian Empire, Assyrian Empire, Babylonian Empire, Persian Empire, Indian Empire, Greek Empire, Chinese Empire, Roman Empire, Byzantine Empire, Holy Roman Empire, Mesopotamian Empires
*   **Conflicts:** World War I, World War II, Vietnam War, US Civil War, The Crusades
*   **Inquisitions:** Roman Inquisition, Medieval Inquisition, Spanish Inquisition, Historical Inquisitions
*   **Other:** Knights Templar, Germanys Third Reich, The Manson Family, Life of Charleas Manson, Timeline of Western Intellectual History, Timeline of Greek Intellectual Periods, U.S. Presidents, U.S. History

### Music

*   **Theory:** Music Theory, Circle of Fifths, Diatonic Appregios & Modes
*   **Software:** Apple Logic Pro, Apple Garage Band, Davinci Studio, Pixelmator, Blender 3D, Final Cut Pro
*   **Audio Engineering:** Audio Engineering

### Other

*   **Space Exploration & Technology:** Space Exploration and Technology, Space X
*   **Security:** Database Security, Cloud Computing Security
*   **Programming Tools & Concepts:** VIM, Bash, Git, SW Build Systems, Design Patterns, Software Architecture Patterns
*   **Proxies:** Caddy Proxy, HAProxy, Squid Proxy
*   **Operating Systems:** Linux Admin, Linux Filesystems, Operating System Kernel Development, Operating System Design
*   **Virtualization:** Virtual Reality (VR), Augmented Reality (AR)
*   **Medical:** Medical Diseases, Skin Disorders, Bodily Systems
*   **Visual Arts:** Color Theory, Color Blend Modes, Creative Coding, Computer Graphics
*   **Engineering & Design:** Electrical Engineering, Electric Circuits, Gasoline Engine
*   **Legal & Ethical:** Ethical Considerations in AI
*   **Misc:** Learning Spoken Languages, Notable Scientists, Firearms, The Holy Bible, The Quran, The Dead Sea Scrolls, Extinction Events, US Army, US Marines, US Airforce.

## Usage

Feel free to browse the repository and explore the topics that interest you. The markdown files are designed to be easily readable and searchable.  The synopsis files provide a condensed overview, and the mind maps offer a visual representation of the key concepts.

### `run.sh`

1.  **Prerequisites:**
    *   `zsh`
    *   `ask` (assumed to be an executable available in your `$PATH`)
    *   A directory named `prompts` containing a text file named `course-syllabus-agenda-prompt.txt`

2.  **Input:** The script reads a list of topic names from standard input, one topic per line.  Empty lines are skipped.

3.  **Execution:**
    *   Run the script: `./your_script_name.sh < input_topic_list.txt` (replace `your_script_name.sh` and `input_topic_list.txt` with the actual filenames).
    *   For each non-empty topic name:
        *   The script constructs a prompt by concatenating the contents of `prompts/course-syllabus-agenda-prompt.txt` with the string " Topic " and the current topic name.
        *   The `ask` command is executed with the generated prompt. Standard input for `ask` is redirected from `/dev/null`.
        *   The output of `ask` is redirected to a Markdown file named `${topic_name}.md` in the current directory.
        *   If the output file is empty (size 0), the script exits with an error message and indicates the last successfully processed topic.
        *   A 10-second delay is introduced before processing the next topic.

4.  **Output:**
    *   Markdown files named `${topic_name}.md` are created in the current directory, one for each successfully processed topic.

5.  **Error Handling:**
    *   The script exits if `ask` produces an empty output file, indicating a failure to process a topic.
    *   The last successfully processed topic is reported on script exit, even in the event of an error


### `create_mindmap`

Generates a Markdown-formatted mind map synopsis from input content using a predefined prompt.

**Usage:**

```bash
create_mindmap <filename> < <input_content>
```

*   `<filename>`:  The base filename to use for the output file. The script will append `-mindmap.md` to this.
*   `<input_content>`: The content that you would like the script to create a mindmap of.  This should be piped in using `<`.

**Prerequisites:**

*   `ask`:  This script relies on the `ask` command-line tool. Ensure it is installed and available in your `$PATH`.
*   A `prompts/create_mindmap.txt` file exists containing the prompt to be used for mindmap generation.

**How it Works:**

1.  The script takes a filename as an argument.
2.  It reads content from standard input (`stdin`).
3.  It prepends the content of `prompts/create_mindmap.txt` (the prompt) to the input content.
4.  It pipes the combined prompt and content to the `ask` command.
5.  The output of the `ask` command (the generated synopsis) is saved to a file named `<filename>-mindmap.md`.
6.  A success message is printed to the console.

**Example:**

```bash
create_mindmap "my_document" < my_document.txt
```

This command will read the content of `my_document.txt`, combine it with the prompt defined in `prompts/create_mindmap.txt`, send it to `ask`, and save the resulting mind map to `my_document-mindmap.md`.

**Updating create_mindmap.sh**:
1. Place create_mindmap.sh and update create_mindmap.txt in prompts directory to reflect update.
2.  Use it

**Example create_mindmap.txt**:
```
You are to create a mindmap synopsis of the following content. The mindmap should use markdown. The root node should be called Synopsis.
```

### create_synopsis

1.  Ensure `ask` command is available in your environment.
2.  Create a file named `prompts/content-description.txt` containing the prompt for the `ask` command.
3.  Execute the script with the desired output filename as an argument, piping the content to be summarized via standard input.

    ```bash
    ./generate_synopsis.sh output_file < input_file.txt
    ```

    or

    ```bash
    cat input_file.txt | ./generate_synopsis.sh output_file
    ```

    This will create a file named `output_file-synopsis.md` containing the generated synopsis.

## Contributing

This is primarily a personal knowledge repository. However, if you find any errors or have suggestions for improvement, feel free to submit a pull request.
