require 'test_helper'

class ProfesoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profesores_index_url
    assert_response :success
  end

  test "should get new" do
    get profesores_new_url
    assert_response :success
  end

  test "should get show" do
    get profesores_show_url
    assert_response :success
  end

  test "should get edit" do
    get profesores_edit_url
    assert_response :success
  end

end
