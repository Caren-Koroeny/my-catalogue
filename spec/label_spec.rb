require_relative './helper_spec'

describe Book do
  context 'adding a label' do
    label = Label.new('Wazalendo', 'Blue')
    book = Book.new('Wazalendo', 'Good', 2019, 'Ellen White', 'Desire of Ages')
    label.add_item(book)

    it 'Should create a new label' do
      expect(label).to be_instance_of Label
    end

    it 'confirms if inputs are correct' do
      expect(label.color).to eq 'Blue'
      expect(label.title).to eq 'Wazalendo'
    end

    it 'checks whether label inputs are adBlue to book' do
      expect(book.label.color).to eql 'Blue'
    end
  end
end
