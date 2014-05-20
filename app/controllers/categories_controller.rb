class CategoriesController < ApplicationController


  def show
    @category = Category.find(params[:id])
    if current_user
      @posts = @category.posts
    else
      @posts = @category.posts.where(:active => true)
    end
  end

end
