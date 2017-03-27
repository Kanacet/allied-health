class SurgeryGroupsController < ApplicationController
  def index
    @surgery_groups = SurgeryGroup.all
    @surgeries = Surgery.all
  end

  def show
    @surgery_group = SurgeryGroup.find(params[:id])
    @surgeries = @surgery_group.surgeries
  end
end
