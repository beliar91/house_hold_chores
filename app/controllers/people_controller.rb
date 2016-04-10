class PeopleController < ApplicationController

  before_action :set_person, only: [:show, :edit, :update, :destroy]


  def new
    @person = Person.new
  end

  def show
  end

  def create
    @person = Person.create(people_params)
    @person.user_id = current_user.id
    if @person.save
      redirect_to @person
    else
      render :new
    end
  end

  def index
    @people = Person.all
  end

  def destroy
    @person.destroy
    redirect_to people_url
  end

  def edit
  end

  def update
    if @person.update(people_params)
      redirect_to @person, notice: "Person was successfully updated"
    else
      render :edit
    end
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def people_params
    params.require(:person).permit(:name, :surname, :user_id, :house_hold_id)
  end

end
