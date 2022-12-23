require_relative './nameable/nameable_decorator'

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id # getters for @id, @name, and @age

  def initialize( parent_permission: true)
    super()
    @id = Random.rand(1..1000) # generate a unique ID for the person
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(person, date)
    @rentals.push(person, date, self)
  end

  private

  def is_of_age? # rubocop:disable Naming/PredicateName
    @age >= 18
  end
end
