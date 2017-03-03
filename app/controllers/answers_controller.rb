class AnswersController < ApplicationController
  before_action :set_question, only: [:new, :create]
  before_action :set_answer, only: [:show]

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

  def show
        
  end    

  private 

  def set_question
    @question = Question.find(params[:question_id])    
  end

  def answer_params
    params.require(:answer).permit(:question_id, :body)
  end

  def set_answer
    @answer = Answer.find(params[:id])    
  end  

end
