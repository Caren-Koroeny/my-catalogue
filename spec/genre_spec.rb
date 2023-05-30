require 'date'
require_relative '../classes/genre'
require_relative '../classes/music_album'

RSpec.describe Genre do
  let(:genre) { Genre.new(1, 'Rock') }

  describe '#add_item' do
    it 'should add an item to the genre' do
      album = MusicAlbum.new(id: 1, genre: genre, author: 'Artist', source: 'CD', label: 'Label', publish_date: Date.new(2022, 1, 1), on_spotify: true)

      genre.add_item(album)

      expect(genre.items).to include(album)
      expect(album.genre).to eq(genre)
    end
  end
end
