require "test_helper"

class SupplierCertificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier_certification = supplier_certifications(:one)
  end

  test "should get index" do
    get supplier_certifications_url, as: :json
    assert_response :success
  end

  test "should create supplier_certification" do
    assert_difference("SupplierCertification.count") do
      post supplier_certifications_url, params: { supplier_certification: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show supplier_certification" do
    get supplier_certification_url(@supplier_certification), as: :json
    assert_response :success
  end

  test "should update supplier_certification" do
    patch supplier_certification_url(@supplier_certification), params: { supplier_certification: {  } }, as: :json
    assert_response :success
  end

  test "should destroy supplier_certification" do
    assert_difference("SupplierCertification.count", -1) do
      delete supplier_certification_url(@supplier_certification), as: :json
    end

    assert_response :no_content
  end
end
