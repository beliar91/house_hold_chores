class HouseHoldsController < ApplicationController

  before_action :set_house_hold, only: [:show, :edit, :update, :destroy]


  def new
    @house_hold = HouseHold.new
  end

  def index
    @house_holds = HouseHold.all
  end

  def show
  end

  def edit
  end

  def create
    @house_hold = HouseHold.create(house_hold_params)
    @house_hold.user_id = current_user.id


    if @house_hold.save
      redirect_to @house_hold
    else
      render :new
    end
  end

  def update
    if @house_hold.update(house_hold_params)
      redirect_to @house_hold, notice: 'House Hold was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @house_hold.destroy
    redirect_to house_holds_url
  end

  private

  def set_house_hold
    @house_hold = HouseHold.find(params[:id])
  end

  def house_hold_params
    params.require(:house_hold).permit(:name, :user_id)
  end


end
