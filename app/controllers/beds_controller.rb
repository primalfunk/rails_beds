class BedsController < ApplicationController
  def index
    @beds = Bed.all
  end

  def show
    @bed = Bed.find(params[:id])
  end

  def new
    @bed = Bed.new
  end

  def edit
    @bed = Bed.find(params[:id])
  end

  def create
    @bed = Bed.new(beds_params)
    if @bed.save
      redirect_to beds_path
    else
      render :new
    end
  end

  def update
    @bed = Bed.find(params[:id])
    if @bed.update(beds_params)
      redirect_to beds_path
    else
      render :edit
    end
  end

  def destroy
    Bed.find(params[:id]).destroy
    redirect_to beds_path
  end

  private

    def beds_params
      params.require(:bed).permit(:title, :manu, :model, :price, :rating)
    end
end
