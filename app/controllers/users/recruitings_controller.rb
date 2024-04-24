class Users::RecruitingsController < ApplicationController
  
  def index
    @recruiting = Recruiting.new
    @recruitings = Recruiting.all#.page(params[:page]).per(10)
  end
  
  def create
    @recruiting = Recruiting.new(recruiting_params)
    if @recruiting.save
      redirect_to users_recruiting_path(@recruiting.id)
    end
  end
  
  def show
    @recruiting = Recruiting.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
 
 
  private

  def recruiting_params
    params.require(:recruiting).permit(:title, :comment, :datetime, :place)
  end
  
end
