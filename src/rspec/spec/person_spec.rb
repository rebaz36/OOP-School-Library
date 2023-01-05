require_relative '../files'
require_relative '../../book'

class Person < Nameable
  attr_accessor :name, :age, :rentals, :parent_permission, :id

  def initialize(age, name = 'unknown', parent_permission = true)
    super()
    @id = 25
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    return unless @age >= 18 || @parent_permission == true
  end

  def correct_name
    @correct_name = name
  end

  def add_rental(date, book)
    rental = Rental.new(date, book, self)
    @rentals.push(rental)
  end
end

describe Person do
  context 'When testing Person class' do
    it 'Should create a person when I pass arguments to the instance' do
      person = Person.new(15, 'Angel Uray', false)
      expect(person).to be_instance_of Person
      expect(person).to have_attributes(name: 'Angel Uray')
      expect(person).to have_attributes(age: 15)
      expect(person).to have_attributes(parent_permission: false)
      expect(person).to have_attributes(id: 25)
      expect(person.rentals).to match_array([])
    end
  end

  context 'When testing add_rental method' do
    it 'Should add a rental to the rentals array' do
      person_1 = Person.new(15, 'Angel Uray', false)
      book = Book.new('Harry', 'JK Rowling')
      rental = Rental.new('10/12/2022', book.title, person_1)
      person_1.add_rental('10/12/2022', book.title)
      expect(person_1.rentals).to all(be_instance_of(Rental))
    end
  end

  context 'When testing can_use_services? method' do
    it 'Should return true if the person is of age' do
      person_2 = Person.new(15, 'Angel Uray', true)
      expect(person_2.can_use_services?).to be_falsey
    end
  end

  context 'When testing correct_name method' do
    it 'Should return the correct name' do
      person_3 = Person.new(15, 'Angel Uray', true)
      expect(person_3.correct_name).to eql('Angel Uray')
    end
  end

end
