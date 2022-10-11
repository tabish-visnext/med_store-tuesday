require "test_helper"

class PricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price = prices(:one)
  end

  test "should get index" do
    get prices_url, as: :json
    assert_response :success
  end

  test "should create price" do
    assert_difference("Price.count") do
      post prices_url, params: { price: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show price" do
    get price_url(@price), as: :json
    assert_response :success
  end

  test "should update price" do
    patch price_url(@price), params: { price: {  } }, as: :json
    assert_response :success
  end

  test "should destroy price" do
    assert_difference("Price.count", -1) do
      delete price_url(@price), as: :json
    end

    assert_response :no_content
  end
end
