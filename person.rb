class Person
  attr_accessor :name, :age
  attr_reader :id # getters for @id, @name, and @age

  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = generate_id # generate a unique ID for the person
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  private

  def is_of_age? # rubocop:disable Naming/PredicateName
    @age >= 18
  end

  def generate_id
    # generate a unique ID for the person
    Random.rand(1..1000)
  end
end
