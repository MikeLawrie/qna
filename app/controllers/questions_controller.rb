class QuestionsController < ApplicationController
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

<<<<<<< HEAD
  def create
    @question = Question.create(question_params)
    redirect_to @question
  end

=======
>>>>>>> 8373d7c1eb47306bd12a43fe3f395b1dda9bbb27
  private

  def load_question
    @question = Question.find(params[:id])    
  end

<<<<<<< HEAD
  def question_params
    params.require(:question).permit(:title, :body)
  end

=======
>>>>>>> 8373d7c1eb47306bd12a43fe3f395b1dda9bbb27
end
