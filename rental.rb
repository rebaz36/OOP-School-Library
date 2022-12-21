class Rental
  attr_accessor :date, :book, :person # creates setter and getter methods for @date

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    book.rentals << self
    person.rentals << self
  end
end
