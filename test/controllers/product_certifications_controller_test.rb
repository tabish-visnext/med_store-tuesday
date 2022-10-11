require "test_helper"

class ProductCertificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_certification = product_certifications(:one)
  end

  test "should get index" do
    get product_certifications_url, as: :json
    assert_response :success
  end

  test "should create product_certification" do
    assert_difference("ProductCertification.count") do
      post product_certifications_url, params: { product_certification: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show product_certification" do
    get product_certification_url(@product_certification), as: :json
    assert_response :success
  end

  test "should update product_certification" do
    patch product_certification_url(@product_certification), params: { product_certification: {  } }, as: :json
    assert_response :success
  end

  test "should destroy product_certification" do
    assert_difference("ProductCertification.count", -1) do
      delete product_certification_url(@product_certification), as: :json
    end

    assert_response :no_content
  end
end
