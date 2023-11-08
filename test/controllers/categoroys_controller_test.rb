require "test_helper"

class CategoroysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoroy = categoroys(:one)
  end

  test "should get index" do
    get categoroys_url
    assert_response :success
  end

  test "should get new" do
    get new_categoroy_url
    assert_response :success
  end

  test "should create categoroy" do
    assert_difference("Categoroy.count") do
      post categoroys_url, params: { categoroy: { name: @categoroy.name } }
    end

    assert_redirected_to categoroy_url(Categoroy.last)
  end

  test "should show categoroy" do
    get categoroy_url(@categoroy)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoroy_url(@categoroy)
    assert_response :success
  end

  test "should update categoroy" do
    patch categoroy_url(@categoroy), params: { categoroy: { name: @categoroy.name } }
    assert_redirected_to categoroy_url(@categoroy)
  end

  test "should destroy categoroy" do
    assert_difference("Categoroy.count", -1) do
      delete categoroy_url(@categoroy)
    end

    assert_redirected_to categoroys_url
  end
end
