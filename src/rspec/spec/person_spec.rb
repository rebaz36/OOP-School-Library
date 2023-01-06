require_relative '../files'
require_relative '../../book'
require_relative '../../person'

describe Person do
  context 'When testing Person class' do
    it 'Should create a person when I pass arguments to the instance' do
      person = Person.new(15, 'Angel Uray', false)
      expect(person).to be_instance_of Person
      expect(person).to have_attributes(name: 'Angel Uray')
      expect(person).to have_attributes(age: 15)
      expect(person).to have_attributes(parent_permission: false)
      expect(person.rentals).to match_array([])
    end
  end

  context 'When testing add_rental method' do
    it 'Should add a rental to the rentals array' do
      person1 = Person.new(15, 'Angel Uray', false)
      book = Book.new('Harry', 'JK Rowling')
      rental = Rental.new('10/12/2022', book.title, person1)
      person1.add_rental('10/12/2022', book.title)
      expect(person1.rentals).to all(be_instance_of(Rental))
    end
  end

  context 'When testing can_use_services? method' do
    it 'Should return true if the person is of age' do
      person2 = Person.new(15, 'Angel Uray', true)
      expect(person2.can_use_services?).to be_truthy
    end
  end

  context 'When testing correct_name method' do
    it 'Should return the correct name' do
      person3 = Person.new(15, 'Angel Uray', true)
      expect(person3.correct_name).to eql('Angel Uray')
    end
  end
end
