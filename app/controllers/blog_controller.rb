class BlogController < ApplicationController

  # Make all the blog stuff use the same layout
  layout  "blog"

  def show
    @title = "some custom page title"
  end


  def post
    render "/#{self.controller_name}/#{params[:title]}/index.html"
  end
end