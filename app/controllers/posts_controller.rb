class PostsController < ApplicationController

  def index
    # N+1 쿼리 발생
    result = []
    @posts = Post.all

    @posts.each do |post|
      result << {
        id: post.id,
        comments: post.comments
      }
    end

    render json: result
  end

  def index_joins
    result = []
    @posts = Post.all.joins(:comments)

    @posts.each do |post|
      result << {
        id: post.id,
        comments: post.comments
      }
    end

    render json: result
  end

  def index_includes
    result = []
    # @posts = Post.all.includes(:comments)
    @posts = Post.all.includes(:comments).where(comments: {body: 'Body 1'})

    @posts.each do |post|
      result << {
        id: post.id,
        comments: post.comments
      }
    end

    render json: result
  end

  def index_preload
    result = []
    # @posts = Post.all.preload(:comments)
    # @posts = Post.all.preload(:comments, :tags)
    # @posts = Post.all.preload(:comments).where(comments: {body: 'Body 1'})
    # @posts = Post.all.preload(:comments).where(posts: {body: 'Body 1'})

    @posts.each do |post|
      result << {
        id: post.id,
        comments: post.comments
      }
    end

    render json: result
  end


  def index_eager_load
    result = []
    # @posts = Post.all.eager_load(:comments)
    @posts = Post.all.eager_load(:comments).where(comments: {body: 'Body 1'})

    @posts.each do |post|
      result << {
        id: post.id,
        comments: post.comments
      }
    end

    render json: result
  end

  def create
    @post = Post.new
    @post.save
  end

  def show

  end
end
