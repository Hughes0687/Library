
class Book
  attr_reader :author, :title, :id, :check_out
  attr_accessor :status, :borrower

  def initialize(title = "Unknown", author = "Unknown", id = nil)
    @author = author
    @title = title
    @id = id
    @status = "available"
    @borrower = nil
  end

  def check_out
    if @status == "available"
      @status = "checked_out"
      return true
    else
      return false
    end
  end

  def check_in
    if @status == "checked_out"
    @status = "available"
    end
  end




end

class Borrower
  attr_reader :name 
  attr_accessor :borrowed_books

  def initialize(name)
    @name = name
    @borrowed_books = {}
  end
end

class Library
  #attr_reader: name, :books
  attr_reader :name, :title, :author, :books, :book
  attr_accessor :id_num, :id, :borrower

  def initialize(name=nil)
    @name = name
    #book = Book.new(title, author)
    @books = []
    @bookidmaker = -1
    @borrower = borrower
  end

  def add_book(title, author)
  end

  def id
    @id = id
  end

  def register_new_book(title, author)
    book = Book.new(title, author, @bookidmaker += 1)
    @books << book
  end

  def check_out_book(book_id, borrower)
    book_needed = @books.find{|book| book.id == book_id}
    book_needed.check_out
    return book_needed
    book_needed.borrower = borrower

  end

  def get_borrower(book_id)
    book_needed = @books.find{|book| book.id == book_id}
    book_needed.borrower.name
    #@borrowed_books[book_id]
  end


  def check_in_book(book)
    @books.each do [book_obj]
      if book_obj.status == "checked_out"
        book_obj.status = "available"
      end
    end
  end

  def available_books
   @books.select {|book| book.status == 'available'}

  end

  def borrowed_books
    @books.select {|book| book.status == 'checked_out'}
  end
end
