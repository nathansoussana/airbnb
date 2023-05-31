class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
  end

  def new_equipment
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to equipment_path(@equipment)
  end
end
