class QuestionsController < ApplicationController
<<<<<<< 0ac04b43dca328b1308865980544d866b7ff4e9b
  before_action :load_question, only: [:show, :edit]

  def index
    @questions = Question.all
  end

  def show

  end

  def new
    @question = Question.new
  end

  def edit
  end

  private

  def load_question
    @question = Question.find(params[:id])    
  end

=======
>>>>>>> Add question controller
end
