class BillboardsController < ApplicationController
  before_action :set_bill, only: [:edit, :show, :update, :destroy]

  
  def index
    @billboards = Billboard.all
  end

  def show
  end

  def edit
  end

  def new
    @billboard = Billboard.new
  end
  
  def create  
    @billboard = Billboard.new(bill_params)
    if @billboard.save
      redirect_to billboard_path
    else
      render :new
    end
  end

  def update
    if @billboard.update(bill_params)
      redirect_to billboard_path(@billboard)
    else
      render :edit
    end
  end

  def destroy
    @billboard.destroy
    redirect_to billboard_path
  end

  private
  def set_bill
    @billboard = Billboard.find(params[:id])
  end
  def bill_params
    params.require(:billboard).permit(:name)
  end

end
