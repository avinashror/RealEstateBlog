require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test 'present attributes' do
    post = Post.new
    post.body = ""
    post.title = ""
    assert post.invalid?
    assert_equal 2, post.errors.size
    assert_equal [:title, :body].sort, post.errors.keys.sort
  end

  test 'unique attributes' do
    post1 = Post.new
    post1.body = posts(:post_one).body
    post1.title = ""
    
    assert_not post1.valid?
    assert_equal 1, post1.errors.size
    assert  !post1.errors.get(:title).blank?
  end
end
