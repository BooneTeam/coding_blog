class PostsController < ApplicationController
  after_action :verify_authorized, :except => [:index,:show]

  def index
    if current_user
      @posts = Post.all
    else
      @posts = Post.where(:active => true)
    end
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    binding.pry
    post = Post.new(post_params)
    authorize post
    if post.save
      redirect_to post
    else
      flash[:errors] = post.errors.full_messages
    end
  end

  def edit
    @post = Post.find(params[:id])
    authorize @post
  end

  def update
    @post = Post.find(params[:id])
    authorize @post
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
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:title, :description, :category_id, :active,{:articles_attributes => [:id,:title, :body, :_destroy]})
  end

end
