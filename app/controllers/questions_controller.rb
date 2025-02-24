class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.downcase == "I am going to work!"
      @answer = 'Great!'
    elseif @question.end.with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don`t care, get dressed and go to work!'
    end
  end
end
