class HelperTypesController < ApplicationController
  before_action :set_helper_type, only: [:show, :update, :destroy]

  # GET /get_helper_types
  def index
    @helper_types = HelperType.all
    json_response(@helper_types)
  end

  # POST /get_helper_type
  def show
    json_response(@helper_type)
  end

  # POST /create_helper_type
  def create
    @helper_type = HelperType.create!(helper_type_params)
    json_message("User successfuly created", 200)
  end

  # PUT /update_helper_type
  def update
    @helper_type.update(helper_type_params)
    head :no_content
  end

  # DELETE /delete_helper_type
  def destroy
    @helper_type.destroy
    head :no_content
  end

  private

  def helper_type_params
    params.permit(:name)
  end

  def set_helper_type
    @helper_type = HelperType.find(params[:id])
  end
end
