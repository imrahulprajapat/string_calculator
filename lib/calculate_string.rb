class CalculateString
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.include?("//")
      delimiter_end = numbers.index("\n")
      delimiter = numbers[delimiter_end-1..delimiter_end-1]
      numbers = numbers[delimiter_end+1..-1]
      return numbers.split(delimiter).map(&:to_i).sum
    end

    numbers_list = numbers.split(/[,\n]/).map(&:to_i)
    negatives = numbers_list.select { |num| num < 0 }

    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    numbers_list.sum
  end
end