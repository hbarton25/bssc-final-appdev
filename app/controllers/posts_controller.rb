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
    @post.user_id = params[:user_id]
    @post.title = params[:title]
    @post.body = params[:body]

    if @post.save
    redirect_to "/posts", :notice => "Post created successfully."
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.user_id = params[:user_id]
    @post.title = params[:title]
    @post.body = params[:body]

    if @post.save
      redirect_to "/posts", :notice => "Post updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])

    @post.destroy

    redirect_to :back, :notice => "Post deleted."
  end
end
