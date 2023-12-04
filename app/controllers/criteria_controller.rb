class CriteriaController < ApplicationController
  before_action :permit_params, only: [:create]

  def index
    @criterias = Criteria.all
  end

  def show
    @criteria = Criteria.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    flash[:alert] = "The criteria you were looking for could not be found."
  end

  def create
    azzet = Azzet.find(params[:asset_id])
    parent = params[:parent_id] ? Criteria.find(params[:parent_id]) : nil
    @criteria = Criteria.create!(image: params[:image], operand: params[:operand], order: params[:order], azzet:, parent:)
    render json: @criteria, status: :created
  rescue ActiveRecord::RecordNotFound => e
    flash[:alert] = "The asset you were looking for could not be found."
  end

  def permit_params
    params.permit(:name, :campaign_id)
  end
end