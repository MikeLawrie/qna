require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
 
  let(:question) { create(:question)}

  describe 'GET #new' do

    sign_in_user

    before { get :new, params:{ question_id: question}} 

    it 'assigns the question selected to give an answer to @question' do
      expect(assigns[:question]).to eq question
    end

    it 'assigns a new Answer to @answer' do
      expect(assigns(:answer)).to be_a_new(Answer)
    end

    it 'renders new view' do
      expect(response).to render_template :new
    end
  end  

end
