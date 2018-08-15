require 'test_helper'

class StorefrontControllerTest < ActionDispatch::IntegrationTest
  test "should get all_products" do
    get storefront_all_products_url
    assert_response :success
  end

  test "should get items_by_category" do
    get storefront_items_by_category_url
    assert_response :success
  end

  test "should get items_by_brand" do
    get storefront_items_by_brand_url
    assert_response :success
  end

end
