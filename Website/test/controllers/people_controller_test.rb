require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create people" do
    assert_difference('Person.count') do
      post :create, people: { bio: @person.bio, name: @person.name }
    end

    assert_redirected_to person_path(assigns(:people))
  end

  test "should show people" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update people" do
    patch :update, id: @person, people: { bio: @person.bio, name: @person.name }
    assert_redirected_to person_path(assigns(:people))
  end

  test "should destroy people" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
