require_relative 'book_spec'
require_relative 'person_spec'

class Rental
  attr_accessor :date, :title, :name, :id

  def initialize(book_title, customer_name, customer_id, date = Date.today)
    @date = date
    @name = customer_name
    @id = customer_id
    @title = book_title
  end

  def rentals
    "#{@title}: #{@name} #{@date}"
  end
end

describe Rental do
  let(:person) { Person.new(12, 'Maddison') }
  let(:book) { Book.new('Harry', 'JK Rowling') }
  let(:rental) { Rental.new('10/12/2022', book, person) }

  it 'Should create a new instance' do
    expect(rental).to be_instance_of Rental
  end

  it 'Should create a Rental object' do
    expect(rental.name).to have_attributes(name: 'Maddison')
    expect(rental.title).to have_attributes(title: 'Harry')
    expect(rental.date).to eql '10/12/2022'
    expect(rental.rentals).to eql('Harry: Maddison 10/12/2022')
  end
end
