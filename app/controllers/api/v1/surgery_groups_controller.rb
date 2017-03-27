class Api::V1::SurgeryGroupsController < ApplicationController
  def index
    render json: SurgeryGroup.all
  end
end
