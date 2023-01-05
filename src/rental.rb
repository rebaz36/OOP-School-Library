require 'date'

class Rental
  attr_accessor :date, :title, :name, :id

  def initialize(book_title, customer_name, date = Date.today)
    @date = date
    @name = customer_name
    @title = book_title
  end

  def rentals
    "#{@title}: #{@name} #{@date}"
  end
end
