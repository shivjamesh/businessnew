class CategoryController < ApplicationController

  def new
          @category = Category.new
      end

      def edit
          @category = Category.find(params[:id])
      end

      def create
        @category = Category.new(category_params)
        @category.save
      end
        #if @category.update(params[:category].permit(:category_params))
        #  redirect_to @category
        #else
        #  render 'edit'
        #end
      end

      def destroy
        @category = Category.find(params[:id])
        @category.destroy

        #redirect_to categorys_path
      end

      private
        def category_params
          params.require(:category).permit(:name)
        end
  end
