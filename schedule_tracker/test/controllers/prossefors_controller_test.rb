require 'test_helper'

class ProsseforsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prossefor = prossefors(:one)
  end

  test "should get index" do
    get prossefors_url
    assert_response :success
  end

  test "should get new" do
    get new_prossefor_url
    assert_response :success
  end

  test "should create prossefor" do
    assert_difference('Prossefor.count') do
      post prossefors_url, params: { prossefor: { department: @prossefor.department, f_name: @prossefor.f_name, l_name: @prossefor.l_name } }
    end

    assert_redirected_to prossefor_url(Prossefor.last)
  end

  test "should show prossefor" do
    get prossefor_url(@prossefor)
    assert_response :success
  end

  test "should get edit" do
    get edit_prossefor_url(@prossefor)
    assert_response :success
  end

  test "should update prossefor" do
    patch prossefor_url(@prossefor), params: { prossefor: { department: @prossefor.department, f_name: @prossefor.f_name, l_name: @prossefor.l_name } }
    assert_redirected_to prossefor_url(@prossefor)
  end

  test "should destroy prossefor" do
    assert_difference('Prossefor.count', -1) do
      delete prossefor_url(@prossefor)
    end

    assert_redirected_to prossefors_url
  end
end
