class CategoriesUsersController < ApplicationController

    def index 
      render json:CategoryUser.all
    end 
  
    def new
        @categoryuser = CategoryUser.new
    end
  
    def create
        if params[:type] == 'delete'
            listing = CategoryUser.find {|i| i.category_id == params[:category]}
            listing.destroy
            render json: listing
        else
        created = CategoryUser.find_or_create_by(category_id: params[:category], user_id: params[:user])
        render json: created
     end
    end

    def destroy
        listing = CategoryUser.find {|i| i.category_id == params[:category]}
        listing.destroy
    end
  
  end
  