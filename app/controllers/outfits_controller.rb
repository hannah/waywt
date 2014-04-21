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

  def show
    @outfit = Outfit.find(params[:id])
  end

  private

  def outfit_params
    params.require(:outfit).permit(:image, :description, :user_id)
  end
end
