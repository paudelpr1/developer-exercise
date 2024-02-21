class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    res = ""
    words = str.split(/(\b|\W)/)
    words.each do |word|
      if word.length > 4 && word.match?(/[a-zA-Z]+/)
        if word[0] == word[0].upcase
          res += "Marklar"
        else
          res += "marklar"
        end
      else
        res += word
      end
    end
    return res
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    sum = 0
    fib = Array.new(nth)
    left = 1
    right = 1
    fib[0] = left
    fib[1] = right
    
    (2...nth).each do |i|
      fib[i] = left + right
      sum += fib[i] if fib[i].even?
      left = right
      right = fib[i]
    end
  
    return sum
  end

end


