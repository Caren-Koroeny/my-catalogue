class Item
  attr_accessor :genre, :author, :label, :archived, :publish_date

  def initialize(publish_date, archived: true)
    @id = Random.rand(1...1000)
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def add_author(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def add_genre(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  private

  def can_be_archived?
    current_year = Time.new.year
    (current_year - @publish_date.to_i) > 10
  end
end
