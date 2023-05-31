require_relative './helper_spec'

describe Book do
  context 'adding a book' do
    book = Book.new('Wazalendo', 'Good', 2019, 'Ellen White', 'Desire of Ages')

    it 'expects book title to be Desire of Ages' do
      expect(book.title).to eql 'Desire of Ages'
      expect(book.cover_state).to eql 'Good'
      expect(book.author).to eql 'Ellen White'
    end

    it 'confirms if publication date is 2019' do
      expect(book.publish_date).to eq 2019
    end

    it 'checks whether a book can be archived?' do
      expect(book.can_be_archived?).to eql false
    end
  end
end
