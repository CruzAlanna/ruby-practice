# require_relative '../review'

# RSpec.describe Book do
#   let(:book) {Book.new("The Female", "Invi Wright", 382) }

#   describe '#initialize' do
#     it 'initializes with the given title, author, and pages' do
#       #book = Book.new("The Female", "Invi Wright", 382) by using the let at the top, you dont need to repeat this in all the functions
#       expect(book.title).to eq("The Female")
#       expect(book.author).to eq("Invi Wright")
#       expect(book.pages).to eq(382)
#     end
#   end

#   describe '#book_info' do
#     it 'givens a book info message' do
#       expect(book.book_info).to eq("Book: The Female written by Invi Wright, contains: 382 pages")
#     end
#   end

#   describe '#bookmark' do
#     it 'puts what page of the book the user is currently on' do
#       expect(book.bookmark(106)).to eq("Currently on page: 106")
#     end
#   end
  
# end