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

  describe 'POST #create' do
    sign_in_user

    context 'with valid attributes' do
      it 'saves the new answer in the database'  do
        expect { post :create, params: { question_id: question.id , answer: {body: 'text text', question_id: question.id } }}.to change(Answer, :count).by(1)
      end
      it 'redirects to show view' do
        post :create, params: { question_id: question.id , answer: {body: 'text text', question_id: question.id } }
        expect(response).to redirect_to answer_path(assigns(:answer))
      end
    end  
    
    context 'with invalid attributes' do  
      it 'does not save the question' do
        expect { post :create, params: { question_id: question.id , answer: attributes_for(:invalid_answer) }}.to_not change(Answer, :count)        
      end
      
      it 're-renders new view' do
        post :create, params: { question_id: question.id , answer: attributes_for(:invalid_answer) }
        expect(response).to render_template :new
      end
    end
  end


end
