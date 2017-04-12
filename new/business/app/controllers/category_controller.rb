class CategoryController < ApplicationController

  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @businessform = @category.name
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
  end
