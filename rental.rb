require './book' # import the Book class
require './person' # import the Person class

class Rental
  attr_accessor :date, :book, :person # creates setter and getter methods for @date

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    book.add_rental(person, date)
    person.add_rental(person, date)
  end
end
