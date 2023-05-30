require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(id:, genre:, author:, source:, label:, publish_date:, on_spotify:)
    super(id, genre, author, source, label, publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && on_spotify
  end
end
# rubocop:enable Metrics/ParameterLists
