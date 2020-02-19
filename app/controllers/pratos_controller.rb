class PratosController < ApplicationController
  before_action :set_prato, only: [:show, :edit, :update, :destroy]
  before_action :set_restaurante

  # GET /pratos
  # GET /pratos.json
  def index
    @pratos = @restaurante.pratos
  end

  # GET /pratos/1
  # GET /pratos/1.json
  def show
  end

  # GET /pratos/new
  def new
    @prato = Prato.new
  end

  # GET /pratos/1/edit
  def edit
  end

  # POST /pratos
  # POST /pratos.json
  def create
    @prato = Prato.new(prato_params)

    respond_to do |format|
      if @prato.save
        format.html { redirect_to restaurante_prato_path(restaurante_id: @restaurante.id, id: @prato.id), notice: 'prato criado.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /pratos/1
  # PATCH/PUT /pratos/1.json
  def update
    respond_to do |format|
      if @prato.update(prato_params)
        format.html { redirect_to @prato, notice: 'prato atualizado.' }
        format.json { render :show, status: :ok, location: @prato }
      else
        format.html { render :edit }
        format.json { render json: @prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pratos/1
  # DELETE /pratos/1.json
  def destroy
    @prato.destroy
    respond_to do |format|
      format.html { redirect_to restaurante_pratos_path(restaurante_id: @restaurante.id), notice: 'prato apagado com sucesso.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prato
      @prato = Prato.find(params[:id])
    end

    def set_restaurante
      @restaurante = Restaurante.find(params[:restaurante_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prato_params
      params.require(:prato).permit(:descricao, :preco, :disponibilidade, :tempo_estimado, :restaurante_id)
    end
end
