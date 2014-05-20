class HomeController < ApplicationController

  def index
    if current_user
      @posts = Post.all
    else
      @posts = Post.where(:active => true)
    end
  end
end
