class OctopiController < ApplicationController
  before_action :set_octopus, only: [:show, :edit, :update, :destroy]
  def index
    @octopi = Octopus.all
  end

  def show
  end

  def edit
  end

  def new
    @octopus = Octopus.new
  end

  def create
    @octopus = Octopus.new(fetch_params)
    if @octopus.valid?
    @octopus.save
    redirect_to octopus_path(@octopus)

    else
      render :new
    end
  end

  def update
    @octopus.update(fetch_params)
    redirect_to octopus_path(@octopus)
  end

  def destroy
    @octopus.destroy
    redirect_to octopi_path
  end

  private

  def set_octopus
    @octopus = Octopus.find(params[:id])
  end

  def fetch_params
    params.require(:octopus).permit(:name, :legs)
  end
end
