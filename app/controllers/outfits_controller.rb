class OutfitsController < ApplicationController
  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = current_user
    if @outfit.save
      redirect_to outfit_path(@outfit),
        notice: 'Outfit Submitted'
    else
      redirect_to new_user_session, notice: 'You must be signed in to post'
    end
  end

  def index
    if params[:q]
      username = params[:q][:username]
      @outfits = User.where("username ILIKE ?", "%#{username}%")
    else
      @outfits = Outfit.all
    end
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def edit
    @outfit = Outfit.find(params[:id])
  end

  def destroy
    @outfit = Outfit.find(params[:id])
    @outfit.destroy
    redirect_to outfits_path, notice: 'Outfit deleted'
  end

  def update
    @outfit = Outfit.find(params[:id])
    if @outfit.update(outfit_params)
      redirect_to outfit_path(@outfit), notice: 'Outfit updated'
    else
      render 'edit'
    end
  end

  private

  def outfit_params
    params.require(:outfit).permit(:image, :description, :user_id)
  end
end
