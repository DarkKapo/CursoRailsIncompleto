class PostsController < ApplicationController
  def index
    #mostrar todos los posts
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    @post = Post.create(title: params[:title], content: params[:content], image_url: params[:image_url])
  end
end
