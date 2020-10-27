class PostsController < ApplicationController

  def index  #index action
    @posts = Post.all.order(id: "DESC")
  end


  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
