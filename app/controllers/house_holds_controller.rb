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

    redirect_to @house_hold if @house_hold.save
  end

  def update
    redirect_to @house_hold, notice: 'House Hold was successfully updated' if @house_hold.update(house_hold_params)
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
    params.require(:house_hold).permit(:name)
  end


end
