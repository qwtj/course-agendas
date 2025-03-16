# I. Introduction to Jupyter Notebooks

## Understanding the Jupyter Ecosystem

### What is Jupyter?
*   Interactive computing environment.
*   Supports multiple programming languages (Python, R, Julia).
*   Combines code, text, images, and visualizations in a single document.

### Jupyter Notebook vs. JupyterLab
*   Jupyter Notebook: Original interface, document-centric.
*   JupyterLab: Next-generation interface, IDE-like features.
*   Key differences: Tabbed interface, file browser, extensibility.

## Installing Jupyter

### Prerequisites: Python and pip
*   Ensuring Python is installed (`python --version`).
*   Understanding pip (package installer for Python).

### Installation using pip
*   Installing Jupyter Notebook: `pip install notebook`
*   Installing JupyterLab: `pip install jupyterlab`
*   Upgrading Jupyter: `pip install --upgrade notebook` or `pip install --upgrade jupyterlab`

## Starting Jupyter

### Launching Jupyter Notebook
*   Using the command line: `jupyter notebook`
*   Understanding the default browser interface.

### Launching JupyterLab
*   Using the command line: `jupyter lab`
*   Exploring the interface: Launcher, file browser, notebook area.

# II. Core Jupyter Notebook Features

## The Notebook Interface

### Cells: Code and Markdown
*   Understanding cell types: Code, Markdown, Raw NBConvert.
*   Changing cell types via the dropdown menu.

### Code Cells
*   Writing and executing code.
*   Shortcuts for execution: `Shift + Enter`, `Ctrl + Enter`, `Alt + Enter`.
*   Inspecting variables and outputs.
*   Example:
    ```python
    x = 5
    y = 10
    print(x + y)
    ```

### Markdown Cells
*   Writing formatted text using Markdown syntax.
*   Headings, lists, links, images, and equations.
*   Previewing Markdown cells by executing them.
*   Example:
    ```markdown
    # This is a Heading 1
    *   Item 1
    *   Item 2
    [Link to Google](https://www.google.com)
    ```

## Basic Operations

### Creating a new notebook
*   Using the "New" dropdown menu.

### Saving and renaming notebooks
*   Saving notebooks as `.ipynb` files.
*   Renaming notebooks through the interface.

### Working with cells
*   Adding cells: `Insert` menu, shortcuts (`A` for above, `B` for below).
*   Deleting cells: `Edit` menu, shortcut (`DD`).
*   Moving cells: `Edit` menu, shortcuts.
*   Copying and pasting cells: `Edit` menu, shortcuts.

### Kernel operations
*   Understanding the kernel (the execution engine).
*   Restarting the kernel: `Kernel` menu.
*   Interrupting the kernel: `Kernel` menu.
*   Reconnecting to the kernel: `Kernel` menu.

# III. Advanced Notebook Features

## Markdown Enhancements

### LaTeX equations
*   Writing mathematical formulas using LaTeX syntax.
*   Inline equations: `$E = mc^2$`
*   Display equations: `$$E = mc^2$$`
*   Example:
    ```markdown
    The equation for energy is:
    $$ E = mc^2 $$
    ```

### Embedding images
*   Linking to images using Markdown.
*   Local images: `![alt text](image.png)`
*   Remote images: `![alt text](https://example.com/image.png)`

### HTML and CSS
*   Embedding HTML elements within Markdown cells.
*   Using inline CSS for styling.
*   Example:
    ```html
    <p style="color:blue;">This is a blue paragraph.</p>
    ```

## Interactive Widgets

### Introduction to ipywidgets
*   Creating interactive controls in notebooks.
*   Installing ipywidgets: `pip install ipywidgets`
*   Enabling the widget extension: `jupyter nbextension enable --py widgetsnbextension`
*   Example:
    ```python
    import ipywidgets as widgets
    from IPython.display import display

    slider = widgets.IntSlider(value=50, min=0, max=100, description='Value:')
    display(slider)
    ```

### Common widgets
*   Sliders, text boxes, buttons, dropdown menus.
*   Linking widgets to code for interactive visualizations.

### Widget Styling and Layout
*   Customizing widget appearance.
*   Arranging widgets using `HBox` and `VBox`.

## Magic Commands

### Line and cell magics
*   Commands that enhance notebook functionality.
*   Line magics: `%command`
*   Cell magics: `%%command`

### Useful magic commands
*   `%time`: Measure execution time of a single line.
*   `%%timeit`: Measure execution time of an entire cell.
*   `%matplotlib inline`: Display matplotlib plots inline.
*   `%load`: Load code from an external file.
*   `%run`: Execute an external Python script.

### Example usage
```python
%%timeit
import numpy as np
np.random.rand(1000)
```

# IV. Data Visualization and Analysis

## Data Visualization Libraries

### Matplotlib integration
*   Creating basic plots with Matplotlib.
*   Customizing plots: titles, labels, legends.

### Seaborn for statistical visualizations
*   Creating advanced statistical plots.
*   Using Seaborn themes and styles.

### Plotly for interactive visualizations
*   Generating interactive charts and dashboards.
*   Exporting plots as HTML.

## Data Analysis with Pandas

### Importing and exploring data
*   Reading data from CSV files using `pd.read_csv()`.
*   Exploring dataframes: `head()`, `describe()`, `info()`.

### Data manipulation
*   Filtering and sorting data.
*   Creating new columns.
*   Grouping and aggregating data.

### Combining visualizations with Pandas
*   Plotting Pandas DataFrames directly.
*   Creating custom visualizations based on Pandas data.

# V. Collaboration and Sharing

## Exporting Notebooks

### Different export formats
*   HTML, PDF, Markdown, Python script.
*   `File -> Download as` options.

### Converting notebooks using nbconvert
*   Using the command line: `jupyter nbconvert --to html mynotebook.ipynb`

## Sharing Notebooks

### Sharing on GitHub
*   Committing notebooks to a Git repository.
*   Rendering notebooks on GitHub.

### Using nbviewer
*   Sharing notebooks without requiring installation of Jupyter.
*   Entering the notebook's URL on nbviewer.

### Sharing with Binder
*   Creating a reproducible environment for notebooks.
*   Linking to a Binder repository for interactive execution.

# VI. Extending Jupyter

## Installing Extensions

### Finding extensions
*   Exploring available extensions on GitHub and the Jupyter Extensions repository.

### Installing extensions with pip
*   Using `pip install` to install extension packages.

### Enabling and configuring extensions
*   Using the Jupyter Notebook Extensions configurator.

## Customizing JupyterLab

### Themes
*   Installing and applying custom themes.

### Keyboard Shortcuts
*   Customizing keyboard shortcuts for frequently used actions.

### Creating custom extensions (Overview)
*   Basic structure of a JupyterLab extension.
*   Using the JupyterLab extension development tools.
