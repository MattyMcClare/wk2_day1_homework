class Library
  attr_accessor :books
  def initialize(books)
    @books = books
  end

  def get_book_details(title)
    for book in @books
      if (title == book[:title])
        return book
      end
    end
  end

  def get_book_rental_details(title)
    for book in @books
      if (title == book[:title])
        return book[:rental_details]
      end
    end
  end

  def add_book_by_title(title)
    new_book = {
      title: title,
      rental_details: {
       student_name: "",
       date: ""
      }
    }
    for book in @books
      if (title != book[:title])
      return books.push(new_book)
      end
    end
  end

end
