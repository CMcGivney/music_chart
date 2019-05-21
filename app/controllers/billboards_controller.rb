class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :edit, :update]

  def index
    @billboards = current_user.billboards
  end

  def show
  end

  def new
    @billboard = Billboard.new
  end

  def create
    @billboard = current_user.billboards.new(billboard_params)
    if @billboard.save
      redirect_to billboards_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @billboard.update(billboard_params)
      redirect_to billboards_path
    else
      render :edit
    end
  end

  def destroy
    @billboard.destroy
    redirect_to billboards_path
  end

  private
    def billboard_params
      params.require(:billboard).permit(:name, :balance)
    end

    # don't just find by the billboard model or you may potentially be able to view other users billboards
    def set_billboard
      @billboard = current_user.accounts.find(params[:id])
    end

end
