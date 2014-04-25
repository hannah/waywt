class OutfitsController < ApplicationController
  def new
    @outfit = Outfit.new
  end

  def create
    if user_signed_in?
      @outfit = Outfit.new(outfit_params)
      @outfit.user = current_user
      if @outfit.save
        redirect_to outfit_path(@outfit),
          notice: 'Outfit Submitted'
      else
        render 'new'
      end
    else
      redirect_to '/users/sign_in', notice: 'You must be signed in to post'
    end
  end

  def index
    @outfits = Outfit.all
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def edit
    if @outfit.user == current_user
      @outfit = Outfit.find(params[:id])
    else
      flash[:alert] = "Can't edit outfit you didn't create"
    end
  end

  def destroy
    if @outfit.user == current_user
      @outfit = Outfit.find(params[:id])
      @outfit.destroy
      redirect_to outfits_path, notice: 'Outfit deleted'
    else
      flash[:alert] = 'Cannot delete outfit!'
      redirect_to outfit_path(@outfit)
    end
  end

  def update
    @outfit = Outfit.find(params[:id])
    if @outfit.update(outfit_params)
      redirect_to outfit_path(@outfit), notice: 'Outfit updated'
    else
      render 'edit'
    end
  end

  def search
    if params[:query]
      username = params[:query]
      @outfits = User.where("username ILIKE ?", "%#{username}%")
    else
      "Search does not exit"
    end
  end

  private

  def query_params
    params.require(:query)
  end

  def outfit_params
    params.require(:outfit).permit(:image, :description, :user_id)
  end
end
