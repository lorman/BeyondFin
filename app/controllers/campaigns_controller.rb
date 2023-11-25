class CampaignsController < ApplicationController
  def show
    @campaign = Campaign.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    flash[:alert] = "The campaign you were looking for could not be found."
  end
end
