require './person' # import the Person class
require './student' # import the Student class
require './teacher' # import the Teacher class
require './rental' # import the Rental class
require './book' # import the Book class
require './classroom' # import the Classroom class
require_relative './nameable/capitalize_decorator'
require_relative './nameable/trimmer_decorator'

class App
  def initialize
    @books = []
    @people = []
    @rental = []
  end

  # method for books
  attr_reader :books, :people

  def list_all_books
    @books.each do |book|
      puts book.title
    end
  end

  def list_all_people
    @people.each do |person|
      puts person.name
    end
  end

  def create_person(age, name: 'Unknown', parent_permission: true)
    person = Person.new(age, name: name, parent_permission: parent_permission)
    @people << person
  end

  def create_student(age, classroom, name: 'Unknown', parent_permission: true)
    student = Student.new(age, classroom, name: name, parent_permission: parent_permission)
    @people << student
  end

  def create_teacher(age, specialization, name: 'Unknown', parent_permission: true)
    teacher = Teacher.new(age, specialization, name: name, parent_permission: parent_permission)
    @people << teacher
  end

  def create_book(title, author)
    book = Book.new(title, author)
    @books << book
  end

  def create_rental(date, book, person)
    rental = Rental.new(date, book, person)
    @rental << rental
  end

  def list_all_rentals_for_person(person_id)
    person = @people.find { |p| p.id == person_id }
    if person
      person.rentals.each do |rental|
        puts rental.book.title
      end
    else
      puts "Person with ID #{person_id} not found."
    end
  end
end
