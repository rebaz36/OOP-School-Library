require './person' # import the Person class
require './student' # import the Student class
require './teacher' # import the Teacher class
require './rental' # import the Rental class
require './book' # import the Book class
require './classroom' # import the Classroom class
require_relative './nameable/capitalize_decorator'
require_relative './nameable/trimmer_decorator'

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

person1 = Person.new(22, name: 'John', parent_permission: false)
puts person1.name
puts capitalized_person = CapitalizeDecorator.new(person1)
puts capitalized_person.correct_name
puts capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

# Association

# Create a new classroom and student
classroom = Classroom.new('physics')
student = Student.new(16, 'Math 101', name: 'Alex', parent_permission: true)

# Add the student to the classroom
classroom.add_student(student)

# Print the student's classroom
puts student.classroom

# Set the classroom for the student
new_classroom = Classroom.new('Mathmatics')
student.set_classroom(new_classroom)

# Print the student's new classroom
puts student.classroom

book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
puts book.title # prints "The Great Gatsby"
puts book.author # prints "F. Scott Fitzgerald"
book.title = 'The Catcher in the Rye'
book.author = 'J.D. Salinger'
puts book.title # prints "The Catcher in the Rye"
puts book.author # prints "J.D. Salinger"

rental = Rental.new('2022-01-01', book, person)
puts rental.date # prints "2022-01-01"
rental.date = '2022-02-01'
puts rental.date # prints "2022-02-01"

# Create a new person and book
person = Person.new(24, name: 'jack', parent_permission: false)
book = Book.new('Harry Potter', 'J.K Rowling')

# Rent the book to the person
rental1 = Rental.new('2022-01-01', book, person)
puts rental1.date # prints "2022-01-01"

# Print the rentals for the person and the book
puts person.rentals
puts book.rentals
