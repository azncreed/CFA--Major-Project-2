require 'test_helper'

class CprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cprofile = cprofiles(:one)
  end

  test "should get index" do
    get cprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_cprofile_url
    assert_response :success
  end

  test "should create cprofile" do
    assert_difference('Cprofile.count') do
      post cprofiles_url, params: { cprofile: { description: @cprofile.description, name: @cprofile.name, skills: @cprofile.skills } }
    end

    assert_redirected_to cprofile_url(Cprofile.last)
  end

  test "should show cprofile" do
    get cprofile_url(@cprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_cprofile_url(@cprofile)
    assert_response :success
  end

  test "should update cprofile" do
    patch cprofile_url(@cprofile), params: { cprofile: { description: @cprofile.description, name: @cprofile.name, skills: @cprofile.skills } }
    assert_redirected_to cprofile_url(@cprofile)
  end

  test "should destroy cprofile" do
    assert_difference('Cprofile.count', -1) do
      delete cprofile_url(@cprofile)
    end

    assert_redirected_to cprofiles_url
  end
end
