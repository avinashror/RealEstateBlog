require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  def setup
  	sign_in users(:user1)
    @post = posts(:post_one)
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_template 'posts/index'
  end

  test "should get new" do
    get :new
    assert_response :success
  end


  test "should show post" do
    get :show, id: @post.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post.id
    assert_response :success
  end

  
end