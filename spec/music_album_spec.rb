require 'date'
require_relative '../classes/music_album'
require_relative '../classes/genre'

RSpec.describe MusicAlbum do
  let(:genre) { Genre.new(1, 'Rock') }

  describe '#initialize' do
    it 'should set the properties correctly' do
      album = MusicAlbum.new(id: 1, genre: genre, author: 'Artist', source: 'CD', label: 'Label',
                             publish_date: Date.new(2022, 1, 1), on_spotify: true)

      expect(album.id).to eq(1)
      expect(album.genre).to eq(genre)
      expect(album.author).to eq('Artist')
      expect(album.source).to eq('CD')
      expect(album.label).to eq('Label')
      expect(album.publish_date).to eq(Date.new(2022, 1, 1))
      expect(album.on_spotify).to eq(true)
    end
  end

  describe '#can_be_archived?' do
    it 'should return true if publish_date is older than 10 years and on_spotify is true' do
      album = MusicAlbum.new(id: 1, genre: genre, author: 'Artist', source: 'CD', label: 'Label',
                             publish_date: Date.new(2010, 1, 1), on_spotify: true)

      expect(album.can_be_archived?).to eq(true)
    end

    it 'should return false if publish_date is newer than 10 years' do
      album = MusicAlbum.new(id: 1, genre: genre, author: 'Artist', source: 'CD', label: 'Label',
                             publish_date: Date.new(2022, 1, 1), on_spotify: true)

      expect(album.can_be_archived?).to eq(false)
    end

    it 'should return false if on_spotify is false' do
      album = MusicAlbum.new(id: 1, genre: genre, author: 'Artist', source: 'CD', label: 'Label',
                             publish_date: Date.new(2010, 1, 1), on_spotify: false)

      expect(album.can_be_archived?).to eq(false)
    end
  end
end
