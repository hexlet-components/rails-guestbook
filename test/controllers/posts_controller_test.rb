# frozen_string_literal: true

require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    Faker::Config.random = Random.new(42)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should create post" do
    params = { post: { body: Faker::Markdown.emphasis, title: Faker::Address.full_address } }
    post(posts_url, params:)

    post = Post.find_by(params[:post])

    assert { post }
  end
end
