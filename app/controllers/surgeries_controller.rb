class SurgeriesController < ApplicationController
  def show
    @surgery = Surgery.find(params[:surgery_group_id])
  end
end
