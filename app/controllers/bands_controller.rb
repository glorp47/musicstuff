class BandsController < ApplicationController

    before_action :require_signed_in!, except: [:index]
  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to band_url(@band)
    else
      flash[:errors] = [@band.errors.full_messages]
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    if @band.update(band_params)
      redirect_to band_url(@band)
    else
      flash[:errors] = "Unable to Update Band"
      render :edit
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to bands_url
  end

  def show
    @band = Band.find(params[:id])
  end

  def index
    @bands = Band.all
  end

  private
  def band_params
    params.require(:band).permit(:name)
  end
end
