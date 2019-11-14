class FunfactsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @funfact = Funfact.where("created_at >= ?", Time.zone.now.beginning_of_day).last
  end
  
  def new
    @funfact = Funfact.new
  end

  def create
    @funfact = Funfact.create(funfact_params)
    if @funfact.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def funfact_params
    params.require(:funfact).permit(:fact, :author)
  end
end
