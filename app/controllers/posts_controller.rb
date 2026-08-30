# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.latest.all
    @post = Post.new
  end

  def create
    @posts = Post.latest.all
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_url, notice: t(".success")
    else
      render :index, status: :unprocessable_content
    end
  end

  private

  def post_params
    params.expect(post: %i[title body])
  end
end
