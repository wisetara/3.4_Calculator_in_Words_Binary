def calculate(problem)
  operators = {"plus" => :+, "minus" => :-, "multiplied" => :*, "divided" => :/, "times" => :*, "power" => "power"}

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


# if big_array[1] == "power" do
#     result = big_array[2].times - 1 do
#     (big_array[0] * big_array[0])
#    end
#    eval(result) 
#   else  

