require "test_helper"

class Api::V1::BooksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get index" do
    library = libraries(:one)
    get api_v1_library_books_url(library), as: :json
    assert_response :success
  end
end
