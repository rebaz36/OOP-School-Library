require_relative 'book_spec'
require_relative 'person_spec'
require_relative '../../rental'

describe Rental do
  let(:person) { Person.new(12, 'Maddison', false) }
  let(:book) { Book.new('Harry', 'JK Rowling') }
  let(:rental) { Rental.new(book.title, person.name, '10/12/2022') }

  it 'Should create a new instance' do
    expect(rental).to be_instance_of Rental
  end

  it 'Should create a Rental object' do
    expect(rental).to have_attributes(name: 'Maddison')
    expect(rental).to have_attributes(title: 'Harry')
    expect(rental.date).to eql '10/12/2022'
    expect(rental.rentals).to eql('Harry: Maddison 10/12/2022')
  end

  it 'Should test the rentals method' do
    expect(rental.rentals).to eql('Harry: Maddison 10/12/2022')
  end
end
