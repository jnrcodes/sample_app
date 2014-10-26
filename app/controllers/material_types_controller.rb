class MaterialTypesController < ApplicationController
  before_action :set_material_type, only: [:show, :edit, :update, :destroy]

  # GET /material_types
  def index
    @material_types = MaterialType.all
  end

  # GET /material_types/1
  def show
  end

  # GET /material_types/new
  def new
    @material_type = MaterialType.new
  end

  # GET /material_types/1/edit
  def edit
  end

  # POST /material_types
  def create
    @material_type = MaterialType.new(material_type_params)

    if @material_type.save
      redirect_to @material_type, notice: 'Material type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /material_types/1
  def update
    if @material_type.update(material_type_params)
      redirect_to @material_type, notice: 'Material type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /material_types/1
  def destroy
    @material_type.destroy
    redirect_to material_types_url, notice: 'Material type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_type
      @material_type = MaterialType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def material_type_params
      params[:material_type]
    end
end
