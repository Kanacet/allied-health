class Api::V1::SurgeriesController < ApplicationController
  def index
    render json: SurgeryGroup.find(params[:surgery_group_id]).surgeries
  end
end
