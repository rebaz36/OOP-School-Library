class Student < Person
  attr_reader :classroom # getter for @classroom

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission) # call the parent's constructor
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
