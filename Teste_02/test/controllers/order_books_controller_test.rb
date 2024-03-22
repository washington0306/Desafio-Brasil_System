require "test_helper"

class OrderBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_book = order_books(:one)
  end

  test "should get index" do
    get order_books_url
    assert_response :success
  end

  test "should get new" do
    get new_order_book_url
    assert_response :success
  end

  test "should create order_book" do
    assert_difference("OrderBook.count") do
      post order_books_url, params: { order_book: { author: @order_book.author, bond_type: @order_book.bond_type, edition: @order_book.edition, issn: @order_book.issn, publishing_company: @order_book.publishing_company, title: @order_book.title, year_publication: @order_book.year_publication } }
    end

    assert_redirected_to order_book_url(OrderBook.last)
  end

  test "should show order_book" do
    get order_book_url(@order_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_book_url(@order_book)
    assert_response :success
  end

  test "should update order_book" do
    patch order_book_url(@order_book), params: { order_book: { author: @order_book.author, bond_type: @order_book.bond_type, edition: @order_book.edition, issn: @order_book.issn, publishing_company: @order_book.publishing_company, title: @order_book.title, year_publication: @order_book.year_publication } }
    assert_redirected_to order_book_url(@order_book)
  end

  test "should destroy order_book" do
    assert_difference("OrderBook.count", -1) do
      delete order_book_url(@order_book)
    end

    assert_redirected_to order_books_url
  end
end
