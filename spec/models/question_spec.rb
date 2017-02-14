require 'rails_helper'

RSpec.describe Question, type: :model do
	it { should validate_presence_of :title }
	it { should validate_presence_of :body }
<<<<<<< bcb486d8690fc828098de7cf0c883c3fec484231
<<<<<<< ed4f90e346c271e918666c667be7dc92b5d264a0
  it { should have_many(:answers) }
=======
>>>>>>> Test some question validations
=======
  it { should have_many(:answers) }
>>>>>>> Answer model added
end
