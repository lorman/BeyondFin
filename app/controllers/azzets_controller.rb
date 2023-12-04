# frozen_string_literal: true
class AzzetsController < ApplicationController
  def index
    @assets = Azzet.all
  end

  def create
    puts params
    campaign = Campaign.find(params[:campaign_id])
    @asset = Azzet.create!(name: params[:name], campaign: campaign)

    render json: @asset, status: :created
  rescue ActiveRecord::RecordNotFound => e
    flash[:alert] = "The campaign you were looking for could not be found."
    render json: { error: e.message }, status: :not_found
  end
end