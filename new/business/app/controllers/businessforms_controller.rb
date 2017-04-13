class BusinessformsController < ApplicationController
  before_action :current_user, only: [:create, :edit, :update, :destroy]
  before_action :current_user, only: :destroy

  def index
    if params[:category].blank?
      @businessforms = Businessform.all.paginate(page: params[:page], per_page: 5)
      respond_to do |format|
      format.html
      format.xml { render :xml => @businessforms }
      format.json { render :json => @businessforms }
    end
    else
      @category_id = Category.find_by(name: params[:category]).id
      @businessforms = Businessform.where(category_id: @category_id).paginate(page: params[:page], per_page: 5)
    end
  end


  def show
    @businessforms = current_user.businessforms.all.paginate(page: params[:page], per_page: 5)
  end

  def new
    @businessform = current_user.businessforms.build
    #@businessform = Businessform.new
  end

  def create
        @businessform = current_user.businessforms.build(businessform_params)
    #@businessform = Businessform.new(businessform_params)
    if @businessform.save
      redirect_to businessforms_path, notice: "Business Listing was successfully Created"
    else
          render 'new'
    end
  end

  def edit
  end

  def update
    if @businessform.update(businessform_params)
      redirect_to @businessform
    else
      render "Edit"
    end
  end

  def destroy
    @businessform = Businessform.find_by_id(params[:id])
    if @businessform.user == current_user
      @businessform.destroy
    else
      redirect_to businessforms_path, notice: "You don't have permision."
    end

  end


  private

  def set_businessform
    @businessform = current_user.businessform.find(params[:id])
  end

  def businessform_params
    params[:businessform].permit(:name, :street, :state, :postcode, :website, :country, :phone, :category_id, :description, :city)
  end
end
