class AnswersController < ApplicationController
  before_action :set_question, only: [:new, :que]

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(answer_params)
    
    if @answer.save
      redirect_to @answer, notice: "Your answer successfully created."   
    else
      render :new
    end
  end    

  private 

  def set_question
    @question = Question.find(params[:question_id])    
  end

  def answer_params
    params.require(:answer).permit(:question, :body)
  end  

end
