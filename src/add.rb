require_relative './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name, parent_permission)
    super()
    @id = Random.rand(1..200)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @correctable_name = name
  end

  def add_rentals(date, book_info)
    Rental.new(date, book_info, self)
  end

  private

  def of_age?
    @age >= 18
  end
end
