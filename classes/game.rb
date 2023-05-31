class Game
  attr_reader :id, :name, :multiplayer, :last_played_at, :publish_date, :archived

  def initialize(id:, name:, multiplayer:, last_played_at:, publish_date:)
    @id = id
    @name = name
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @publish_date = publish_date
    @archived = false
  end

  def can_be_archived?
    !archived && last_played_at < Time.now - (2 * 365 * 24 * 60 * 60)
  end

  def archive
    @archived = true
  end
end
