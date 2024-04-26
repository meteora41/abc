class Users::RecruitingsController < ApplicationController
  
  def index
    @recruiting = Recruiting.new
    @recruitings = Recruiting.all#.page(params[:page]).per(10)
  end
  
  def create
    @recruiting = Recruiting.new(recruiting_params)
    if @recruiting.save
      redirect_to users_recruiting_path(@recruiting.id)
    else
      render :index
    end
  end
  
  def show
    @recruiting = Recruiting.find(params[:id])
  end
  
  def edit
    @recruiting = Recruiting.find(params[:id])
  end
  
  def update
    @recruiting = Recruiting.find(params[:id])
    if @recruiting.update(recruiting_params)
      redirect_to users_recruiting_path(@recruiting.id)
    else
      render :edit
    end
  end
  
  def destroy
    recruiting = Recruiting.find(params[:id])
    recruiting.destroy
    redirect_to users_recruitings_path
  end
 
 
  private

  def recruiting_params
    params.require(:recruiting).permit(:title, :comment, :datetime, :place)
  end
  
end
