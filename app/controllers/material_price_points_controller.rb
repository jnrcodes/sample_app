class MaterialPricePointsController < ApplicationController
  before_action :set_material_price_point, only: [:show, :edit, :update, :destroy]

  # GET /material_price_points
  def index
    @material_price_points = MaterialPricePoint.all
  end

  # GET /material_price_points/1
  def show
  end

  # GET /material_price_points/new
  def new
    @material_price_point = MaterialPricePoint.new
  end

  # GET /material_price_points/1/edit
  def edit
  end

  # POST /material_price_points
  def create
    @material_price_point = MaterialPricePoint.new(material_price_point_params)

    if @material_price_point.save
      redirect_to @material_price_point, notice: 'Material price point was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /material_price_points/1
  def update
    if @material_price_point.update(material_price_point_params)
      redirect_to @material_price_point, notice: 'Material price point was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /material_price_points/1
  def destroy
    @material_price_point.destroy
    redirect_to material_price_points_url, notice: 'Material price point was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_price_point
      @material_price_point = MaterialPricePoint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def material_price_point_params
      params[:material_price_point]
    end
end
