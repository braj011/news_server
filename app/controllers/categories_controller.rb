class CategoriesController < ApplicationController

  def index 
    render json:Category.all
  end 
  
  def show
    category = Category.find(params[:id])
    render json:category
  end

  def new
    @category = Category.new
  end

  def create
    created = Category.create(name: params[:name])
    render json: created
  end

end
