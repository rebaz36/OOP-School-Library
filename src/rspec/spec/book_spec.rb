require_relative '../../book'

describe Book do
  context 'When testing the Book class' do
    it 'should creates a new book when we instantiate it' do
      book = Book.new('Harry', 'JK Rowling')
      expect(book).to be_instance_of Book
      expect(book).to have_attributes(title: 'Harry')
      expect(book).to have_attributes(author: 'JK Rowling')
      expect(book.rentals).to match_array([])
    end
  end

  context 'When testing the add_rentals method' do
    it 'should add a new rental to the rentals array' do
      book = Book.new('Harry', 'JK Rowling')
      rental = book.add_rentals('2021-01-01', 'John')
      expect(book.rentals).to match_array(rental)
    end
  end

end
