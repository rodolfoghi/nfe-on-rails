class GrupoDeItemsController < ApplicationController
  before_action :set_grupo_de_item, only: %i[ show edit update destroy ]

  # GET /grupo_de_items or /grupo_de_items.json
  def index
    @grupo_de_items = GrupoDeItem.all
  end

  # GET /grupo_de_items/1 or /grupo_de_items/1.json
  def show
  end

  # GET /grupo_de_items/new
  def new
    @grupo_de_item = GrupoDeItem.new
  end

  # GET /grupo_de_items/1/edit
  def edit
  end

  # POST /grupo_de_items or /grupo_de_items.json
  def create
    @grupo_de_item = GrupoDeItem.new(grupo_de_item_params)

    respond_to do |format|
      if @grupo_de_item.save
        format.html { redirect_to grupo_de_item_url(@grupo_de_item), notice: "Grupo de item was successfully created." }
        format.json { render :show, status: :created, location: @grupo_de_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grupo_de_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_de_items/1 or /grupo_de_items/1.json
  def update
    respond_to do |format|
      if @grupo_de_item.update(grupo_de_item_params)
        format.html { redirect_to grupo_de_item_url(@grupo_de_item), notice: "Grupo de item was successfully updated." }
        format.json { render :show, status: :ok, location: @grupo_de_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grupo_de_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_de_items/1 or /grupo_de_items/1.json
  def destroy
    @grupo_de_item.destroy!

    respond_to do |format|
      format.html { redirect_to grupo_de_items_url, notice: "Grupo de item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_de_item
      @grupo_de_item = GrupoDeItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grupo_de_item_params
      params.require(:grupo_de_item).permit(:codigo, :descricao)
    end
end
