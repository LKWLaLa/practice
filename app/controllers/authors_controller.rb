class AuthorsController < ApplicationController

  before_action :set_author, only: [:show, :destroy, :update]


  def index
    @authors = Author.all
    render json: @authors, status: 200
  end


  def create
    @author = Author.create(name: params[:name])
    render json: @author, status: 201
  end

  def update
    if @author.update(name: params[:name])
      render json: @author, status: 200
    end
  end

  def show
    render json: @author, status: 200
  end

  def destroy
    @author.destroy
   render json: {}, status: 204 
  end


  private

  def set_author
   @author = Author.find_by(id: params[:id])
  end


end
