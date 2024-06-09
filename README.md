# SML-Buddy VSCode Extension: Case Study

Welcome to the study for the SML-Buddy VSCode extension! 
This README provides instructions for testing the extension by implementing two functions in Standard ML (SML): 
`mirror` for binary trees and `diff` for differentiating algebraic expressions.

## Experiment Overview

You will implement the following functions:

1. **Mirror Function**
    - **Purpose**: Mirrors a binary tree.
    - **Signature**: `mirror: fn tree -> tree`
    - **Datatype**:
      ```sml
      datatype btree = Empty | Node of int * btree * btree
      ```

2. **Differential Function**
    - **Purpose**: Differentiates an algebraic expression with respect to a given variable.
    - **Signature**: `diff: ae * string -> ae`
    - **Datatype**:
      ```sml
      datatype ae =
          CONST of int
        | VAR of string
        | POWER of string * int
        | TIMES of ae list
        | SUM of ae list
      ```

## Prerequisites

Ensure you have the following installed:
- Visual Studio Code
- SML-NJ or another SML compiler

## Setup

1. **Clone the Repository**: Clone this repository to your local machine.
    ```sh
    git clone https://github.com/Whitomtit/sml-buddy-study.git
    cd sml-buddy-study
    ```

2. **Install the Extension**:
    - Open VSCode.
    - Go to the Extensions view (`Ctrl+Shift+X` or `Cmd+Shift+X`).
    - Click on the three-dot menu (`...`) in the top right corner.
    - Select **Install from VSIX...** and choose the`.vsix` file from the repository.

3. **Open the Test File**: Open the `test.sml` file in VSCode, which contains the skeleton for the experiment functions.

4. **Import the Resource File**: To access the counterexample searcher, you need to import the resource file using any of the following methods:
    - Import the resource file from the repository folder.
    - Import the resource file by the link `https://raw.githubusercontent.com/Whitomtit/sml-buddy-study/main/task.smlbuddy`.

## Using the Extension

1. **Open the SML-Buddy Sidebar**:
    - Click on the SML-Buddy icon in the Activity Bar on the left side of VSCode to open the special sidebar.

2. **Import the Resource File**:
    - In the SML-Buddy sidebar, click the **Import Resource File** button.
    - Select the resource file you downloaded in the setup step.

3. **Write Your Functions**:
    - Implement the `mirror` and `diff` functions in the `test.sml` file using the provided type declarations.

4. **Use Counterexample Searcher**:
    - After implementing your functions, use the **Counterexample Searcher** in the sidebar to test your implementation.
    - The extension will generate counterexamples to help identify bugs or logical errors in your code.

### Function Descriptions

#### 1. Mirror Function

- **Purpose**: The `mirror` function should take a binary tree and return a new tree where each left and right subtree is swapped at every level.

- **Type Definition**:
  ```sml
  datatype btree = Empty | Node of int * btree * btree
  ```

- **Function Signature**:
  ```sml
  fun mirror : btree -> btree
  ```

#### 2. Differential Function

- **Purpose**: The `diff` function should take an algebraic expression and a variable, and return the derivative of the expression with respect to that variable.

- **Type Definition**:
  ```sml
  datatype ae =
      CONST of int
    | VAR of string
    | POWER of string * int
    | TIMES of ae list
    | SUM of ae list
  ```

- **Function Signature**:
  ```sml
  fun diff : ae * string -> ae
  ```

### Testing

To test your functions:

1. **Run the SML REPL**: Use the integrated terminal or your SML environment to start the SML REPL.

2. **Load and Test**: Load the `test.sml` file and execute test cases.
    ```sml
    - use "test.sml";
    ```

3. **Analyze Results**: Use the counterexample searcher in the SML-Buddy sidebar to verify the correctness of your implementation.
