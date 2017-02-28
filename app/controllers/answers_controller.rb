class AnswersController < ApplicationController
  before_action :set_question, only: [:new]

  def new
    @answer = Answer.new
  end  

  private 

  def set_question
    @question = Question.find(params[:id])    
  end

end
