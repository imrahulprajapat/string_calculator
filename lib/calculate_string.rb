class CalculateString
  def add(numbers)
    return 0 if numbers.empty?
    
    if numbers.start_with?("//")
      delimiter_end = numbers.index("\n")
      delimiter = numbers[2..delimiter_end-1]
      numbers = numbers[delimiter_end+1..-1]
      return numbers.split(delimiter).map(&:to_i).sum
    end

    numbers.split(/[,\n]/).map(&:to_i).sum
  end
end