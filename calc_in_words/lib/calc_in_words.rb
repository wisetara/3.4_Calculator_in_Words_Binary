def calculate(problem)
  operators = {"plus" => :+, "minus" => :-, "multiplied" => :*, "divided" => :/, "times" => :* }

  words = problem.downcase.split(" ")
  nums = problem.scan(/[-+]?([0-9]*\.[0-9]+|[0-9]+)/)
  found_ops = []
  big_array = []
  
  words.each do |word|
    found_ops << operators[word]
    found_ops.compact!
  end
  nums = nums.flatten.collect { |i| i.to_f }
  while nums.length > 0 do
    big_array << nums.shift
    big_array << found_ops.shift
  end

  result = big_array.join(" ")
  eval(result)
end

