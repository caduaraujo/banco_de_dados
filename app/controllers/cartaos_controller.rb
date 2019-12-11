class CartaosController < ApplicationController
  before_action :set_cartao, only: [:show, :edit, :update, :destroy]

  # GET /cartaos
  # GET /cartaos.json
  def index
    @cartaos = Cartao.all
  end

  # GET /cartaos/1
  # GET /cartaos/1.json
  def show
  end

  # GET /cartaos/new
  def new
    @cartao = Cartao.new
  end

  # GET /cartaos/1/edit
  def edit
  end

  # POST /cartaos
  # POST /cartaos.json
  def create
    @cartao = Cartao.new(cartao_params)

    respond_to do |format|
      if @cartao.save
        format.html { redirect_to @cartao, notice: 'Cartao was successfully created.' }
        format.json { render :show, status: :created, location: @cartao }
      else
        format.html { render :new }
        format.json { render json: @cartao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartaos/1
  # PATCH/PUT /cartaos/1.json
  def update
    respond_to do |format|
      if @cartao.update(cartao_params)
        format.html { redirect_to @cartao, notice: 'Cartao was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartao }
      else
        format.html { render :edit }
        format.json { render json: @cartao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartaos/1
  # DELETE /cartaos/1.json
  def destroy
    @cartao.destroy
    respond_to do |format|
      format.html { redirect_to cartaos_url, notice: 'Cartao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartao
      @cartao = Cartao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartao_params
      params.require(:cartao).permit(:numero, :nome_titular, :validade, :cliente_id)
    end
end
