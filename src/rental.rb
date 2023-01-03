require 'date'

class Rental
  attr_accessor :date, :title, :name, :id

  def initialize(book_title, customer_name, customer_id, date = Date.today)
    @date = date
    @name = customer_name
    @id = customer_id
    @title = book_title
    # customer.rentals.push(self)
    # book.rentals.push(self)
  end

  def rentals
    "#{@title}: #{@name} #{@date}"
  end
end
