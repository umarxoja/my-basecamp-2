require "test_helper"

class AttachmesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attachme = attachmes(:one)
  end

  test "should get index" do
    get attachmes_url
    assert_response :success
  end

  test "should get new" do
    get new_attachme_url
    assert_response :success
  end

  test "should create attachme" do
    assert_difference("Attachme.count") do
      post attachmes_url, params: { attachme: { name: @attachme.name, project_id: @attachme.project_id } }
    end

    assert_redirected_to attachme_url(Attachme.last)
  end

  test "should show attachme" do
    get attachme_url(@attachme)
    assert_response :success
  end

  test "should get edit" do
    get edit_attachme_url(@attachme)
    assert_response :success
  end

  test "should update attachme" do
    patch attachme_url(@attachme), params: { attachme: { name: @attachme.name, project_id: @attachme.project_id } }
    assert_redirected_to attachme_url(@attachme)
  end

  test "should destroy attachme" do
    assert_difference("Attachme.count", -1) do
      delete attachme_url(@attachme)
    end

    assert_redirected_to attachmes_url
  end
end
