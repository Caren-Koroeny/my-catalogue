require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(id:, genre:, author:, source:, label:, publish_date:, on_spotify:)
    super(id: id)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && on_spotify
  end
end
