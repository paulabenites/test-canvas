require 'test_helper'

class GradingStandardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grading_standards_index_url
    assert_response :success
  end

  test "should get new" do
    get grading_standards_new_url
    assert_response :success
  end

  test "should get edit" do
    get grading_standards_edit_url
    assert_response :success
  end

end
