class Book
  attr_accessor :title, :author, :rentals # creates setter and getter methods for @title and @author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
end
