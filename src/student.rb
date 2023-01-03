# encoding: utf-8 # rubocop:disable Style/encoding

require_relative './add'

class Student < Person
  attr_reader :classroom, :name, :id, :age, :parent_permission

  def initialize(age, classroom, name, parent_permission: false)
    super(age, name, parent_permission)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
