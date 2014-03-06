def calculate(problem)
  operators = {"plus" => :+, "minus" => :-, "multiplied" => :*, "divided" => :/, "times" => :* }

  words = problem.split(" ")
  numbers = problem.scan(/\d+/)
  found_ops = []
  big_array = []

  words.each do |word|
    found_ops << operators[word]
    found_ops.compact!
  end
  
  while numbers.length > 0 do
    big_array << numbers.shift.to_f
    big_array << found_ops.shift
  end

  result = big_array.join(" ")
  eval(result)
end
