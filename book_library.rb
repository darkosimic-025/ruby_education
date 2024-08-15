class Book
  attr_accessor :title, :author, :isbn

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def display_info
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "ISBN: #{@isbn}"
    puts "----------------------"
  end
end

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
    puts "Book '#{book.title}' added to the library."
  end

  def remove_book(isbn)
    book = @books.find { |b| b.isbn == isbn }
    if book
      @books.delete(book)
      puts "Book '#{book.title}' removed from the library."
    else
      puts "Book with ISBN #{isbn} not found."
    end
  end

  def list_books
    if @books.empty?
      puts "No books in the library."
    else
      @books.each do |book|
        book.display_info
      end
    end
  end
end


