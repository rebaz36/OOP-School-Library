class Classroom
  attr_accessor :label, :students # creates setter and getter methods for @label and students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.set_classroom(self)
  end
end