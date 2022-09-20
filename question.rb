=begin


Question class
allows a user to input answer to questions
method to randomly generate an integer between 1 and 20
a: integer between 1 and 20 - randomly generated each time
b: integer between 1 and 20 - see above
question: "What does #{a} + #{b} equal?" output and ask for input from user
answer: what the current player put as the answer

=end

class Question

  def initialize(n = 20) # n is an integer
    @a = 0
    @b = 0
    @n = n
  end

  def ask
    @a = Random.rand(1..@n)
    @b = Random.rand(1..@n)
    "What is the sum of #{@a} + #{@b}?"
  end

  def answer
    print "> "
    answer = gets.chomp.to_i
    @a + @b == answer
  end

end