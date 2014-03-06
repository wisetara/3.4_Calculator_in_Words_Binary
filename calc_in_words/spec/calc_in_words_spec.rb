require('calc_in_words')
require('rspec')

describe('calculate') do
  it('should add two numbers if given numbers and the word "plus"') do
    calculate("The 5 plus 6").should(eq(11))
  end
end
