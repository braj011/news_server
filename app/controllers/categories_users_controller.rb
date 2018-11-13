class CategoriesUsersController < ApplicationController

    def index 
      render json:CategoryUser.all
    end 
  
    def new
        @categoryuser = CategoryUser.new
    end
  
    def create
        created = CategoryUser.create(category_id: params[:category], user_id: params[:user])
        render json: created
    end
  
  end
  