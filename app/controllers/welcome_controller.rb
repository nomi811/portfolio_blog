class WelcomeController < ApplicationController # :nodoc:
  def index
    @posts = Post.all.limit(4).order('created_at desc')
    @projects = Project.all.limit(4).order('created_at desc')
    @photos = Photo.all.limit(4)
    @patterns = Pattern.all.limit(4)
  end
end
