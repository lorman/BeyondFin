class CampaignsController < ApplicationController
  before_action :permit_params, only: [:create]

  def index
    @campaigns = Campaign.all
  end
  
  def show
    @campaign = Campaign.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    flash[:alert] = "The campaign you were looking for could not be found."
  end

  def create
    user = User.find(params[:user_id])
    @campaign = Campaign.create!(name: params[:name], user: user)
    render json: @campaign, status: :created
  rescue ActiveRecord::RecordNotFound => e
    flash[:alert] = "The user you were looking for could not be found."
  end

  def permit_params
    params.permit(:name, :user_id)
  end
end
