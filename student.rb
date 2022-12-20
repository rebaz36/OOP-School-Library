# encoding: utf-8 # rubocop:disable Style/encoding

class Student < Person
  attr_reader :classroom # getter for @classroom

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission) # call the parent's constructor
    @classroom = classroom
  end

  def play_hooky
    '¯\\_(ツ)_/¯'.encode('utf-8')
  end
end
