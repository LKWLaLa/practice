class PostsController < ApplicationController

  before_action :set_post, only: [:show, :destroy, :update]


  def index
    @posts = Post.all
    render json: @posts, status: 200
  end


  def create
    @post = Post.create(name: params[:name])
    render json: @post, status: 201
  end

  def update
    if @post.update(name: params[:name])
      render json: @post, status: 200
    end
  end

  def show
    render json: @post, status: 200
  end

  def destroy
    @post.destroy
   render json: {}, status: 204 
  end


  private

  def set_post
   @post = Post.find_by(id: params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :author_id, :body)
  end


end
