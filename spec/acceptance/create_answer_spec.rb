require 'rails_helper'

feature 'Create answer', %q{
  In order to help somebody who asked the question
  As an authenticated user
  I want to be able to give answers
} do
  given(:user) { create(:user)}  
  
  scenario 'Authenticated user creates answer' do
    sign_in(user)

    question = create(:question)
   
    visit question_path(question)
    click_on 'Answer'
    fill_in 'Body', with: 'text text'
 
  end
end