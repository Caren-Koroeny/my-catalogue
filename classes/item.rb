class Item
  attr_reader :id
  attr_accessor :genre, :author, :source, :label, :publish_date, :archived

  def initialize(id:)
    @id = id
    @archived = false
  end

  def can_be_archived?
    current_date = Date.today
    years_difference = current_date.year - publish_date.year
    years_difference >= 10
  end

  def move_to_archive
    self.archived = can_be_archived?
  end
end
