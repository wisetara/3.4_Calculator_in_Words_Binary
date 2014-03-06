def calculate(problem)
  operators = {"plus" => :+ }

  words = problem.split(" ")
  numbers = problem.scan(/\d+/)
  found_words = []
  total = 0

  words.each do |word|
    found_words << operators[word]
    found_words.compact!
  end

  total = eval("#{numbers[0]} #{found_words[0]} #{numbers[1]}")
  total
end
