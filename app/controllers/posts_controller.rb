# frozen_string_literal: true

class PostsController < ApplicationController # :nodoc:
  before_action :authenticate_user!, except: %i[index show]
  before_action :find_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all.order('created_at desc').paginate(page: params[:page], per_page: 10)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post, notice: 'Right on, Nomi!  Your article was successfully saved!'
    else
      render 'new', notice: 'Oh no! I was unable to save your post!'
    end
  end

  def show; end

  def edit; end

  def update
    if @post.update post_params
      redirect_to @post, notice: 'Huzzah! Your article was successfully updated!'
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Your post was deleted!'
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :slug, :image)
  end

  def find_post
    @post = Post.friendly.find(params[:id])
  end
end
