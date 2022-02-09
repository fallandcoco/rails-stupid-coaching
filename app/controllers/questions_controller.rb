class QuestionsController < ApplicationController
  
  def home
  end

  def ask
  end

  def answer
    @question = params[:question]
    @answer_list = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    @feedback = 
    if @question == "I am going to work"
      @answer_list[0]
    elsif @question.end_with?("?")
      @answer_list[1]
    else
      @answer_list[2]
    end
  end
end
