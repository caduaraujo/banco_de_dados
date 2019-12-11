class PedidosController < ApplicationController
  before_action :set_restaurante
  before_action :set_prato

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = Pedido.all
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
    @pedido = Pedido.find(params[:id])
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)

    @pedido.credit_card_id = create_credit_card if params[:forma_de_pagamento] == '0'

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to pedido_path(id: @pedido.id), notice: 'Pedido was successfully created.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_prato
      @prato = Prato.find(params[:prato_id].to_i)
    end

    def set_restaurante
      @restaurante = Restaurante.find(params[:restaurante_id].to_i)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:prato_id, :forma_pagamento, :troco, :entregador_id, :user_id)
    end

    def create_credit_card
      CreditCard.create(params[:'credit-card'])
    end
end
