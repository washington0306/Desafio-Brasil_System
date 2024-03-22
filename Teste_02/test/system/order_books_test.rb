require "application_system_test_case"

class OrderBooksTest < ApplicationSystemTestCase
  setup do
    @order_book = order_books(:one)
  end

  test "visiting the index" do
    visit order_books_url
    assert_selector "h1", text: "Order books"
  end

  test "should create order book" do
    visit order_books_url
    click_on "New order book"

    fill_in "Author", with: @order_book.author
    fill_in "Bond type", with: @order_book.bond_type
    fill_in "Edition", with: @order_book.edition
    fill_in "Issn", with: @order_book.issn
    fill_in "Publishing company", with: @order_book.publishing_company
    fill_in "Title", with: @order_book.title
    fill_in "Year publication", with: @order_book.year_publication
    click_on "Create Order book"

    assert_text "Order book was successfully created"
    click_on "Back"
  end

  test "should update Order book" do
    visit order_book_url(@order_book)
    click_on "Edit this order book", match: :first

    fill_in "Author", with: @order_book.author
    fill_in "Bond type", with: @order_book.bond_type
    fill_in "Edition", with: @order_book.edition
    fill_in "Issn", with: @order_book.issn
    fill_in "Publishing company", with: @order_book.publishing_company
    fill_in "Title", with: @order_book.title
    fill_in "Year publication", with: @order_book.year_publication
    click_on "Update Order book"

    assert_text "Order book was successfully updated"
    click_on "Back"
  end

  test "should destroy Order book" do
    visit order_book_url(@order_book)
    click_on "Destroy this order book", match: :first

    assert_text "Order book was successfully destroyed"
  end
end
