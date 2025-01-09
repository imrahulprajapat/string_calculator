# String Calculator - TDD Kata

This is an implementation of the String Calculator kata, built using Test-Driven Development (TDD). The kata involves creating a calculator that can sum numbers represented as strings with various delimiters and handle edge cases such as negative numbers.

## Features:

*  **Empty** string returns 0.
*  **Single number** returns the number itself.
*  **Two numbers** separated by a comma return their sum.
*  **Multiple numbers** separated by commas and newlines.
*  Custom delimiters are supported, with a format of **//[delimiter]\n**.
*  **Negative numbers** are not allowed. If encountered, an exception is raised with the list of negative numbers.
* ...


## Setup
1. **Clone the repository:**
  ```
  git clone https://github.com/yourusername/string-calculator.git
  cd string-calculator
  ```

2.**Install dependencies:**
  ```
  gem install bundler
  bundle install
  ```

3. **Run the tests:**
  ```
  rspec
  ```

5. **Example Usage:**

    **Input: "1,2,3"**
  ```
  calculator = StringCalculator.new
  result = calculator.add("1,2,3")
  puts result  # Output: 6
  ```

  **Input with a custom delimiter: "//;\n1;2"**
  ```
  calculator = StringCalculator.new
  result = calculator.add("//;\n1;2")
  puts result  # Output: 3
  ```
  
  **Input with newlines: "1\n2,3"**
  ```
  calculator = StringCalculator.new
  result = calculator.add("1\n2,3")
  puts result  # Output: 6
  ```
  
  **Handling Negative Numbers:**
    If a string contains negative numbers, an exception is raised:

### Development
  1. The project uses RSpec for testing. The tests are located in the spec directory.
  2. The StringCalculator class is located in the lib/string_calculator.rb file.
