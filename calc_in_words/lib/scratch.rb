$romans = { 1 => "I",   2 => "II",   3 => "III", 4 => "IV",  5 => "V",    9 => "IX", 
            10 => "X",  40 => "XL",  50 => "L",   90 => "XC", 100 => "C", 
           400 => "CD", 500 => "D", 900 =>"CM", 1000 => "M", 2000 => "MM", 
           3000 => "MMM"}

def romanify(number)
  converted = []

  $romans.keys.sort.reverse.each do |key|
    if number % key != number
      converted.push($romans[key])
      number %= key
    end
  end
  converted.join('')
end

def deromanify(roman_numeral)
  converted = []
  unique_case = /(CM)|(IX)|(IV)|(CD)|(XL)|(XC)/

  3.times do 
    if unique_case =~ roman_numeral
      case_index = unique_case =~ roman_numeral
      converted.push(roman_numeral[case_index..case_index+1])
      roman_numeral[case_index..case_index+1] = ''
    end
  end
  roman_numeral.split('').each do |number|
    converted << number
  end
  converted.map! { |e| $romans.invert[e] }


  converted.inject { |n, sum|  sum += n }

end
