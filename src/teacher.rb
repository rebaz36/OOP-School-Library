require_relative './add'

class Teacher < Person
  def initialization(age, name, specialization)
    super(age, name, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
