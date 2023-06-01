require_relative './helper_spec'

describe Genre do
  before :each do
    @music = MusicAlbum.new('Sounds like Reign', '2022', false)
    @genre = Genre.new('Soft')
    @genre.add_item(@music)
  end

  context 'Genre class' do
    it 'Should be an instance of the MusicAlbum class' do
      expect(@genre).to be_an_instance_of(Genre)
    end

    it 'Should have one property' do
      expect(@genre).to have_attributes(name: 'Soft')
    end

    it 'Should have genre property of Soft' do
      expect(@music.genre.name).to eq('Soft')
    end
  end
end
