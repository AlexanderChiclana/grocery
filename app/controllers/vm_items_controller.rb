class VmItemsController < ApplicationController
  before_action :set_vm_item, only: [:show, :update, :destroy]

  # GET /vm_items
  def index
    @vm_items = VmItem.all

    render json: @vm_items
  end

  # GET /vm_items/1
  def show
    render json: @vm_item
  end

  # POST /vm_items
  def create
    @vm_item = VmItem.new(vm_item_params)

    if @vm_item.save
      render json: @vm_item, status: :created, location: @vm_item
    else
      render json: @vm_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vm_items/1
  def update
    if @vm_item.update(vm_item_params)
      render json: @vm_item
    else
      render json: @vm_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vm_items/1
  def destroy
    @vm_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vm_item
      @vm_item = VmItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vm_item_params
      params.require(:vm_item).permit(:name)
    end
end
