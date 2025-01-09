class CalculateString
  def add(numbers)
    return 0 if numbers.empty?

    if custom_delimiter?(numbers)
      delimiter, numbers = extract_delimiter_and_numbers(numbers)
      return sum_of_numbers(numbers, delimiter)
    end

    numbers_list = parse_numbers(numbers)
    validate_negatives(numbers_list)

    numbers_list.sum
  end

  private

  def custom_delimiter?(numbers)
    numbers.include?("//")
  end

  def extract_delimiter_and_numbers(numbers)
    delimiter_end = numbers.index("\n")
    delimiter = numbers[delimiter_end-1..delimiter_end-1]
    numbers = numbers[delimiter_end + 1..-1]
    [delimiter, numbers]
  end

  def sum_of_numbers(numbers, delimiter)
    numbers.split(delimiter).map(&:to_i).sum
  end

  def parse_numbers(numbers)
    numbers.split(/[,\n]/).map(&:to_i)
  end

  def validate_negatives(numbers_list)
    negatives = numbers_list.select { |num| num < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
  end
end
