class Teacher < Person
  attr_reader :specialization # getter for @specialization

  def initialize(age, specialization, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission) # call the parent's constructor
    @specialization = specialization
  end

  def can_use_services?
    true # teachers can always use services
  end
end
