require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

  def setup
    sign_in users(:user1)
    @post = posts(:post_one)
    @comment = comments(:comment_one)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, post_id: @post.id, comment: { body: "This is a comment" }
    end

    assert_redirected_to post_path(@post)
  end

end