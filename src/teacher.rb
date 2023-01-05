require_relative './add'

class Teacher < Person
  attr_accessor :specialization, :id, :age, :name

  def initialization(age, name, specialization)
    super(age, name, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
