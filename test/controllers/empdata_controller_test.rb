require "test_helper"

class EmpdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empdatum = empdata(:one)
  end

  test "should get index" do
    get empdata_url
    assert_response :success
  end

  test "should get new" do
    get new_empdatum_url
    assert_response :success
  end

  test "should create empdatum" do
    assert_difference('Empdatum.count') do
      post empdata_url, params: { empdatum: { age: @empdatum.age, designation: @empdatum.designation, gender: @empdatum.gender, name: @empdatum.name } }
    end

    assert_redirected_to empdatum_url(Empdatum.last)
  end

  test "should show empdatum" do
    get empdatum_url(@empdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_empdatum_url(@empdatum)
    assert_response :success
  end

  test "should update empdatum" do
    patch empdatum_url(@empdatum), params: { empdatum: { age: @empdatum.age, designation: @empdatum.designation, gender: @empdatum.gender, name: @empdatum.name } }
    assert_redirected_to empdatum_url(@empdatum)
  end

  test "should destroy empdatum" do
    assert_difference('Empdatum.count', -1) do
      delete empdatum_url(@empdatum)
    end

    assert_redirected_to empdata_url
  end
end
