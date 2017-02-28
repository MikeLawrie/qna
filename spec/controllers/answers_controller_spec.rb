require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
 

  describe 'GET #new' do
  let(:question) { create(:question)}

    sign_in_user


    before { get :new, params:{ question_id: question}} 

    it 'assigns a new Answer to @answer' do
      expect(assigns(:answer)).to be_a_new(Answer)
    end

    it 'renders new view' do
      expect(response).to render_template :new
    end
  end  

end
