require_relative './helper_spec'

describe Author do
  before :all do
    @author = Author.new('Caren', 'Siya')
  end
  context 'Testing for Author class' do
    it 'Test for firstname, last name for Author class ' do
      expect(@author.first_name).to eq 'Caren'
      expect(@author.last_name).to eq 'Siya'
    end
    it 'Should create a new author' do
      expect(@author).to be_instance_of Author
    end
  end
end
