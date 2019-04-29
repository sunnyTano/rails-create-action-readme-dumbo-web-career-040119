class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

<<<<<<< HEAD
=======
def create
  post = Post.new
  post.title = params[:title]
  post.description = params[:description]
  post.save
end

>>>>>>> be1082efec86756aa502a62f2ef1f2c40d0b9986
end
