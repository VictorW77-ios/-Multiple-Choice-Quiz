class Question 
  attr_accessor :prompt, :answer

  def initialize(prompt, answer)
    @prompt, @answer = prompt, answer
  end

end

  p1 = "What color is the sky?\n(a)green\n(b)white\n(c)blue"
  p2 = "Who's the smartest guy that ever lived?\n(a)Albert Einstein\n(b)Steven Hawking\n(c)That dude on that one vine that hopes the road works ahead"
  p3 = "Was this quiz cool?\n(a)yes\n(b)no\n(c)I would take this quiz every day for the rest of my life"

  questions = [
    Question.new(p1,"c"), 
    Question.new(p2,"c"), 
    Question.new(p3,"c")
  ]

  def test_runner(questions)
    answer = ""
    score = 0
    for question in questions
      puts question.prompt
      answer = gets.chomp()
      if answer == question.answer
        score += 1
      end
    end
    puts ("You got " + score.to_s + " out of " + questions.length().to_s + " correct!")
  end
  test_runner(questions)

