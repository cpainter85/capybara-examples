class WhiskeysController < ApplicationController
  def index
    @whiskeys = Whiskey.all
  end

  def new
    @whiskey = Whiskey.new
  end

  def create
    @whiskey = Whiskey.new(whiskey_params)
    if @whiskey.save
      redirect_to whiskeys_path, notice: "#{@whiskey.name} was successfully added!"
    else
      render :new
    end
  end

  def show
    @whiskey = Whiskey.find(params[:id])
  end

  def edit
    @whiskey = Whiskey.find(params[:id])
  end

  def update
    @whiskey = Whiskey.find(params[:id])
    if @whiskey.update(whiskey_params)
      redirect_to whiskey_path(@whiskey), notice: "#{@whiskey.name} was updated!"
    else
      render :edit
    end
  end

  def destroy
    whiskey = Whiskey.destroy(params[:id])
    redirect_to whiskeys_path, notice: "#{whiskey.name} was deleted!"
  end

  private

  def whiskey_params
    params.require(:whiskey).permit(:name, :whiskey_type, :place_of_origin, :proof)
  end

end
