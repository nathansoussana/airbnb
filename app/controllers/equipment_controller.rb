class EquipmentController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @equipments = policy_scope(Equipment)
  end

  def show
    @equipment = Equipment.find(params[:id])
    authorize @equipment
  end

  def new
    @equipment = Equipment.new
    authorize @equipment
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.user_id = current_user.id
    authorize @equipment
    if @equipment.save # Will raise ActiveModel::ForbiddenAttributesError
      redirect_to equipment_path(@equipment), notice: "Equipment was successfully added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
    authorize @equipment
  end

  def update
    @equipment = Equipment.find(params[:id])
    authorize @equipment
    @equipment.update(equipment_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to equipment_path(@equipment)
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    authorize @equipment
    @equipment.destroy
    redirect_to equipment_index_path, status: :see_other
  end

  private

  def equipment_params
    params.require(:equipment).permit(:sport, :equipmentname, :description, :price)
  end

end
