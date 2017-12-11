require 'test_helper'

class OutagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outage = outages(:one)
  end

  test "should get index" do
    get outages_url
    assert_response :success
  end

  test "should get new" do
    get new_outage_url
    assert_response :success
  end

  test "should create outage" do
    assert_difference('Outage.count') do
      post outages_url, params: { outage: { notes: @outage.notes } }
    end

    assert_redirected_to outage_url(Outage.last)
  end

  test "should show outage" do
    get outage_url(@outage)
    assert_response :success
  end

  test "should get edit" do
    get edit_outage_url(@outage)
    assert_response :success
  end

  test "should update outage" do
    patch outage_url(@outage), params: { outage: { notes: @outage.notes } }
    assert_redirected_to outage_url(@outage)
  end

  test "should destroy outage" do
    assert_difference('Outage.count', -1) do
      delete outage_url(@outage)
    end

    assert_redirected_to outages_url
  end
end
