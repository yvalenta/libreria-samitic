require 'rails_helper'

describe Book do

  it "#is present title, description, isbn" do
    book = Book.new(
      title: "Harry potter",
      description: "Libro de Harry potter",
      isbn: 1010)
    expect(book).to be_valid
  end

  it "allows two books to share the same isbn" do
    book = Book.create!(
      title: "Harry potter",
      description: "Libro de Harry potter",
      isbn: 1131
    )
    other_book = Book.new(
      title: "Harry potter II ",
      description: "Otro libro de Harry potter",
      isbn: 1131
    )
    other_book.valid?
    expect raise_error(ActiveRecord::RecordInvalid)
  end

end
