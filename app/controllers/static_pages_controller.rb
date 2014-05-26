class StaticPagesController < ApplicationController

  def about
    @about_page = true
    render :about
  end

end
