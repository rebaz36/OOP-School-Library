require './person' # import the Person class
require './student' # import the Student class
require './teacher' # import the Teacher class

# example on how to use the classes

person = Person.new(20, name: 'John', parent_permission: false)
puts person.name # prints "John"
puts person.age # prints 20
puts person.can_use_services? # prints true, because the person is of age

student = Student.new(17, 'Math 101', name: 'Alice', parent_permission: true)
puts student.name # prints "Alice"
puts student.age # prints 17
puts student.classroom # prints "Math 101"
puts student.play_hooky # prints "¯\\(ツ)/¯"
puts student.can_use_services? # prints true, because the student has parent permission

teacher = Teacher.new(30, 'Physics', name: 'Bob')
puts teacher.name # prints "Bob"
puts teacher.age # prints 30
puts teacher.specialization # prints "Physics"
puts teacher.can_use_services? # prints true, because the teacher can always use services
