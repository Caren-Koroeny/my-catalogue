require_relative '../classes/game'

RSpec.describe Game do
  describe '#initialize' do
    it 'sets the id, name, multiplayer, last_played_at, and publish_date attributes' do
      id = 1
      name = 'Example Game'
      multiplayer = true
      last_played_at = Time.now
      publish_date = Time.now - (365 * 24 * 60 * 60) # One year ago

      game = Game.new(id: id, name: name, multiplayer: multiplayer, last_played_at: last_played_at,
                      publish_date: publish_date)

      expect(game.id).to eq(id)
      expect(game.name).to eq(name)
      expect(game.multiplayer).to eq(multiplayer)
      expect(game.last_played_at).to eq(last_played_at)
      expect(game.publish_date).to eq(publish_date)
    end
  end

  describe '#can_be_archived?' do
    context 'when the game is not archived and last_played_at is more than 2 years ago' do
      it 'returns true' do
        id = 1
        name = 'Example Game'
        multiplayer = true
        last_played_at = Time.now - (3 * 365 * 24 * 60 * 60) # More than 2 years ago
        publish_date = Time.now - (365 * 24 * 60 * 60) # One year ago

        game = Game.new(id: id, name: name, multiplayer: multiplayer, last_played_at: last_played_at,
                        publish_date: publish_date)

        expect(game.can_be_archived?).to be true
      end
    end

    context 'when the game is not archived and last_played_at is less than 2 years ago' do
      it 'returns false' do
        id = 1
        name = 'Example Game'
        multiplayer = true
        last_played_at = Time.now - (365 * 24 * 60 * 60) # One year ago
        publish_date = Time.now - (365 * 24 * 60 * 60) # One year ago

        game = Game.new(id: id, name: name, multiplayer: multiplayer, last_played_at: last_played_at,
                        publish_date: publish_date)

        expect(game.can_be_archived?).to be false
      end
    end

    context 'when the game is already archived' do
      it 'returns false' do
        id = 1
        name = 'Example Game'
        multiplayer = true
        last_played_at = Time.now - (365 * 24 * 60 * 60) # One year ago
        publish_date = Time.now - (3 * 365 * 24 * 60 * 60) # More than 2 years ago

        game = Game.new(id: id, name: name, multiplayer: multiplayer, last_played_at: last_played_at,
                        publish_date: publish_date)
        game.archive

        expect(game.can_be_archived?).to be false
      end
    end
  end
end
