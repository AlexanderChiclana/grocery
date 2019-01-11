class TjItemsController < ApplicationController
  before_action :set_tj_item, only: [:show, :update, :destroy]

  # GET /tj_items
  def index
    @tj_items = TjItem.all

    render json: @tj_items
  end

  # GET /tj_items/1
  def show
    render json: @tj_item
  end

  # POST /tj_items
  def create
    @tj_item = TjItem.new(tj_item_params)

    if @tj_item.save
      render json: @tj_item, status: :created, location: @tj_item
    else
      render json: @tj_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tj_items/1
  def update
    if @tj_item.update(tj_item_params)
      render json: @tj_item
    else
      render json: @tj_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tj_items/1
  def destroy
    @tj_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tj_item
      @tj_item = TjItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tj_item_params
      params.require(:tj_item).permit(:name)
    end
end
