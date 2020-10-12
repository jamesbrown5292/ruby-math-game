class Question
  attr_reader :answer
  def initialize
    @v1 = rand(20)
    @v2 = rand(20)
    @answer = @v1 + @v2
  end

  def question_body
    "What is #{@v1} + #{@v2}"
  end


end