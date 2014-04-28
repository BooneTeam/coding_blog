class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to post
    else
      flash[:errors] = post.errors.full_messages
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes!(post_params)
      redirect_to @post
    else
      redirect_to :back
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy

  end

  def post_params
    params.require(:post).permit(:title, :description, :category_id, {:articles_attributes => [:id, :body, :_destroy]})
  end

end
