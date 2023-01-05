require_relative './rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rentals(date, customer)
    rental = Rental.new(@title, customer.name, customer.id, date)
    @rentals.push(rental)
  end
end
