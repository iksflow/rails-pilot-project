class PostsController < ApplicationController

  def index
    # Using IN clause
    # @posts = Post.all.includes(:comments)

    # Using Join clause
    # @posts = Post.eager_load(:comments)


    @posts = Post.preload(:comments)



    # # cause N + 1
    # @posts.includes(:comments)
  end

  def create
    @post = Post.new
    @post.save
  end

end
