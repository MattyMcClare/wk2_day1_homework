require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @books = [
      {
        title: "Harry Potter:The Philosopher's Stone",
        rental_details: {
         student_name: "Matt",
         date: "1997"
        }
      },
      {
        title: "Harry Potter:The Chamber of Secrets",
        rental_details: {
         student_name: "Bob",
         date: "1998"
        }
      }
    ]


  end

  def test_get_books
    library = Library.new(@books)
    assert_equal("Harry Potter:The Philosopher's Stone", library.books[0][:title])
  end

  def test_get_book_details
    library = Library.new(@books)
    book = library.get_book_details("Harry Potter:The Philosopher's Stone")
    assert_equal(book[:title], "Harry Potter:The Philosopher's Stone")
  end

  def test_get_book_rental_details
    library = Library.new(@books)
    book = library.get_book_rental_details("Harry Potter:The Philosopher's Stone")
    assert_equal(book[:date], "1997")
  end

  def test_add_book_by_title
    library = Library.new(@books)
    book = library.add_book_by_title("Harry Potter:The Prisoner of Azkaban")
    assert_equal(3, @books.length)
  end

end
