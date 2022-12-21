class Book
  attr_accessor :title, :author, :rentals # creates setter and getter methods for @title and @author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  # add rentals
  def add_rental(person, date)
    @rentals.push(person, date, self)
  end
end
