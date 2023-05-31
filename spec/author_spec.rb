require_relative '../classes/author'

RSpec.describe Author do
  let(:author) { Author.new('John', 'Doe') }

  describe '#initialize' do
    it 'sets the properties correctly' do
      expect(author.first_name).to eq('John')
      expect(author.last_name).to eq('Doe')
      expect(author.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'associates an item with the author' do
      item = double('Item')
      expect(item).to receive(:author=).with(author)
      author.add_item(item)
      expect(author.items).to include(item)
    end
  end
end
